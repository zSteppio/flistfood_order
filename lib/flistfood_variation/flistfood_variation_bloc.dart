import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flistfood_order/flistfood_order.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'flistfood_variation_event.dart';

class FlistfoodVariationBloc extends Bloc<FlistfoodVariationEvent, FFProduct?> {
  FlistfoodVariationBloc() : super(null) {
    List<FFFoodDetail> foodListHistory = [];

    on<SetAlternative>((event, emit) {
      FFFood? selectedFood = event.alternative.foods?.firstWhere((e) => e.isSelected == true);
      FFFood? food = event.alternative.foods?.firstWhere((e) => e.foodId == event.foodId);
      FFProduct product = event.product;

      selectedFood?.isSelected = false;
      food?.isSelected = true;

      product.newPrice -= selectedFood?.price ?? 0.0;

      product.newPrice += food?.price ?? 0.0;

      emit(product);
    });

    on<SetCoockingType>((event, emit) {
      FFProduct product = event.product;

      product.cookingTypes?.firstWhere((e) => e.isSelected == true).isSelected = false;
      product.cookingTypes?.firstWhere((e) => e.id == event.cookingTypeId).isSelected = true;

      emit(product);
      return;
    });

    on<SetIngredient>((event, emit) {
      FFProduct product = event.product;
      FFIngredient ingredient = event.ingredient;

      if (ingredient.canRemove) {
        FFIngredient selectedIngridient =
            product.ingredients!.firstWhere((e) => e.foodId == ingredient.foodId);

        selectedIngridient.selected = event.selected;

        if (ingredient.isMainIngredient == false) {
          if (selectedIngridient.selected == true) {
            product.newPrice += selectedIngridient.variationPrice;
          } else if (selectedIngridient.selected == false) {
            product.newPrice -= selectedIngridient.variationPrice;
          }
        }

        emit(product);
        return;
      }
    });

    on<SetFoodList>((event, emit) {
      FFProduct product = event.product;
      FFFoodlist foodList = event.foodList;
      int foodId = event.foodId;
      bool selected = event.selected;
      FFFoodListsDefinition foodListsDefinitionSelected =
          product.foodListsDefinition!.firstWhere((e) => e.foodListId == foodList.id);
      int mode = foodListsDefinitionSelected.mode;
      int quantity = foodListsDefinitionSelected.maxQty;
      List<FFFoodDetail> selectedIngredients = [];

      switch (mode) {
        //* Massimi ingredienti con costo ----------------------------------------
        case FoodListModeEnum.maxIngredientWithCost:
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
          emit(product);
          break;

        //* Massimi ingredienti gratuiti -----------------------------------------
        case FoodListModeEnum.maxIngredientFree:
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
          emit(product);
          break;

        //* Massimi ingredienti gratuiti e i successivi con costo ----------------
        case FoodListModeEnum.maxFreeAndOtherWithCost:
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
          emit(product);
          break;

        //* Illimitati e gratuiti ------------------------------------------------
        case FoodListModeEnum.freeChoise:
          FFFoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
          selectedfood.selected = selected;

          if (selectedfood.selected == true) {
            product.newPrice += selectedfood.variationPrice ?? 0;
          } else if (selectedfood.selected == false) {
            product.newPrice -= selectedfood.variationPrice ?? 0;
          }
          emit(product);
          break;
        default:
          emit(product);
          break;
      }
    });

    on<InitialConfiguration>((event, emit) {
      FFProduct product = FFProduct.fromJson(jsonDecode(event.productJson));
      FFFormat? format;
      List<FFFoodlist> foodLists = [];
      Iterable foodListMap = jsonDecode(event.foodListJson);
      List<FFFoodlist> rawFoodList =
          List<FFFoodlist>.from(foodListMap.map((e) => FFFoodlist.fromJson(e)));

      if (event.formatJson != null) {
        format = FFFormat.fromJson(jsonDecode(event.formatJson!));
      }

      List<FFIngredient> selectedIngridients = [];

      //* Settaggio del prezzo nel caso ci siano formati
      if (format != null) {
        product.newPrice = format.price;
      } else {
        product.newPrice = product.price;
      }

      //* Recupero delle alternative di default
      for (FFAlternative alternative in product.alternatives ?? []) {
        for (FFFood food in alternative.foods ?? []) {
          food.isSelected = false;
          if (food.foodId == alternative.defaultFoodId) {
            food.isSelected = true;
          }
        }
      }

      //* Recupero del tipo di cotture di default
      for (FFCookingType cookingType in product.cookingTypes ?? []) {
        cookingType.isSelected = false;
      }
      if (product.cookingTypes != null &&
          product.cookingTypes!.any((e) => e.id == product.preferredCookingTypeId)) {
        product.cookingTypes?.firstWhere((e) => e.id == product.preferredCookingTypeId).isSelected =
            true;
      }

      //* Recupero degli ingredienti di default
      for (FFIngredient ingredient in product.ingredients ?? []) {
        if (ingredient.isMainIngredient) {
          ingredient.selected = true;
        } else {
          ingredient.selected = false;
        }
        selectedIngridients.add(ingredient);
      }

      //* Setto la foodList
      for (FFFoodListsDefinition foodListDefinition in product.foodListsDefinition ?? []) {
        //* Collegamento tra il prodotto e la food list
        if (rawFoodList.any((e) => e.id == foodListDefinition.foodListId)) {
          var findedFoodList = rawFoodList.firstWhere((e) => e.id == foodListDefinition.foodListId);
          foodLists.add(findedFoodList);
        }
      }

      product.foodlists = foodLists;

      for (FFFoodlist foodList in product.foodlists ?? []) {
        if (product.foodListsDefinition != null &&
            product.foodListsDefinition!.any((e) => e.foodListId == foodList.id)) {
          var mode =
              product.foodListsDefinition!.firstWhere((e) => e.foodListId == foodList.id).mode;

          if (mode == FoodListModeEnum.maxFreeAndOtherWithCost ||
              mode == FoodListModeEnum.maxIngredientFree) {
            foodList.foods?.forEach((e) => e.hiddenPrice = true);
          }
          if (mode == FoodListModeEnum.maxIngredientWithCost) {
            foodList.foods?.forEach((e) => e.hiddenPrice = false);
          }
          for (FFFoodDetail food in foodList.foods ?? []) {
            food.selected = false;
          }
        }
      }
      emit(product);
      return;
    });
  }

  void initialConfiguration({
    required String productJson,
    required String? formatJson,
    required String foodListJson,
  }) =>
      add(InitialConfiguration(
        productJson: productJson,
        formatJson: formatJson,
        foodListJson: foodListJson,
      ));

  void setAlternative({
    required int foodId,
    required FFAlternative alternative,
    required FFProduct product,
  }) =>
      add(SetAlternative(
        foodId: foodId,
        alternative: alternative,
        product: product,
      ));

  void setCookingType({
    required int cookingTypeId,
    required FFProduct product,
  }) =>
      add(SetCoockingType(
        cookingTypeId: cookingTypeId,
        product: product,
      ));

  void setIngredient({
    required FFIngredient ingredient,
    required bool selected,
    required FFProduct product,
  }) =>
      add(SetIngredient(
        ingredient: ingredient,
        selected: selected,
        product: product,
      ));

  void setFoodList({
    required int foodId,
    required FFFoodlist foodList,
    required bool selected,
    required FFProduct product,
  }) =>
      add(SetFoodList(
        foodId: foodId,
        foodList: foodList,
        selected: selected,
        product: product,
      ));
}
