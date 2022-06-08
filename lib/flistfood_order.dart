library flistfood_order;

import 'dart:convert';
import 'dart:developer';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product_model.dart';
part 'order_model.dart';
part 'flistfood_order.g.dart';

class FoodListModeEnum {
  static const maxIngredientWithCost = 1;
  static const maxIngredientFree = 2;
  static const maxFreeAndOtherWithCost = 3;
}

// class FlistFoodOrderTest extends ChangeNotifier {
//   String _message = 'Ciao!';

//   String get message => _message;

//   void setMessage(String message) {
//     _message = message;

//     notifyListeners();
//   }
// }

class FlistFoodOrder extends ChangeNotifier {
  late FFProduct _product;

  FFProduct get product => _product;

  void setProduct({required String productJson}) {
    _product = FFProduct.fromJson(jsonDecode(productJson));
  }

  void setProductFoodList({required String foodListJson}) {
    List<FFFoodlist> foodLists = [];
    FFFoodlist findedFood;

    Iterable foodListJsonI = jsonDecode(foodListJson);

    List<FFFoodlist> initialFoodList =
        List<FFFoodlist>.from(foodListJsonI.map((e) => FFFoodlist.fromJson(e)));

    for (FFFoodListsDefinition foodListDefinition in _product.foodListsDefinition ?? []) {
      if (initialFoodList.any((e) => e.id == foodListDefinition.foodListId)) {
        findedFood = initialFoodList.firstWhere((e) => e.id == foodListDefinition.foodListId);
        foodLists.add(findedFood);
      }
    }
    _product.foodlists = foodLists;
  }

  void getProductVariation({String? formatJson}) {
    FFFormat? format;

    if (formatJson != null) {
      format = jsonDecode(formatJson);
    }

    List<FFIngredient> selectedIngridients = [];

    //* Settaggio del prezzo nel caso ci siano formati
    if (format != null) {
      _product.newPrice = format.price;
    } else {
      _product.newPrice = _product.price;
    }

    //* Recupero delle alternative di default
    for (FFAlternative alternative in _product.alternatives ?? []) {
      for (FFFood food in alternative.foods ?? []) {
        food.isSelected = false;
        if (food.foodId == alternative.defaultFoodId) {
          food.isSelected = true;
        }
      }
    }

    //* Recupero del tipo di cotture di default
    for (FFCookingType cookingType in _product.cookingTypes ?? []) {
      cookingType.isSelected = false;
    }
    if (_product.cookingTypes != null &&
        _product.cookingTypes!.any((e) => e.id == _product.preferredCookingTypeId)) {
      _product.cookingTypes?.firstWhere((e) => e.id == _product.preferredCookingTypeId).isSelected =
          true;
    }

    //* Recupero degli ingredienti di default
    for (FFIngredient ingredient in _product.ingredients ?? []) {
      if (ingredient.isMainIngredient) {
        ingredient.selected = true;
      } else {
        ingredient.selected = false;
      }
      selectedIngridients.add(ingredient);
    }

    //* Recupero della foodList di default
    for (FFFoodlist foodList in _product.foodlists ?? []) {
      if (_product.foodListsDefinition != null &&
          _product.foodListsDefinition!.any((e) => e.foodListId == foodList.id)) {
        // _mode = foodListsDefinition!.firstWhere((e) => e.foodListId == foodList.id).mode;

        var mode = _product.foodListsDefinition!
            .firstWhere((element) => element.foodListId == foodList.id)
            .mode;

        if (mode == 3 || mode == 2) {
          foodList.foods?.forEach((element) => element.hiddenPrice = true);
        }
        if (mode == 1) {
          foodList.foods?.forEach((element) => element.hiddenPrice = false);
        }
        for (FFFoodDetail i in foodList.foods ?? []) {
          i.selected = false;
        }
      }
    }

    notifyListeners();
  }

