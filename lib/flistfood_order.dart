library flistfood_order;

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product_model.dart';
part 'order_model.dart';

class FoodListModeEnum {
  static const maxIngredientWithCost = 1;
  static const maxIngredientFree = 2;
  static const maxFreeAndOtherWithCost = 3;
}

class FlistFoodOrderTest extends ChangeNotifier {
  String _message = 'Ciao!';

  String get message => _message;

  void setMessage(String message) {
    _message = message;

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
