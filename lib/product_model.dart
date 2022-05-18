part of 'flistfood_order.dart';

class FFProduct extends ChangeNotifier {
  int id;
  String? name;
  int? preferredCookingTypeId;
  int minOrdinableQuantity;
  double newPrice;
  double price;
  int sectionId;
  List<FFFormat>? formats;
  List<FFIngredient>? ingredients;
  List<FFAlternative>? alternatives;
  List<FFCookingType>? cookingTypes;
  List<FFFoodlist>? foodlists;
  List<FFFoodListsDefinition>? foodListsDefinition;

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
  FFFormat? _format;
  int _mode = 0;

  FFProduct get product => _product;
  FFFormat? get format => _format;

  void setProduct(FFProduct product) {
    _product = FFProduct(
      id: product.id,
      name: product.name,
      preferredCookingTypeId: product.preferredCookingTypeId,
      minOrdinableQuantity: product.minOrdinableQuantity,
      price: product.price,
      sectionId: product.sectionId,
      formats: product.formats,
      alternatives: product.alternatives,
      ingredients: product.ingredients,
      cookingTypes: product.cookingTypes,
      foodListsDefinition: product.foodListsDefinition,
      foodlists: product.foodlists,
    );

    notifyListeners();
  }

  void getProductVariation({FFFormat? format}) {
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

    //* Recupero della foodList di default
    for (FFFoodlist foodList in product.foodlists ?? []) {
      if (product.foodListsDefinition != null &&
          product.foodListsDefinition!.any((e) => e.foodListId == foodList.id)) {
        _mode = product.foodListsDefinition!.firstWhere((e) => e.foodListId == foodList.id).mode;

        for (FFFoodDetail foodDetail in foodList.foods ?? []) {
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

  //* Settaggio delle alternative
  void setAlternative({
    required int foodId,
    required FFAlternative alternative,
  }) {
    var selectedFood = alternative.foods?.firstWhere((e) => e.isSelected == true);
    selectedFood?.isSelected = false;

    var food = alternative.foods?.firstWhere((e) => e.foodId == foodId);
    food?.isSelected = true;

    product.newPrice -= selectedFood?.price ?? 0.0;

    product.newPrice += food?.price ?? 0.0;

    notifyListeners();
  }

  //* Settaggio tipi di cottura
  void selectCookingType({required int cookingTypeId}) {
    product.cookingTypes?.firstWhere((e) => e.isSelected == true).isSelected = false;
    var selected = product.cookingTypes?.firstWhere((e) => e.id == cookingTypeId);
    selected?.isSelected = true;
    notifyListeners();
  }

  //* Settaggio ingredienti
  void setIngredient({required FFIngredient ingredient, required bool selected}) {
    if (ingredient.canRemove) {
      FFIngredient selectedIngridient =
          product.ingredients!.firstWhere((e) => e.foodId == ingredient.foodId);

      selectedIngridient.selected = selected;

      if (ingredient.isMainIngredient == false) {
        if (selectedIngridient.selected == true) {
          product.newPrice += selectedIngridient.variationPrice;
        } else if (selectedIngridient.selected == false) {
          product.newPrice -= selectedIngridient.variationPrice;
        }
      }

      notifyListeners();
    }
  }

  void setFoodList({required int foodId, required FFFoodlist foodList, required bool selected}) {
    var quantity =
        product.foodListsDefinition!.firstWhere((e) => e.foodListId == foodList.id).maxQty;
    List copyList = [];
    List lastVariationPrice = [];

    for (FFFoodDetail food
        in foodList.foods!.where((e) => e.selected == true && e.isFree == false)) {
      lastVariationPrice.add(food);
      if (lastVariationPrice.length >= 2) {
        lastVariationPrice.remove(1);
      }
    }

    for (FFFoodDetail food in foodList.foods!.where((e) => e.selected == true)) {
      copyList.add(food);
    }

    bool checkQuantity = quantity > copyList.length ||
        foodList.foods?.firstWhere((e) => e.id == foodId).selected == true;

    FFFoodDetail selectedfood = foodList.foods!.firstWhere((e) => e.id == foodId);
    selectedfood.selected = selected;

    if (_mode == FoodListModeEnum.maxIngredientWithCost && checkQuantity) {
      if (selectedfood.selected == true) {
        product.newPrice += selectedfood.variationPrice ?? 0;
      } else if (selectedfood.selected == false) {
        product.newPrice -= selectedfood.variationPrice ?? 0;
      }
    } else if (_mode == FoodListModeEnum.maxIngredientFree && checkQuantity) {
      foodList.foods?.forEach((e) => e.isFree = false);
      foodList.foods?.where((e) => e.selected == true).forEach((e) => e.isFree = true);
    } else if (_mode == FoodListModeEnum.maxFreeAndOtherWithCost) {
      //* Selezionati maggiori della quantità
      if (copyList.length > quantity) {
        foodList.foods
            ?.where((e) => e.id != selectedfood.id && e.selected != true)
            .forEach((e) => e.hiddenPrice = false);

        if (selectedfood.selected == true) {
          product.newPrice += selectedfood.variationPrice ?? 0;
        } else if (selectedfood.selected == false) {
          product.newPrice -= selectedfood.variationPrice ?? 0;
        }
      }

      //* Selezionati minori della quantità
      else if (copyList.length < quantity) {
        for (FFFoodDetail food in foodList.foods ?? []) {
          food.hiddenPrice = true;
          food.isFree = false;

          if (food.selected) {
            food.isFree = true;
          }

          if (!selectedfood.selected) {
            product.newPrice -= lastVariationPrice.first.variationPrice ?? 0;
          }
        }
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
      }
      if (foodList.foods?.any((e) => e.selected) == false) {
        foodList.foods?.forEach((e) => e.hiddenPrice = true);
      }
    }
    //* Logica Scelta Libera
    else if (_mode == 0) {
      if (selectedfood.selected == true) {
        product.newPrice += selectedfood.variationPrice ?? 0;
      } else if (selectedfood.selected == false) {
        product.newPrice -= selectedfood.variationPrice ?? 0;
      }
    }

    notifyListeners();
  }
}

class FFFormat {
  String? format;
  final double price;

  FFFormat({this.format, required this.price});
}

class FFIngredient {
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

  FFIngredient({
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

class FFAlternative {
  int foodListId;
  String? foodListName;
  int defaultFoodId;
  List<FFFood>? foods;

  FFAlternative({
    required this.foodListId,
    this.foodListName,
    required this.defaultFoodId,
    this.foods,
  });
}

class FFCookingType {
  int id;
  String? name;
  int? priority;
  bool isSelected;

  FFCookingType({
    required this.id,
    this.name,
    this.priority,
    this.isSelected = false,
  });
}

class FFFood {
  int foodId;
  String? foodName;
  double price;
  bool isSelected;

  FFFood({
    required this.foodId,
    this.foodName,
    required this.price,
    this.isSelected = false,
  });
}

class FFFoodListsDefinition {
  bool x2;
  bool x3;
  int maxQty;
  int minQty;
  int foodListId;
  int mode;

  FFFoodListsDefinition({
    required this.foodListId,
    required this.maxQty,
    required this.minQty,
    required this.mode,
    required this.x2,
    required this.x3,
  });
}

class FFFoodlist {
  FFFoodlist({
    this.foods,
    this.id,
    this.name,
    this.priceListIds,
    this.foodIds,
    this.alternative,
    this.hidden,
  });

  List<FFFoodDetail>? foods;
  int? id;
  String? name;
  List<int>? priceListIds;
  List<int>? foodIds;
  bool? alternative;
  bool? hidden;
}

class FFFoodDetail {
  FFFoodDetail({
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
  List<FFTranslation>? translations;
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
class FFTranslation {
  FFTranslation({
    this.language,
    this.name,
    this.description,
  });

  int? language;
  String? name;
  String? description;
}
