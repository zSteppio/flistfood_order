import 'dart:convert';
import 'dart:developer';
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
  }) {
    emit(FlistfoodVariationState.loading(product: product));
    final bool isDouble = ingredient.variationType == 2;
    final bool isTriple = ingredient.variationType == 3;

    log(
      'Prezzo ${product.price}, Nuovo Prezzo ${product.newPrice}',
      name: 'Product prima della modifica dell\'ingrediente',
    );

    if (ingredient.canRemove && product.ingredients.any((e) => e.foodId == ingredient.foodId)) {
      FFIngredient selectedIngridient =
          product.ingredients.firstWhere((e) => e.foodId == ingredient.foodId);

      selectedIngridient.selected = selected;
      double priceVariation = 0.0;

      log(jsonEncode(ingredient), name: 'Ingrediente');

      if (isDouble) {
        priceVariation = ingredient.price * 2;
      } else if (isTriple) {
        priceVariation = ingredient.price * 3;
      } else {
        priceVariation = ingredient.price;
      }

      log(priceVariation.toString(), name: 'Prezzo della variazione');

      if (ingredient.isMain == false) {
        if (selectedIngridient.selected == true) {
          product.newPrice += priceVariation;
        } else if (selectedIngridient.selected == false) {
          product.newPrice -= priceVariation;
        }
      } else if (isDouble || isTriple) {
        if (isDouble) {
          priceVariation = ingredient.price;
        } else {
          priceVariation = ingredient.price * 2;
        }
        if (ingredient.selected == true) {
          product.newPrice += priceVariation;
        } else if (ingredient.selected == false) {
          product.newPrice -= priceVariation;
        }
      }

      log(product.newPrice.toString(), name: 'Nuovo Prezzo del prodotto');
    }

    log(
      'Prezzo ${product.price}, Nuovo Prezzo ${product.newPrice}',
      name: 'Product dopo della modifica dell\'ingrediente',
    );

    emit(FlistfoodVariationState.success(product: product));
    return;
  }

  void setVariationType({
    required FFIngredient ingredient,
    required FFProduct product,
    bool isDouble = false,
    bool isTriple = false,
    bool isUnselectedVariation = false,
  }) {
    emit(FlistfoodVariationState.loading(product: product));

    log(
      'Prezzo ${product.price}, Nuovo Prezzo ${product.newPrice}',
      name: 'Product prima della modifica della variazione',
    );

    log(isUnselectedVariation.toString(), name: 'isUnselectedVariation');

    if (product.ingredients.any((e) => e.foodId == ingredient.foodId)) {
      FFIngredient selectedIngridient =
          product.ingredients.firstWhere((e) => e.foodId == ingredient.foodId);

      ingredient.localVariationPrice ??= ingredient.price;

      if (isDouble) {
        ingredient.localVariationPrice = ingredient.price;
      } else if (isTriple) {
        ingredient.localVariationPrice = ingredient.price * 2;
      }

      if (selectedIngridient.variationType == 2 && !isUnselectedVariation && isTriple) {
        product.newPrice -= ingredient.price;
      } else if (selectedIngridient.variationType == 3 && !isUnselectedVariation && isDouble) {
        product.newPrice -= ingredient.price * 2;
      }

      if (isUnselectedVariation) {
        product.newPrice -= ingredient.localVariationPrice!;
      } else {
        product.newPrice += ingredient.localVariationPrice!;
      }

      if (isDouble && !isUnselectedVariation) {
        selectedIngridient.variationType = 2;
      } else if (isTriple && !isUnselectedVariation) {
        selectedIngridient.variationType = 3;
      } else {
        selectedIngridient.variationType = null;
      }
    }

    log(
      'Prezzo ${product.price}, Nuovo Prezzo ${product.newPrice}',
      name: 'Product dopo della modifica della variazione',
    );

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

      int quantity = foodListsDefinitionSelected.maxQty;
      List<FFFoodDetail> selectedIngredients = [];

      //* Setto il tempo in cui ho assegnato la variazione
      if (selected) {
        foodList.foods!.firstWhere((e) => e.id == foodId).timeSelected = DateTime.now();
      } else {
        foodList.foods!.firstWhere((e) => e.id == foodId).timeSelected = null;
      }

      switch (foodListsDefinitionSelected.mode) {
        //* Massimi ingredienti con costo ----------------------------------------
        case Mode.maxIngredientWithCost:
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
        case Mode.maxIngredientFree:
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
        case Mode.maxFreeAndOtherWithCost:
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
        case Mode.freeChoise:
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
    required String foodListJson,
  }) {
    List<FFIngredient> selectedIngridients = [];
    List<FFFoodlist> foodListConfigurated = [];
    FFProduct product = FFProduct.fromJson(jsonDecode(productJson));
    Iterable foodListMap = jsonDecode(foodListJson);
    List<FFFoodlist> foodLists =
        List<FFFoodlist>.from(foodListMap.map((e) => FFFoodlist.fromJson(e)));

    product.newPrice = product.price;
    product.price = product.price;

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
      if (ingredient.isMain) {
        ingredient.selected = true;
      } else {
        ingredient.selected = false;
      }
      selectedIngridients.add(ingredient);
    }

    //* Setto la foodList
    for (FFFoodListsDefinition foodListDefinition in product.foodListsDefinition) {
      //* Collegamento tra il prodotto e la food list
      if (foodLists.any((e) => e.id == foodListDefinition.foodListId)) {
        FFFoodlist findedFoodList =
            foodLists.firstWhere((e) => e.id == foodListDefinition.foodListId);
        foodListConfigurated.add(findedFoodList);
      }
    }

    product.foodlists = foodListConfigurated;

    for (FFFoodlist foodList in product.foodlists) {
      if (product.foodListsDefinition.any((e) => e.foodListId == foodList.id)) {
        var mode = product.foodListsDefinition.firstWhere((e) => e.foodListId == foodList.id).mode;

        if (mode == Mode.maxFreeAndOtherWithCost || mode == Mode.maxIngredientFree) {
          foodList.foods?.forEach((e) => e.hiddenPrice = true);
        }
        if (mode == Mode.maxIngredientWithCost) {
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
