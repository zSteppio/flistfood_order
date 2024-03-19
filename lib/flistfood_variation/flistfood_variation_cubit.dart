import 'dart:convert';
import 'dart:developer';
import 'package:flistfood_order/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flistfood_variation_state.dart';
part 'flistfood_variation_cubit.freezed.dart';

class FlistfoodVariationCubit extends Cubit<FlistfoodVariationState> {
  FlistfoodVariationCubit() : super(const FlistfoodVariationState.initial());

  void setAlternative({
    required int foodId,
    required FFAlternative alternative,
    required FFProduct product,
  }) {
    emit(FlistfoodVariationState.loading(product: product));
    FFFood? selectedFood = alternative.foods.isNotEmpty && alternative.foods.any((e) => e.isSelected)
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
      FFIngredient selectedIngridient = product.ingredients.firstWhere((e) => e.foodId == ingredient.foodId);

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
      FFIngredient selectedIngridient = product.ingredients.firstWhere((e) => e.foodId == ingredient.foodId);

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

  void setFoodListDefinition({
    required int foodListDefinitionId,
    required int selectedFoodId,
    required bool selected,
    required FFProduct product,
  }) {
    emit(FlistfoodVariationState.loading(product: product));

    FFFoodListsDefinition currentFoodListsDefinition =
        product.foodListsDefinition.firstWhere((e) => e.id == foodListDefinitionId);

    FFFoodListDefinitionDetail currentFood = currentFoodListsDefinition.foods.firstWhere((e) => e.id == selectedFoodId);

    final int maxQuantity = currentFoodListsDefinition.maxQty;
    final int selectedFoodsLenght = currentFoodListsDefinition.foods.where((e) => e.isSelected).length;

    //* Setto il tempo in cui ho assegnato la variazione
    if (currentFoodListsDefinition.mode != FFMode.maxFreeAndOtherWithCost) {
      if (selected) {
        currentFood.timeSelected = DateTime.now();
      } else {
        currentFood.timeSelected = null;
      }
    }

    switch (currentFoodListsDefinition.mode) {
      //* Massimo numero di ingredienti selezionabili (con costo)
      case FFMode.maxIngredientWithCost:
        if ((maxQuantity > selectedFoodsLenght) && selected) {
          currentFood.isSelected = selected;
          product.newPrice += currentFood.price;
        } else if (!selected) {
          currentFood.isSelected = selected;
          product.newPrice -= currentFood.price;
        }

        emit(FlistfoodVariationState.success(product: product));
        break;

      //* Massimo numero di ingredienti selezionabili (gratuiti)
      case FFMode.maxIngredientFree:
        if ((maxQuantity > selectedFoodsLenght) && selected) {
          currentFood.isSelected = true;
        } else if (!selected) {
          currentFood.isSelected = false;
        }
        emit(FlistfoodVariationState.success(product: product));
        break;

      //* Massimo tot ingredienti aggiuntivi gratuiti e altri con costo
      case FFMode.maxFreeAndOtherWithCost:
        if ((maxQuantity <= selectedFoodsLenght) && selected) {
          product.newPrice += currentFood.price;
        } else if ((maxQuantity <= selectedFoodsLenght - 1) && !selected) {
          List<FFFoodListDefinitionDetail> selectedFoods =
              currentFoodListsDefinition.foods.where((e) => e.isSelected).toList();
          selectedFoods.sort((a, b) => a.timeSelected!.compareTo(b.timeSelected!));

          if (selectedFoods.indexWhere((e) => e.id == selectedFoodId) < maxQuantity) {
            product.newPrice -= selectedFoods[maxQuantity].price;
          } else {
            product.newPrice -= currentFood.price;
          }
        }

        if (selected) {
          currentFood.timeSelected = DateTime.now();
        } else {
          currentFood.timeSelected = null;
        }

        currentFood.isSelected = selected;

        emit(FlistfoodVariationState.success(product: product));
        break;

      //* Scelta libera
      case FFMode.freeChoise:
        currentFood.isSelected = selected;

        if (currentFood.isSelected) {
          product.newPrice += currentFood.price;
        } else {
          product.newPrice -= currentFood.price;
        }

        emit(FlistfoodVariationState.success(product: product));
        break;
      default:
        emit(FlistfoodVariationState.success(product: product));
        break;
    }
  }

  void initialConfiguration({required String productJson}) {
    List<FFIngredient> selectedIngridients = [];
    FFProduct product = FFProduct.fromJson(jsonDecode(productJson));
    product.newPrice = product.price;

    //* Recupero delle alternative di default
    for (final FFAlternative alternative in product.alternatives) {
      for (final FFFood food in alternative.foods) {
        food.isSelected = false;
        if (food.foodId == alternative.defaultFoodId) {
          food.isSelected = true;
        }
      }
    }

    //* Recupero del tipo di cotture di default
    for (final FFCookingType cookingType in product.cookingTypes) {
      cookingType.isSelected = false;
    }
    if (product.cookingTypes.any((e) => e.id == product.preferredCookingTypeId)) {
      product.cookingTypes.firstWhere((e) => e.id == product.preferredCookingTypeId).isSelected = true;
    }

    //* Recupero degli ingredienti di default
    for (final FFIngredient ingredient in product.ingredients) {
      if (ingredient.isMain) {
        ingredient.selected = true;
      } else {
        ingredient.selected = false;
      }
      selectedIngridients.add(ingredient);
    }

    //* Setto la foodList
    // for (FFFoodListsDefinition foodListDefinition in product.foodListsDefinition) {
    //   //* Collegamento tra il prodotto e la food list
    //   if (foodLists.any((e) => e.id == foodListDefinition.foodListId)) {
    //     FFFoodlist findedFoodList =
    //         foodLists.firstWhere((e) => e.id == foodListDefinition.foodListId);
    //     foodListConfigurated.add(findedFoodList);
    //   }
    // }

    //product.foodlists = foodListConfigurated;

    // for (FFFoodlist foodList in product.foodlists) {
    //   if (product.foodListsDefinition.any((e) => e.foodListId == foodList.id)) {
    //     var mode = product.foodListsDefinition.firstWhere((e) => e.foodListId == foodList.id).mode;

    //     if (mode == Mode.maxFreeAndOtherWithCost || mode == Mode.maxIngredientFree) {
    //       foodList.foods?.forEach((e) => e.hiddenPrice = true);
    //     }
    //     if (mode == Mode.maxIngredientWithCost) {
    //       foodList.foods?.forEach((e) => e.hiddenPrice = false);
    //     }
    //     for (FFFoodDetail food in foodList.foods ?? []) {
    //       food.selected = false;
    //     }
    //   }
    // }
    emit(FlistfoodVariationState.success(product: product));
    return;
  }
}