  //* Settaggio delle alternative
  void setAlternative({
    required int foodId,
    required FFAlternative alternative,
  }) {
    var selectedFood = alternative.foods?.firstWhere((e) => e.isSelected == true);
    selectedFood?.isSelected = false;

    var food = alternative.foods?.firstWhere((e) => e.foodId == foodId);
    food?.isSelected = true;

    _product.newPrice -= selectedFood?.price ?? 0.0;

    _product.newPrice += food?.price ?? 0.0;

    notifyListeners();
  }

  //* Settaggio tipi di cottura
  void selectCookingType({required int cookingTypeId}) {
    _product.cookingTypes?.firstWhere((e) => e.isSelected == true).isSelected = false;
    var selected = _product.cookingTypes?.firstWhere((e) => e.id == cookingTypeId);
    selected?.isSelected = true;
    notifyListeners();
  }

  //* Settaggio ingredienti
  void setIngredient({required FFIngredient ingredient, required bool selected}) {
    if (ingredient.canRemove) {
      FFIngredient selectedIngridient =
          _product.ingredients!.firstWhere((e) => e.foodId == ingredient.foodId);

      selectedIngridient.selected = selected;

      if (ingredient.isMainIngredient == false) {
        if (selectedIngridient.selected == true) {
          _product.newPrice += selectedIngridient.variationPrice;
        } else if (selectedIngridient.selected == false) {
          _product.newPrice -= selectedIngridient.variationPrice;
        }
      }

      notifyListeners();
    }
  }

  void setFoodList({required int foodId, required FFFoodlist foodList, required bool selected}) {
    var mode = product.foodListsDefinition!
        .firstWhere((element) => element.foodListId == foodList.id)
        .mode;
    var quantity =
        _product.foodListsDefinition!.firstWhere((e) => e.foodListId == foodList.id).maxQty;
    List copyList = [];
    List lastVariationPrice = [];

    for (FFFoodDetail food
        in foodList.foods!.where((e) => e.selected == true && e.isFree == false)) {
      lastVariationPrice.add(food);
      if (lastVariationPrice.length >= 2) {
        lastVariationPrice.remove(1);
      }
    }

    if (mode == FoodListModeEnum.maxIngredientWithCost) {
      for (var e in foodList.foods!.where((e) => e.selected == true)) {
        copyList.add(e);
      }
      if (quantity > copyList.length ||
          foodList.foods?.firstWhere((e) => e.id == foodId).selected == true) {
        FFFoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
        selectedfood.selected = selected;

        if (selectedfood.selected == true) {
          _product.newPrice += selectedfood.variationPrice ?? 0;
        } else if (selectedfood.selected == false) {
          _product.newPrice -= selectedfood.variationPrice ?? 0;
        }
      }
    } else if (mode == FoodListModeEnum.maxIngredientFree) {
      for (var e in foodList.foods!.where((e) => e.selected == true)) {
        copyList.add(e);
      }
      if (quantity > copyList.length ||
          foodList.foods?.firstWhere((e) => e.id == foodId).selected == true) {
        FFFoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
        selectedfood.selected = selected;

        foodList.foods?.forEach((e) => e.isFree = false);
        foodList.foods?.where((e) => e.selected == true).forEach((e) => e.isFree = true);
      }
    } else if (mode == FoodListModeEnum.maxFreeAndOtherWithCost) {
      FFFoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
      selectedfood.selected = selected;

      for (FFFoodDetail food in foodList.foods!.where((e) => e.selected == true)) {
        copyList.add(food);
      }

      //* Selezionati maggiori della quantità
      if (copyList.length > quantity) {
        foodList.foods
            ?.where((e) => e.id != selectedfood.id && e.selected != true)
            .forEach((e) => e.hiddenPrice = false);

        if (selectedfood.selected == true) {
          _product.newPrice += selectedfood.variationPrice ?? 0;
        } else if (selectedfood.selected == false) {
          _product.newPrice -= selectedfood.variationPrice ?? 0;
        }
      }

      //* Selezionati minori della quantità
      else if (copyList.length < quantity) {
        foodList.foods?.forEach((e) => e.hiddenPrice = true);

        foodList.foods?.forEach((e) => e.isFree = false);
        foodList.foods?.where((e) => e.selected == true).forEach((e) => e.isFree = true);
      }

      //* Selezionati uguali della quantità
      else if (copyList.length == quantity) {
        for (FFFoodDetail food in foodList.foods ?? []) {
          food.isFree = false;
          if (food.selected) {
            food.isFree == true;
            food.hiddenPrice = true;
          } else {
            food.hiddenPrice = false;
          }
        }
        if (selectedfood.selected == false) {
          _product.newPrice -= lastVariationPrice.first.variationPrice ?? 0;
        }
      }
      if (foodList.foods?.any((e) => e.selected) == false) {
        foodList.foods?.forEach((e) => e.hiddenPrice = true);
      }
    }
    //* Logica Scelta Libera
    else if (mode == 0) {
      FFFoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
      selectedfood.selected = selected;
      if (selectedfood.selected == true) {
        _product.newPrice += selectedfood.variationPrice ?? 0;
      } else if (selectedfood.selected == false) {
        _product.newPrice -= selectedfood.variationPrice ?? 0;
      }
    }

    notifyListeners();
  }
}

