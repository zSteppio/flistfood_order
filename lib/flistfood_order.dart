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

//   //* Settaggio delle alternative
//   void setAlternative({
//     required int foodId,
//     required Alternative alternative,
//   }) {
//     var selectedFood = alternative.foods?.firstWhere((e) => e.isSelected == true);
//     selectedFood?.isSelected = false;

//     var food = alternative.foods?.firstWhere((e) => e.foodId == foodId);
//     food?.isSelected = true;

//     product.newPrice -= selectedFood?.price ?? 0.0;

//     product.newPrice += food?.price ?? 0.0;

//     notifyListeners();
//   }

//   //* Settaggio tipi di cottura
//   void selectCookingType({required int cookingTypeId}) {
//     product.cookingTypes?.firstWhere((e) => e.isSelected == true).isSelected = false;
//     var selected = product.cookingTypes?.firstWhere((e) => e.id == cookingTypeId);
//     selected?.isSelected = true;
//     notifyListeners();
//   }

//   //* Settaggio ingredienti
//   void setIngredient({required Ingredient ingredient, required bool selected}) {
//     if (ingredient.canRemove) {
//       Ingredient selectedIngridient =
//           product.ingredients!.firstWhere((e) => e.foodId == ingredient.foodId);

//       selectedIngridient.selected = selected;

//       if (ingredient.isMainIngredient == false) {
//         if (selectedIngridient.selected == true) {
//           product.newPrice += selectedIngridient.variationPrice;
//         } else if (selectedIngridient.selected == false) {
//           product.newPrice -= selectedIngridient.variationPrice;
//         }
//       }

//       notifyListeners();
//     }
//   }

//   void setFoodList({required int foodId, required Foodlist foodList, required bool selected}) {
//     var quantity =
//         product.foodListsDefinition!.firstWhere((e) => e.foodListId == foodList.id).maxQty;
//     List copyList = [];
//     List lastVariationPrice = [];

//     for (FoodDetail food in foodList.foods!.where((e) => e.selected == true && e.isFree == false)) {
//       lastVariationPrice.add(food);
//       if (lastVariationPrice.length >= 2) {
//         lastVariationPrice.remove(1);
//       }
//     }

//     for (FoodDetail food in foodList.foods!.where((e) => e.selected == true)) {
//       copyList.add(food);
//     }

//     bool checkQuantity = quantity > copyList.length ||
//         foodList.foods?.firstWhere((e) => e.id == foodId).selected == true;

//     FoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
//     selectedfood.selected = selected;

//     if (_mode == FoodListModeEnum.maxIngredientWithCost && checkQuantity) {
//       if (selectedfood.selected == true) {
//         product.newPrice += selectedfood.variationPrice ?? 0;
//       } else if (selectedfood.selected == false) {
//         product.newPrice -= selectedfood.variationPrice ?? 0;
//       }
//     } else if (_mode == FoodListModeEnum.maxIngredientFree && checkQuantity) {
//       foodList.foods?.forEach((e) => e.isFree = false);
//       foodList.foods?.where((e) => e.selected == true).forEach((e) => e.isFree = true);
//     } else if (_mode == FoodListModeEnum.maxFreeAndOtherWithCost) {
//       //* Selezionati maggiori della quantità
//       if (copyList.length > quantity) {
//         foodList.foods
//             ?.where((e) => e.id != selectedfood.id && e.selected != true)
//             .forEach((e) => e.hiddenPrice = false);

//         if (selectedfood.selected == true) {
//           product.newPrice += selectedfood.variationPrice ?? 0;
//         } else if (selectedfood.selected == false) {
//           product.newPrice -= selectedfood.variationPrice ?? 0;
//         }
//       }

//       //* Selezionati minori della quantità
//       else if (copyList.length < quantity) {
//         for (FoodDetail food in foodList.foods ?? []) {
//           food.hiddenPrice = true;
//           food.isFree = false;

//           if (food.selected) {
//             food.isFree = true;
//           }

//           if (!selectedfood.selected) {
//             product.newPrice -= lastVariationPrice.first.variationPrice ?? 0;
//           }
//         }
//       }

//       //* Selezionati uguali della quantità
//       else if (copyList.length == quantity) {
//         for (FoodDetail food in foodList.foods ?? []) {
//           food.isFree = false;
//           if (food.selected) {
//             food.isFree == true;
//             food.hiddenPrice = true;
//           } else {
//             food.hiddenPrice = false;
//           }
//         }
//       }
//       if (foodList.foods?.any((e) => e.selected) == false) {
//         foodList.foods?.forEach((e) => e.hiddenPrice = true);
//       }
//     }
//     //* Logica Scelta Libera
//     else if (_mode == 0) {
//       if (selectedfood.selected == true) {
//         product.newPrice += selectedfood.variationPrice ?? 0;
//       } else if (selectedfood.selected == false) {
//         product.newPrice -= selectedfood.variationPrice ?? 0;
//       }
//     }

//     notifyListeners();
//   }
// }

class FlistFoodOrderAddOrder extends ChangeNotifier {
  late Detail _detail;

  Detail get detail => _detail;
}
