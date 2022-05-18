part of 'flistfood_order.dart';

class FFProduct extends ChangeNotifier {
  int id;
  String? name;
  int? preferredCookingTypeId;
  int minOrdinableQuantity;
  double newPrice;
  double price;
  int sectionId;
  List<Format>? formats;
  List<Ingredient>? ingredients;
  List<Alternative>? alternatives;
  List<CookingType>? cookingTypes;
  List<Foodlist>? foodlists;
  List<FoodListsDefinition>? foodListsDefinition;

  FFProduct({
    required this.id,
    this.name,
    this.preferredCookingTypeId,
    this.minOrdinableQuantity = 0,
    this.newPrice = 0,
    required this.price,
    required this.sectionId,
    this.formats,
    this.ingredients,
    this.alternatives,
    this.cookingTypes,
    this.foodListsDefinition,
    this.foodlists,
  });

  late FFProduct _product;
  Format? _format;
  int _mode = 0;

  FFProduct get product => _product;
  Format? get format => _format;

  void getProductVariation({Format? format}) {
    _product = FFProduct(
      id: id,
      name: name,
      preferredCookingTypeId: preferredCookingTypeId,
      minOrdinableQuantity: minOrdinableQuantity,
      price: price,
      sectionId: sectionId,
      alternatives: alternatives,
      ingredients: ingredients,
      cookingTypes: cookingTypes,
      foodListsDefinition: foodListsDefinition,
      foodlists: foodlists,
    );

    List<Ingredient> selectedIngridients = [];

    //* Settaggio del prezzo nel caso ci siano formati
    if (format != null) {
      product.newPrice = format.price;
    } else {
      product.newPrice = product.price;
    }

    //* Recupero delle alternative di default
    for (Alternative alternative in product.alternatives ?? []) {
      for (Food food in alternative.foods ?? []) {
        food.isSelected = false;
        if (food.foodId == alternative.defaultFoodId) {
          food.isSelected = true;
        }
      }
    }

    //* Recupero del tipo di cotture di default
    for (CookingType cookingType in product.cookingTypes ?? []) {
      cookingType.isSelected = false;
    }
    if (product.cookingTypes != null &&
        product.cookingTypes!.any((e) => e.id == product.preferredCookingTypeId)) {
      product.cookingTypes?.firstWhere((e) => e.id == product.preferredCookingTypeId).isSelected =
          true;
    }

    //* Recupero degli ingredienti di default
    for (Ingredient ingredient in product.ingredients ?? []) {
      if (ingredient.isMainIngredient) {
        ingredient.selected = true;
      } else {
        ingredient.selected = false;
      }
      selectedIngridients.add(ingredient);
    }

    //* Recupero della foodList di default
    for (Foodlist foodList in product.foodlists ?? []) {
      if (product.foodListsDefinition != null &&
          product.foodListsDefinition!.any((e) => e.foodListId == foodList.id)) {
        _mode = product.foodListsDefinition!.firstWhere((e) => e.foodListId == foodList.id).mode;

        for (FoodDetail foodDetail in foodList.foods ?? []) {
          if (_mode == FoodListModeEnum.maxFreeAndOtherWithCost ||
              _mode == FoodListModeEnum.maxIngredientFree) {
            foodDetail.hiddenPrice = true;
          } else if (_mode == FoodListModeEnum.maxIngredientWithCost) {
            foodDetail.hiddenPrice = false;
          }

          foodDetail.selected = false;
        }
      }
    }

    notifyListeners();
  }
}

class Format {
  String? format;
  final double price;

  Format({this.format, required this.price});
}

class Ingredient {
  int foodId;
  String? food;
  bool hidden;
  bool isMainIngredient;
  bool selected;
  double variationPrice;
  String? variationGroup;
  bool canRemove;
  bool canDouble;
  bool canTriple;

  Ingredient({
    required this.foodId,
    this.food,
    required this.hidden,
    this.isMainIngredient = false,
    this.selected = false,
    required this.variationPrice,
    this.variationGroup,
    required this.canRemove,
    required this.canDouble,
    required this.canTriple,
  });
}

class Alternative {
  int foodListId;
  String? foodListName;
  int defaultFoodId;
  List<Food>? foods;

  Alternative({
    required this.foodListId,
    this.foodListName,
    required this.defaultFoodId,
    this.foods,
  });
}

class CookingType {
  int id;
  String? name;
  int? priority;
  bool isSelected;

  CookingType({
    required this.id,
    this.name,
    this.priority,
    this.isSelected = false,
  });
}

class Food {
  int foodId;
  String? foodName;
  double price;
  bool isSelected;

  Food({
    required this.foodId,
    this.foodName,
    required this.price,
    this.isSelected = false,
  });
}

class FoodListsDefinition {
  bool x2;
  bool x3;
  int maxQty;
  int minQty;
  int foodListId;
  int mode;

  FoodListsDefinition({
    required this.foodListId,
    required this.maxQty,
    required this.minQty,
    required this.mode,
    required this.x2,
    required this.x3,
  });
}

class Foodlist {
  Foodlist({
    this.foods,
    this.id,
    this.name,
    this.priceListIds,
    this.foodIds,
    this.alternative,
    this.hidden,
  });

  List<FoodDetail>? foods;
  int? id;
  String? name;
  List<int>? priceListIds;
  List<int>? foodIds;
  bool? alternative;
  bool? hidden;
}

class FoodDetail {
  FoodDetail({
    this.categoryName,
    this.allergenIds,
    this.productsCounts,
    this.canBeDeleted,
    this.forList,
    this.productId,
    this.fromPlatForm,
    this.translations,
    this.isFree = false,
    this.selected = false,
    this.hiddenPrice = false,
    this.id,
    this.name,
    this.shortName,
    this.variationPrice,
    this.calories,
    this.foodCategoryId,
    this.tags,
    this.hidden,
  });

  String? categoryName;
  List<int>? allergenIds;
  int? productsCounts;
  bool? canBeDeleted;
  bool? forList;
  bool selected;
  bool isFree;
  bool hiddenPrice;
  int? productId;
  bool? fromPlatForm;
  List<Translation>? translations;
  int? id;
  String? name;
  String? shortName;
  double? variationPrice;
  int? calories;
  int? foodCategoryId;
  String? tags;
  bool? hidden;
}

@CopyWith()
@JsonSerializable(includeIfNull: false)
class Translation {
  Translation({
    this.language,
    this.name,
    this.description,
  });

  int? language;
  String? name;
  String? description;
}
