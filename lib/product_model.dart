part of 'flistfood_order.dart';

class FFProduct {
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