/// Chiamare come prima cosa [getProductVariation] passandogli il prodotto
/// e il formato anche in caso di null per inizializzare il prodotto in maniera
/// corretta.
// class FlistFoodOrderNewProduct extends ChangeNotifier {
//   final Product product;
//   final Format? format;
//   int _mode = 0;

//   FlistFoodOrderNewProduct({required this.product, required this.format});

//   void getProductVariation() {
//     List<Ingredient> selectedIngridients = [];

//     //* Settaggio del prezzo nel caso ci siano formati
//     if (format != null) {
//       product.newPrice = format!.price;
//     } else {
//       product.newPrice = product.price;
//     }

//     //* Recupero delle alternative di default
//     for (Alternative alternative in product.alternatives ?? []) {
//       for (Food food in alternative.foods ?? []) {
//         food.isSelected = false;
//         if (food.foodId == alternative.defaultFoodId) {
//           food.isSelected = true;
//         }
//       }
//     }

//     //* Recupero del tipo di cotture di default
//     for (CookingType cookingType in product.cookingTypes ?? []) {
//       cookingType.isSelected = false;
//     }
//     if (product.cookingTypes != null &&
//         product.cookingTypes!.any((e) => e.id == product.preferredCookingTypeId)) {
//       product.cookingTypes?.firstWhere((e) => e.id == product.preferredCookingTypeId).isSelected =
//           true;
//     }

//     //* Recupero degli ingredienti di default
//     for (Ingredient ingredient in product.ingredients ?? []) {
//       if (ingredient.isMainIngredient) {
//         ingredient.selected = true;
//       } else {
//         ingredient.selected = false;
//       }
//       selectedIngridients.add(ingredient);
//     }

//     //* Recupero della foodList di default
//     for (Foodlist foodList in product.foodlists ?? []) {
//       if (product.foodListsDefinition != null &&
//           product.foodListsDefinition!.any((e) => e.foodListId == foodList.id)) {
//         _mode = product.foodListsDefinition!.firstWhere((e) => e.foodListId == foodList.id).mode;

//         for (FoodDetail foodDetail in foodList.foods ?? []) {
//           if (_mode == FoodListModeEnum.maxFreeAndOtherWithCost ||
//               _mode == FoodListModeEnum.maxIngredientFree) {
//             foodDetail.hiddenPrice = true;
//           } else if (_mode == FoodListModeEnum.maxIngredientWithCost) {
//             foodDetail.hiddenPrice = false;
//           }

//           foodDetail.selected = false;
//         }
//       }
//     }

//     notifyListeners();
//   }

class FlistFoodOrderAddOrder extends ChangeNotifier {}
