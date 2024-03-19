import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class FFProduct {
  int id;
  String? name;
  String? formatName;
  int? preferredCookingTypeId;
  int minOrdinableQuantity;
  double price;
  List<FFIngredient> ingredients;
  List<FFAlternative> alternatives;
  List<FFCookingType> cookingTypes;
  List<FFFoodListsDefinition> foodListsDefinition;
  //* Variabili locali
  List<FFProduct> productFormats;
  double newPrice;

  FFProduct({
    required this.id,
    this.formatName,
    this.productFormats = const [],
    this.name,
    this.preferredCookingTypeId,
    this.minOrdinableQuantity = 0,
    this.newPrice = 0,
    required this.price,
    this.ingredients = const [],
    this.alternatives = const [],
    this.cookingTypes = const [],
    this.foodListsDefinition = const [],
  });
  factory FFProduct.fromJson(Map<String, dynamic> json) => _$FFProductFromJson(json);
  Map<String, dynamic> toJson() => _$FFProductToJson(this);
}

/* @CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class FFFormat {
  String? format;
  int? id;
  final double price;

  FFFormat({this.format, required this.price, this.id});

  factory FFFormat.fromJson(Map<String, dynamic> json) => _$FFFormatFromJson(json);
  Map<String, dynamic> toJson() => _$FFFormatToJson(this);
} */

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class FFIngredient {
  int foodId;
  String? name;
  bool isMain;
  bool selected;
  double price;
  bool canRemove;
  int canAddQuantity;
  //* Variabili locali
  int? variationType;
  double? localVariationPrice;

  FFIngredient({
    required this.foodId,
    this.name,
    this.isMain = false,
    this.selected = false,
    required this.price,
    required this.canRemove,
    required this.canAddQuantity,
    this.variationType,
    this.localVariationPrice,
  });

  factory FFIngredient.fromJson(Map<String, dynamic> json) => _$FFIngredientFromJson(json);
  Map<String, dynamic> toJson() => _$FFIngredientToJson(this);
}

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class FFAlternative {
  int foodListId;
  String? foodListName;
  int defaultFoodId;
  List<FFFood> foods;

  FFAlternative({
    required this.foodListId,
    this.foodListName,
    required this.defaultFoodId,
    this.foods = const [],
  });

  factory FFAlternative.fromJson(Map<String, dynamic> json) => _$FFAlternativeFromJson(json);
  Map<String, dynamic> toJson() => _$FFAlternativeToJson(this);
}

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class FFCookingType {
  int id;
  String? name;
  int priority;
  bool isSelected;

  FFCookingType({
    required this.id,
    this.name,
    required this.priority,
    this.isSelected = false,
  });

  factory FFCookingType.fromJson(Map<String, dynamic> json) => _$FFCookingTypeFromJson(json);
  Map<String, dynamic> toJson() => _$FFCookingTypeToJson(this);
}

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class FFFood {
  int foodId;
  String? name;
  double price;
  bool isSelected;

  FFFood({
    required this.foodId,
    this.name,
    required this.price,
    this.isSelected = false,
  });

  factory FFFood.fromJson(Map<String, dynamic> json) => _$FFFoodFromJson(json);
  Map<String, dynamic> toJson() => _$FFFoodToJson(this);
}

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class FFFoodListsDefinition {
  int canAddQuantity;
  int maxQty;
  int minQty;
  int id;
  FFMode mode;
  String? name;
  List<FFFoodListDefinitionDetail> foods;

  FFFoodListsDefinition({
    required this.id,
    required this.maxQty,
    required this.minQty,
    required this.mode,
    this.canAddQuantity = 0,
    this.name,
    this.foods = const [],
  });

  factory FFFoodListsDefinition.fromJson(Map<String, dynamic> json) => _$FFFoodListsDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$FFFoodListsDefinitionToJson(this);
}

enum FFMode {
  @JsonValue(0)
  freeChoise,
  @JsonValue(1)
  maxIngredientWithCost,
  @JsonValue(2)
  maxIngredientFree,
  @JsonValue(3)
  maxFreeAndOtherWithCost,
}

@CopyWith()
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class FFFoodListDefinitionDetail {
  int id;
  String? name;
  double price;
  //* Variabili locali
  bool isSelected;
  DateTime? timeSelected;

  FFFoodListDefinitionDetail({
    required this.id,
    this.price = 0.0,
    this.name,
    this.isSelected = false,
    this.timeSelected,
  });

  factory FFFoodListDefinitionDetail.fromJson(Map<String, dynamic> json) => _$FFFoodListDefinitionDetailFromJson(json);
  Map<String, dynamic> toJson() => _$FFFoodListDefinitionDetailToJson(this);
}

// @CopyWith()
// @JsonSerializable(includeIfNull: false, explicitToJson: true)
// class FFFoodDetail {
//   FFFoodDetail({
//     this.categoryName,
//     this.allergenIds = const [],
//     this.productsCounts,
//     this.canBeDeleted,
//     this.forList,
//     this.productId,
//     this.fromPlatForm,
//     this.translations = const [],
//     this.isFree = false,
//     this.selected = false,
//     this.hiddenPrice = false,
//     this.id,
//     this.name,
//     this.shortName,
//     this.variationPrice,
//     this.calories,
//     this.foodCategoryId,
//     this.tags,
//     this.hidden,
//     this.selectionPriority,
//     this.timeSelected,
//   });

//   int? selectionPriority;
//   String? categoryName;
//   List<int> allergenIds;
//   int? productsCounts;
//   bool? canBeDeleted;
//   bool? forList;
//   bool selected;
//   bool isFree;
//   bool hiddenPrice;
//   int? productId;
//   bool? fromPlatForm;
//   List<FFTranslation> translations;
//   int? id;
//   String? name;
//   String? shortName;
//   double? variationPrice;
//   int? calories;
//   int? foodCategoryId;
//   String? tags;
//   bool? hidden;
//   DateTime? timeSelected;

//   factory FFFoodDetail.fromJson(Map<String, dynamic> json) => _$FFFoodDetailFromJson(json);
//   Map<String, dynamic> toJson() => _$FFFoodDetailToJson(this);
// }

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

  factory FFTranslation.fromJson(Map<String, dynamic> json) => _$FFTranslationFromJson(json);
  Map<String, dynamic> toJson() => _$FFTranslationToJson(this);
}
