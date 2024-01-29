import 'dart:convert';
import 'package:flistfood_order/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flistfood_variation_state.dart';
part 'flistfood_variation_cubit.freezed.dart';

class FlistfoodVariationCubit extends Cubit<FlistfoodVariationState> {
  List<FFFoodDetail> foodListHistory = [];
  FlistfoodVariationCubit() : super(const FlistfoodVariationState.initial());

  void setAlternative({
    required int foodId,
    required FFAlternative alternative,
    required FFProduct product,
  }) {
    emit(FlistfoodVariationState.loading(product: product));
    FFFood? selectedFood =
        alternative.foods.isNotEmpty && alternative.foods.any((e) => e.isSelected)
            ? alternative.foods.firstWhere((e) => e.isSelected)
            : null;
    FFFood? food = alternative.foods.isNotEmpty && alternative.foods.any((e) => e.foodId == foodId)
        ? alternative.foods.firstWhere((e) => e.foodId == foodId)
        : null;

    selectedFood?.isSelected = false;
    food?.isSelected = true;

    product.newPrice -= selectedFood?.price ?? 0.0;
    product.newPrice += food?.price ?? 0.0;

    emit(FlistfoodVariationState.success(product: product));
    return;
  }

  void setCookingType({
    required int cookingTypeId,
    required FFProduct product,
  }) {
    emit(FlistfoodVariationState.loading(product: product));

    if (product.cookingTypes.isNotEmpty && product.cookingTypes.any((e) => e.isSelected)) {
      product.cookingTypes.firstWhere((e) => e.isSelected).isSelected = false;
    }

    if (product.cookingTypes.isNotEmpty && product.cookingTypes.any((e) => e.id == cookingTypeId)) {
      product.cookingTypes.firstWhere((e) => e.id == cookingTypeId).isSelected = true;
    }

    emit(FlistfoodVariationState.success(product: product));
    return;
  }

  void setIngredient({
    required FFIngredient ingredient,
    required bool selected,
    required FFProduct product,
    bool isDouble = false,
    bool isTriple = false,
  }) {
    emit(FlistfoodVariationState.loading(product: product));

    if (ingredient.canRemove && product.ingredients.any((e) => e.foodId == ingredient.foodId)) {
      FFIngredient selectedIngridient =
          product.ingredients.firstWhere((e) => e.foodId == ingredient.foodId);

      selectedIngridient.selected = selected;

      if (ingredient.isMainIngredient == false) {
        if (selectedIngridient.selected == true) {
          product.newPrice += selectedIngridient.variationPrice;
        } else if (selectedIngridient.selected == false) {
          product.newPrice -= selectedIngridient.variationPrice;
        }
      }

      if (isDouble) {
        selectedIngridient.variationType = 2;
      } else if (isTriple) {
        selectedIngridient.variationType = 3;
      } else {
        selectedIngridient.variationType = null;
      }
    }

    emit(FlistfoodVariationState.success(product: product));
    return;
  }

  void setFoodList({
    required int foodId,
    required FFFoodlist foodList,
    required bool selected,
    required FFProduct product,
  }) {
    emit(FlistfoodVariationState.loading(product: product));

    if (product.foodListsDefinition.any((e) => e.foodListId == foodList.id)) {
      FFFoodListsDefinition foodListsDefinitionSelected =
          product.foodListsDefinition.firstWhere((e) => e.foodListId == foodList.id);
      int mode = foodListsDefinitionSelected.mode;
      int quantity = foodListsDefinitionSelected.maxQty;
      List<FFFoodDetail> selectedIngredients = [];

      switch (mode) {
        //* Massimi ingredienti con costo ----------------------------------------
        case _FoodListModeEnum.maxIngredientWithCost:
          for (FFFoodDetail food in foodList.foods!.where((e) => e.selected)) {
            selectedIngredients.add(food);
          }

          if (quantity > selectedIngredients.length ||
              foodList.foods?.firstWhere((e) => e.id == foodId).selected == true) {
            FFFoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
            selectedfood.selected = selected;

            if (selectedfood.selected) {
              product.newPrice += selectedfood.variationPrice ?? 0;
            } else if (selectedfood.selected == false) {
              product.newPrice -= selectedfood.variationPrice ?? 0;
            }
          }
          emit(FlistfoodVariationState.success(product: product));
          break;

        //* Massimi ingredienti gratuiti -----------------------------------------
        case _FoodListModeEnum.maxIngredientFree:
          for (FFFoodDetail food in foodList.foods!.where((e) => e.selected)) {
            selectedIngredients.add(food);
          }

          if (quantity > selectedIngredients.length ||
              foodList.foods?.firstWhere((e) => e.id == foodId).selected == true) {
            FFFoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
            selectedfood.selected = selected;

            foodList.foods?.forEach((e) => e.isFree = false);
            foodList.foods?.where((e) => e.selected).forEach((e) => e.isFree = true);
          }
          emit(FlistfoodVariationState.success(product: product));
          break;

        //* Massimi ingredienti gratuiti e i successivi con costo ----------------
        case _FoodListModeEnum.maxFreeAndOtherWithCost:
          FFFoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
          selectedfood.selected = selected;

          for (FFFoodDetail food in foodList.foods!.where((e) => e.selected)) {
            selectedIngredients.add(food);
          }

          //* Selezionati maggiori della quantità
          if (selectedIngredients.length > quantity) {
            foodList.foods
                ?.where((e) => e.id != selectedfood.id && e.selected != true)
                .forEach((e) => e.hiddenPrice = false);

            if (selectedfood.selected) {
              product.newPrice += selectedfood.variationPrice ?? 0;
            } else if (selectedfood.selected == false) {
              product.newPrice -= selectedfood.variationPrice ?? 0;
            }
            if (selectedfood.selected) {
              foodListHistory.add(selectedfood);
            } else {
              foodListHistory.removeWhere((e) => e.id == selectedfood.id);
            }
          }

          //* Selezionati minori della quantità
          else if (selectedIngredients.length < quantity) {
            foodList.foods?.forEach((e) => e.hiddenPrice = true);

            foodList.foods?.forEach((e) => e.isFree = false);
            foodList.foods?.where((e) => e.selected).forEach((e) => e.isFree = true);
          }

          //* Selezionati uguali della quantità
          else if (selectedIngredients.length == quantity) {
            for (FFFoodDetail foodDetail in foodList.foods ?? []) {
              foodDetail.isFree = false;
              if (foodDetail.selected) {
                foodDetail.isFree;
                foodDetail.hiddenPrice = true;
              } else {
                foodDetail.hiddenPrice = false;
              }
            }
            if (selectedfood.selected == false) {
              product.newPrice -= foodListHistory.first.variationPrice ?? 0;
            }
            foodListHistory = [];
          }
          if (foodList.foods?.any((e) => e.selected) == false) {
            foodList.foods?.forEach((e) => e.hiddenPrice = true);
          }
          emit(FlistfoodVariationState.success(product: product));
          break;

        //* Illimitati e gratuiti ------------------------------------------------
        case _FoodListModeEnum.freeChoise:
          FFFoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
          selectedfood.selected = selected;

          if (selectedfood.selected == true) {
            product.newPrice += selectedfood.variationPrice ?? 0;
          } else if (selectedfood.selected == false) {
            product.newPrice -= selectedfood.variationPrice ?? 0;
          }
          emit(FlistfoodVariationState.success(product: product));
          break;
        default:
          emit(FlistfoodVariationState.success(product: product));
          break;
      }
    } else {
      emit(FlistfoodVariationState.success(product: product));
      return;
    }
  }

  void initialConfiguration({
    required String productJson,
    required String? formatJson,
    required String foodListJson,
  }) {
    FFProduct product = FFProduct.fromJson(jsonDecode(productJson));
    FFFormat? format;
    List<FFFoodlist> foodLists = [];
    Iterable foodListMap = jsonDecode(foodListJson);
    List<FFFoodlist> rawFoodList =
        List<FFFoodlist>.from(foodListMap.map((e) => FFFoodlist.fromJson(e)));

    if (formatJson != null) {
      format = FFFormat.fromJson(jsonDecode(formatJson));
    }

    List<FFIngredient> selectedIngridients = [];

    //* Settaggio del prezzo nel caso ci siano formati
    if (format != null) {
      product.newPrice = format.price;
    } else {
      product.newPrice = product.price;
    }

    //* Recupero delle alternative di default
    for (FFAlternative alternative in product.alternatives) {
      for (FFFood food in alternative.foods) {
        food.isSelected = false;
        if (food.foodId == alternative.defaultFoodId) {
          food.isSelected = true;
        }
      }
    }

    //* Recupero del tipo di cotture di default
    for (FFCookingType cookingType in product.cookingTypes) {
      cookingType.isSelected = false;
    }
    if (product.cookingTypes.any((e) => e.id == product.preferredCookingTypeId)) {
      product.cookingTypes.firstWhere((e) => e.id == product.preferredCookingTypeId).isSelected =
          true;
    }

    //* Recupero degli ingredienti di default
    for (FFIngredient ingredient in product.ingredients) {
      if (ingredient.isMainIngredient) {
        ingredient.selected = true;
      } else {
        ingredient.selected = false;
      }
      selectedIngridients.add(ingredient);
    }

    //* Setto la foodList
    for (FFFoodListsDefinition foodListDefinition in product.foodListsDefinition) {
      //* Collegamento tra il prodotto e la food list
      if (rawFoodList.any((e) => e.id == foodListDefinition.foodListId)) {
        var findedFoodList = rawFoodList.firstWhere((e) => e.id == foodListDefinition.foodListId);
        foodLists.add(findedFoodList);
      }
    }

    product.foodlists = foodLists;

    for (FFFoodlist foodList in product.foodlists) {
      if (product.foodListsDefinition.any((e) => e.foodListId == foodList.id)) {
        var mode = product.foodListsDefinition.firstWhere((e) => e.foodListId == foodList.id).mode;

        if (mode == _FoodListModeEnum.maxFreeAndOtherWithCost ||
            mode == _FoodListModeEnum.maxIngredientFree) {
          foodList.foods?.forEach((e) => e.hiddenPrice = true);
        }
        if (mode == _FoodListModeEnum.maxIngredientWithCost) {
          foodList.foods?.forEach((e) => e.hiddenPrice = false);
        }
        for (FFFoodDetail food in foodList.foods ?? []) {
          food.selected = false;
        }
      }
    }
    emit(FlistfoodVariationState.success(product: product));
    return;
  }
}

class _FoodListModeEnum {
  static const freeChoise = 0;
  static const maxIngredientWithCost = 1;
  static const maxIngredientFree = 2;
  static const maxFreeAndOtherWithCost = 3;
}
