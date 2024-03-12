// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductCWProxy {
  Product alternatives(List<Alternative> alternatives);

  Product cookingTypes(List<CookingType> cookingTypes);

  Product foodListsDefinition(List<FoodlistsDefinition> foodListsDefinition);

  Product foodlists(List<Foodlist> foodlists);

  Product formatName(String? formatName);

  Product id(int id);

  Product ingredients(List<Ingredient> ingredients);

  Product minOrdinableQuantity(int minOrdinableQuantity);

  Product name(String? name);

  Product newPrice(double newPrice);

  Product preferredCookingTypeId(int? preferredCookingTypeId);

  Product price(double price);

  Product productFormats(List<Product> productFormats);

  Product sectionId(int sectionId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Product(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Product(...).copyWith(id: 12, name: "My name")
  /// ````
  Product call({
    List<Alternative>? alternatives,
    List<CookingType>? cookingTypes,
    List<FoodlistsDefinition>? foodListsDefinition,
    List<Foodlist>? foodlists,
    String? formatName,
    int? id,
    List<Ingredient>? ingredients,
    int? minOrdinableQuantity,
    String? name,
    double? newPrice,
    int? preferredCookingTypeId,
    double? price,
    List<Product>? productFormats,
    int? sectionId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProduct.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProduct.copyWith.fieldName(...)`
class _$ProductCWProxyImpl implements _$ProductCWProxy {
  final Product _value;

  const _$ProductCWProxyImpl(this._value);

  @override
  Product alternatives(List<Alternative> alternatives) => this(alternatives: alternatives);

  @override
  Product cookingTypes(List<CookingType> cookingTypes) => this(cookingTypes: cookingTypes);

  @override
  Product foodListsDefinition(List<FoodlistsDefinition> foodListsDefinition) =>
      this(foodListsDefinition: foodListsDefinition);

  @override
  Product foodlists(List<Foodlist> foodlists) => this(foodlists: foodlists);

  @override
  Product formatName(String? formatName) => this(formatName: formatName);

  @override
  Product id(int id) => this(id: id);

  @override
  Product ingredients(List<Ingredient> ingredients) => this(ingredients: ingredients);

  @override
  Product minOrdinableQuantity(int minOrdinableQuantity) =>
      this(minOrdinableQuantity: minOrdinableQuantity);

  @override
  Product name(String? name) => this(name: name);

  @override
  Product newPrice(double newPrice) => this(newPrice: newPrice);

  @override
  Product preferredCookingTypeId(int? preferredCookingTypeId) =>
      this(preferredCookingTypeId: preferredCookingTypeId);

  @override
  Product price(double price) => this(price: price);

  @override
  Product productFormats(List<Product> productFormats) => this(productFormats: productFormats);

  @override
  Product sectionId(int sectionId) => this(sectionId: sectionId);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Product(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Product(...).copyWith(id: 12, name: "My name")
  /// ````
  Product call({
    Object? alternatives = const $CopyWithPlaceholder(),
    Object? cookingTypes = const $CopyWithPlaceholder(),
    Object? foodListsDefinition = const $CopyWithPlaceholder(),
    Object? foodlists = const $CopyWithPlaceholder(),
    Object? formatName = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? ingredients = const $CopyWithPlaceholder(),
    Object? minOrdinableQuantity = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? newPrice = const $CopyWithPlaceholder(),
    Object? preferredCookingTypeId = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? productFormats = const $CopyWithPlaceholder(),
    Object? sectionId = const $CopyWithPlaceholder(),
  }) {
    return Product(
      alternatives: alternatives == const $CopyWithPlaceholder() || alternatives == null
          ? _value.alternatives
          // ignore: cast_nullable_to_non_nullable
          : alternatives as List<Alternative>,
      cookingTypes: cookingTypes == const $CopyWithPlaceholder() || cookingTypes == null
          ? _value.cookingTypes
          // ignore: cast_nullable_to_non_nullable
          : cookingTypes as List<CookingType>,
      foodListsDefinition:
          foodListsDefinition == const $CopyWithPlaceholder() || foodListsDefinition == null
              ? _value.foodListsDefinition
              // ignore: cast_nullable_to_non_nullable
              : foodListsDefinition as List<FoodlistsDefinition>,
      foodlists: foodlists == const $CopyWithPlaceholder() || foodlists == null
          ? _value.foodlists
          // ignore: cast_nullable_to_non_nullable
          : foodlists as List<Foodlist>,
      formatName: formatName == const $CopyWithPlaceholder()
          ? _value.formatName
          // ignore: cast_nullable_to_non_nullable
          : formatName as String?,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      ingredients: ingredients == const $CopyWithPlaceholder() || ingredients == null
          ? _value.ingredients
          // ignore: cast_nullable_to_non_nullable
          : ingredients as List<Ingredient>,
      minOrdinableQuantity:
          minOrdinableQuantity == const $CopyWithPlaceholder() || minOrdinableQuantity == null
              ? _value.minOrdinableQuantity
              // ignore: cast_nullable_to_non_nullable
              : minOrdinableQuantity as int,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      newPrice: newPrice == const $CopyWithPlaceholder() || newPrice == null
          ? _value.newPrice
          // ignore: cast_nullable_to_non_nullable
          : newPrice as double,
      preferredCookingTypeId: preferredCookingTypeId == const $CopyWithPlaceholder()
          ? _value.preferredCookingTypeId
          // ignore: cast_nullable_to_non_nullable
          : preferredCookingTypeId as int?,
      price: price == const $CopyWithPlaceholder() || price == null
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as double,
      productFormats: productFormats == const $CopyWithPlaceholder() || productFormats == null
          ? _value.productFormats
          // ignore: cast_nullable_to_non_nullable
          : productFormats as List<Product>,
      sectionId: sectionId == const $CopyWithPlaceholder() || sectionId == null
          ? _value.sectionId
          // ignore: cast_nullable_to_non_nullable
          : sectionId as int,
    );
  }
}

extension $ProductCopyWith on Product {
  /// Returns a callable class that can be used as follows: `instanceOfProduct.copyWith(...)` or like so:`instanceOfProduct.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductCWProxy get copyWith => _$ProductCWProxyImpl(this);
}

abstract class _$IngredientCWProxy {
  Ingredient canAddQuantity(int canAddQuantity);

  Ingredient canRemove(bool canRemove);

  Ingredient foodId(int foodId);

  Ingredient isMain(bool isMain);

  Ingredient localVariationPrice(double? localVariationPrice);

  Ingredient name(String? name);

  Ingredient price(double price);

  Ingredient selected(bool selected);

  Ingredient variationType(int? variationType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Ingredient(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Ingredient(...).copyWith(id: 12, name: "My name")
  /// ````
  Ingredient call({
    int? canAddQuantity,
    bool? canRemove,
    int? foodId,
    bool? isMain,
    double? localVariationPrice,
    String? name,
    double? price,
    bool? selected,
    int? variationType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfIngredient.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfIngredient.copyWith.fieldName(...)`
class _$IngredientCWProxyImpl implements _$IngredientCWProxy {
  final Ingredient _value;

  const _$IngredientCWProxyImpl(this._value);

  @override
  Ingredient canAddQuantity(int canAddQuantity) => this(canAddQuantity: canAddQuantity);

  @override
  Ingredient canRemove(bool canRemove) => this(canRemove: canRemove);

  @override
  Ingredient foodId(int foodId) => this(foodId: foodId);

  @override
  Ingredient isMain(bool isMain) => this(isMain: isMain);

  @override
  Ingredient localVariationPrice(double? localVariationPrice) =>
      this(localVariationPrice: localVariationPrice);

  @override
  Ingredient name(String? name) => this(name: name);

  @override
  Ingredient price(double price) => this(price: price);

  @override
  Ingredient selected(bool selected) => this(selected: selected);

  @override
  Ingredient variationType(int? variationType) => this(variationType: variationType);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Ingredient(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Ingredient(...).copyWith(id: 12, name: "My name")
  /// ````
  Ingredient call({
    Object? canAddQuantity = const $CopyWithPlaceholder(),
    Object? canRemove = const $CopyWithPlaceholder(),
    Object? foodId = const $CopyWithPlaceholder(),
    Object? isMain = const $CopyWithPlaceholder(),
    Object? localVariationPrice = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? selected = const $CopyWithPlaceholder(),
    Object? variationType = const $CopyWithPlaceholder(),
  }) {
    return Ingredient(
      canAddQuantity: canAddQuantity == const $CopyWithPlaceholder() || canAddQuantity == null
          ? _value.canAddQuantity
          // ignore: cast_nullable_to_non_nullable
          : canAddQuantity as int,
      canRemove: canRemove == const $CopyWithPlaceholder() || canRemove == null
          ? _value.canRemove
          // ignore: cast_nullable_to_non_nullable
          : canRemove as bool,
      foodId: foodId == const $CopyWithPlaceholder() || foodId == null
          ? _value.foodId
          // ignore: cast_nullable_to_non_nullable
          : foodId as int,
      isMain: isMain == const $CopyWithPlaceholder() || isMain == null
          ? _value.isMain
          // ignore: cast_nullable_to_non_nullable
          : isMain as bool,
      localVariationPrice: localVariationPrice == const $CopyWithPlaceholder()
          ? _value.localVariationPrice
          // ignore: cast_nullable_to_non_nullable
          : localVariationPrice as double?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      price: price == const $CopyWithPlaceholder() || price == null
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as double,
      selected: selected == const $CopyWithPlaceholder() || selected == null
          ? _value.selected
          // ignore: cast_nullable_to_non_nullable
          : selected as bool,
      variationType: variationType == const $CopyWithPlaceholder()
          ? _value.variationType
          // ignore: cast_nullable_to_non_nullable
          : variationType as int?,
    );
  }
}

extension $IngredientCopyWith on Ingredient {
  /// Returns a callable class that can be used as follows: `instanceOfIngredient.copyWith(...)` or like so:`instanceOfIngredient.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$IngredientCWProxy get copyWith => _$IngredientCWProxyImpl(this);
}

abstract class _$AlternativeCWProxy {
  Alternative defaultFoodId(int defaultFoodId);

  Alternative foodListId(int foodListId);

  Alternative foodListName(String? foodListName);

  Alternative foods(List<FFFood> foods);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Alternative(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Alternative(...).copyWith(id: 12, name: "My name")
  /// ````
  Alternative call({
    int? defaultFoodId,
    int? foodListId,
    String? foodListName,
    List<FFFood>? foods,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAlternative.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAlternative.copyWith.fieldName(...)`
class _$AlternativeCWProxyImpl implements _$AlternativeCWProxy {
  final Alternative _value;

  const _$AlternativeCWProxyImpl(this._value);

  @override
  Alternative defaultFoodId(int defaultFoodId) => this(defaultFoodId: defaultFoodId);

  @override
  Alternative foodListId(int foodListId) => this(foodListId: foodListId);

  @override
  Alternative foodListName(String? foodListName) => this(foodListName: foodListName);

  @override
  Alternative foods(List<FFFood> foods) => this(foods: foods);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Alternative(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Alternative(...).copyWith(id: 12, name: "My name")
  /// ````
  Alternative call({
    Object? defaultFoodId = const $CopyWithPlaceholder(),
    Object? foodListId = const $CopyWithPlaceholder(),
    Object? foodListName = const $CopyWithPlaceholder(),
    Object? foods = const $CopyWithPlaceholder(),
  }) {
    return Alternative(
      defaultFoodId: defaultFoodId == const $CopyWithPlaceholder() || defaultFoodId == null
          ? _value.defaultFoodId
          // ignore: cast_nullable_to_non_nullable
          : defaultFoodId as int,
      foodListId: foodListId == const $CopyWithPlaceholder() || foodListId == null
          ? _value.foodListId
          // ignore: cast_nullable_to_non_nullable
          : foodListId as int,
      foodListName: foodListName == const $CopyWithPlaceholder()
          ? _value.foodListName
          // ignore: cast_nullable_to_non_nullable
          : foodListName as String?,
      foods: foods == const $CopyWithPlaceholder() || foods == null
          ? _value.foods
          // ignore: cast_nullable_to_non_nullable
          : foods as List<FFFood>,
    );
  }
}

extension $AlternativeCopyWith on Alternative {
  /// Returns a callable class that can be used as follows: `instanceOfAlternative.copyWith(...)` or like so:`instanceOfAlternative.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AlternativeCWProxy get copyWith => _$AlternativeCWProxyImpl(this);
}

abstract class _$CookingTypeCWProxy {
  CookingType id(int id);

  CookingType isSelected(bool isSelected);

  CookingType name(String? name);

  CookingType priority(int? priority);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CookingType(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CookingType(...).copyWith(id: 12, name: "My name")
  /// ````
  CookingType call({
    int? id,
    bool? isSelected,
    String? name,
    int? priority,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCookingType.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCookingType.copyWith.fieldName(...)`
class _$CookingTypeCWProxyImpl implements _$CookingTypeCWProxy {
  final CookingType _value;

  const _$CookingTypeCWProxyImpl(this._value);

  @override
  CookingType id(int id) => this(id: id);

  @override
  CookingType isSelected(bool isSelected) => this(isSelected: isSelected);

  @override
  CookingType name(String? name) => this(name: name);

  @override
  CookingType priority(int? priority) => this(priority: priority);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CookingType(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CookingType(...).copyWith(id: 12, name: "My name")
  /// ````
  CookingType call({
    Object? id = const $CopyWithPlaceholder(),
    Object? isSelected = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? priority = const $CopyWithPlaceholder(),
  }) {
    return CookingType(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      isSelected: isSelected == const $CopyWithPlaceholder() || isSelected == null
          ? _value.isSelected
          // ignore: cast_nullable_to_non_nullable
          : isSelected as bool,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      priority: priority == const $CopyWithPlaceholder()
          ? _value.priority
          // ignore: cast_nullable_to_non_nullable
          : priority as int?,
    );
  }
}

extension $CookingTypeCopyWith on CookingType {
  /// Returns a callable class that can be used as follows: `instanceOfCookingType.copyWith(...)` or like so:`instanceOfCookingType.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CookingTypeCWProxy get copyWith => _$CookingTypeCWProxyImpl(this);
}

abstract class _$FFFoodCWProxy {
  FFFood foodId(int foodId);

  FFFood isSelected(bool isSelected);

  FFFood name(String? name);

  FFFood price(double price);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFood(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFood(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFood call({
    int? foodId,
    bool? isSelected,
    String? name,
    double? price,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFFood.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFFood.copyWith.fieldName(...)`
class _$FFFoodCWProxyImpl implements _$FFFoodCWProxy {
  final FFFood _value;

  const _$FFFoodCWProxyImpl(this._value);

  @override
  FFFood foodId(int foodId) => this(foodId: foodId);

  @override
  FFFood isSelected(bool isSelected) => this(isSelected: isSelected);

  @override
  FFFood name(String? name) => this(name: name);

  @override
  FFFood price(double price) => this(price: price);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFood(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFood(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFood call({
    Object? foodId = const $CopyWithPlaceholder(),
    Object? isSelected = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
  }) {
    return FFFood(
      foodId: foodId == const $CopyWithPlaceholder() || foodId == null
          ? _value.foodId
          // ignore: cast_nullable_to_non_nullable
          : foodId as int,
      isSelected: isSelected == const $CopyWithPlaceholder() || isSelected == null
          ? _value.isSelected
          // ignore: cast_nullable_to_non_nullable
          : isSelected as bool,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      price: price == const $CopyWithPlaceholder() || price == null
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as double,
    );
  }
}

extension $FFFoodCopyWith on FFFood {
  /// Returns a callable class that can be used as follows: `instanceOfFFFood.copyWith(...)` or like so:`instanceOfFFFood.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFFoodCWProxy get copyWith => _$FFFoodCWProxyImpl(this);
}

abstract class _$FoodlistsDefinitionCWProxy {
  FoodlistsDefinition canAddQuantity(int canAddQuantity);

  FoodlistsDefinition foodListId(int foodListId);

  FoodlistsDefinition maxQty(int maxQty);

  FoodlistsDefinition minQty(int minQty);

  FoodlistsDefinition mode(Mode mode);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FoodlistsDefinition(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FoodlistsDefinition(...).copyWith(id: 12, name: "My name")
  /// ````
  FoodlistsDefinition call({
    int? canAddQuantity,
    int? foodListId,
    int? maxQty,
    int? minQty,
    Mode? mode,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFoodlistsDefinition.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFoodlistsDefinition.copyWith.fieldName(...)`
class _$FoodlistsDefinitionCWProxyImpl implements _$FoodlistsDefinitionCWProxy {
  final FoodlistsDefinition _value;

  const _$FoodlistsDefinitionCWProxyImpl(this._value);

  @override
  FoodlistsDefinition canAddQuantity(int canAddQuantity) => this(canAddQuantity: canAddQuantity);

  @override
  FoodlistsDefinition foodListId(int foodListId) => this(foodListId: foodListId);

  @override
  FoodlistsDefinition maxQty(int maxQty) => this(maxQty: maxQty);

  @override
  FoodlistsDefinition minQty(int minQty) => this(minQty: minQty);

  @override
  FoodlistsDefinition mode(Mode mode) => this(mode: mode);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FoodlistsDefinition(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FoodlistsDefinition(...).copyWith(id: 12, name: "My name")
  /// ````
  FoodlistsDefinition call({
    Object? canAddQuantity = const $CopyWithPlaceholder(),
    Object? foodListId = const $CopyWithPlaceholder(),
    Object? maxQty = const $CopyWithPlaceholder(),
    Object? minQty = const $CopyWithPlaceholder(),
    Object? mode = const $CopyWithPlaceholder(),
  }) {
    return FoodlistsDefinition(
      canAddQuantity: canAddQuantity == const $CopyWithPlaceholder() || canAddQuantity == null
          ? _value.canAddQuantity
          // ignore: cast_nullable_to_non_nullable
          : canAddQuantity as int,
      foodListId: foodListId == const $CopyWithPlaceholder() || foodListId == null
          ? _value.foodListId
          // ignore: cast_nullable_to_non_nullable
          : foodListId as int,
      maxQty: maxQty == const $CopyWithPlaceholder() || maxQty == null
          ? _value.maxQty
          // ignore: cast_nullable_to_non_nullable
          : maxQty as int,
      minQty: minQty == const $CopyWithPlaceholder() || minQty == null
          ? _value.minQty
          // ignore: cast_nullable_to_non_nullable
          : minQty as int,
      mode: mode == const $CopyWithPlaceholder() || mode == null
          ? _value.mode
          // ignore: cast_nullable_to_non_nullable
          : mode as Mode,
    );
  }
}

extension $FoodlistsDefinitionCopyWith on FoodlistsDefinition {
  /// Returns a callable class that can be used as follows: `instanceOfFoodlistsDefinition.copyWith(...)` or like so:`instanceOfFoodlistsDefinition.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FoodlistsDefinitionCWProxy get copyWith => _$FoodlistsDefinitionCWProxyImpl(this);
}

abstract class _$FoodlistCWProxy {
  Foodlist alternative(bool? alternative);

  Foodlist foodIds(List<int> foodIds);

  Foodlist foods(List<FFFoodDetail>? foods);

  Foodlist hidden(bool? hidden);

  Foodlist id(int? id);

  Foodlist name(String? name);

  Foodlist priceListIds(List<int> priceListIds);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Foodlist(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Foodlist(...).copyWith(id: 12, name: "My name")
  /// ````
  Foodlist call({
    bool? alternative,
    List<int>? foodIds,
    List<FFFoodDetail>? foods,
    bool? hidden,
    int? id,
    String? name,
    List<int>? priceListIds,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFoodlist.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFoodlist.copyWith.fieldName(...)`
class _$FoodlistCWProxyImpl implements _$FoodlistCWProxy {
  final Foodlist _value;

  const _$FoodlistCWProxyImpl(this._value);

  @override
  Foodlist alternative(bool? alternative) => this(alternative: alternative);

  @override
  Foodlist foodIds(List<int> foodIds) => this(foodIds: foodIds);

  @override
  Foodlist foods(List<FFFoodDetail>? foods) => this(foods: foods);

  @override
  Foodlist hidden(bool? hidden) => this(hidden: hidden);

  @override
  Foodlist id(int? id) => this(id: id);

  @override
  Foodlist name(String? name) => this(name: name);

  @override
  Foodlist priceListIds(List<int> priceListIds) => this(priceListIds: priceListIds);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Foodlist(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Foodlist(...).copyWith(id: 12, name: "My name")
  /// ````
  Foodlist call({
    Object? alternative = const $CopyWithPlaceholder(),
    Object? foodIds = const $CopyWithPlaceholder(),
    Object? foods = const $CopyWithPlaceholder(),
    Object? hidden = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? priceListIds = const $CopyWithPlaceholder(),
  }) {
    return Foodlist(
      alternative: alternative == const $CopyWithPlaceholder()
          ? _value.alternative
          // ignore: cast_nullable_to_non_nullable
          : alternative as bool?,
      foodIds: foodIds == const $CopyWithPlaceholder() || foodIds == null
          ? _value.foodIds
          // ignore: cast_nullable_to_non_nullable
          : foodIds as List<int>,
      foods: foods == const $CopyWithPlaceholder()
          ? _value.foods
          // ignore: cast_nullable_to_non_nullable
          : foods as List<FFFoodDetail>?,
      hidden: hidden == const $CopyWithPlaceholder()
          ? _value.hidden
          // ignore: cast_nullable_to_non_nullable
          : hidden as bool?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      priceListIds: priceListIds == const $CopyWithPlaceholder() || priceListIds == null
          ? _value.priceListIds
          // ignore: cast_nullable_to_non_nullable
          : priceListIds as List<int>,
    );
  }
}

extension $FoodlistCopyWith on Foodlist {
  /// Returns a callable class that can be used as follows: `instanceOfFoodlist.copyWith(...)` or like so:`instanceOfFoodlist.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FoodlistCWProxy get copyWith => _$FoodlistCWProxyImpl(this);
}

abstract class _$FFFoodDetailCWProxy {
  FFFoodDetail allergenIds(List<int> allergenIds);

  FFFoodDetail calories(int? calories);

  FFFoodDetail canBeDeleted(bool? canBeDeleted);

  FFFoodDetail categoryName(String? categoryName);

  FFFoodDetail foodCategoryId(int? foodCategoryId);

  FFFoodDetail forList(bool? forList);

  FFFoodDetail fromPlatForm(bool? fromPlatForm);

  FFFoodDetail hidden(bool? hidden);

  FFFoodDetail hiddenPrice(bool hiddenPrice);

  FFFoodDetail id(int? id);

  FFFoodDetail isFree(bool isFree);

  FFFoodDetail name(String? name);

  FFFoodDetail productId(int? productId);

  FFFoodDetail productsCounts(int? productsCounts);

  FFFoodDetail selected(bool selected);

  FFFoodDetail selectionPriority(int? selectionPriority);

  FFFoodDetail shortName(String? shortName);

  FFFoodDetail tags(String? tags);

  FFFoodDetail timeSelected(DateTime? timeSelected);

  FFFoodDetail translations(List<FFTranslation> translations);

  FFFoodDetail variationPrice(double? variationPrice);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFoodDetail(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFoodDetail(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFoodDetail call({
    List<int>? allergenIds,
    int? calories,
    bool? canBeDeleted,
    String? categoryName,
    int? foodCategoryId,
    bool? forList,
    bool? fromPlatForm,
    bool? hidden,
    bool? hiddenPrice,
    int? id,
    bool? isFree,
    String? name,
    int? productId,
    int? productsCounts,
    bool? selected,
    int? selectionPriority,
    String? shortName,
    String? tags,
    DateTime? timeSelected,
    List<FFTranslation>? translations,
    double? variationPrice,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFFoodDetail.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFFoodDetail.copyWith.fieldName(...)`
class _$FFFoodDetailCWProxyImpl implements _$FFFoodDetailCWProxy {
  final FFFoodDetail _value;

  const _$FFFoodDetailCWProxyImpl(this._value);

  @override
  FFFoodDetail allergenIds(List<int> allergenIds) => this(allergenIds: allergenIds);

  @override
  FFFoodDetail calories(int? calories) => this(calories: calories);

  @override
  FFFoodDetail canBeDeleted(bool? canBeDeleted) => this(canBeDeleted: canBeDeleted);

  @override
  FFFoodDetail categoryName(String? categoryName) => this(categoryName: categoryName);

  @override
  FFFoodDetail foodCategoryId(int? foodCategoryId) => this(foodCategoryId: foodCategoryId);

  @override
  FFFoodDetail forList(bool? forList) => this(forList: forList);

  @override
  FFFoodDetail fromPlatForm(bool? fromPlatForm) => this(fromPlatForm: fromPlatForm);

  @override
  FFFoodDetail hidden(bool? hidden) => this(hidden: hidden);

  @override
  FFFoodDetail hiddenPrice(bool hiddenPrice) => this(hiddenPrice: hiddenPrice);

  @override
  FFFoodDetail id(int? id) => this(id: id);

  @override
  FFFoodDetail isFree(bool isFree) => this(isFree: isFree);

  @override
  FFFoodDetail name(String? name) => this(name: name);

  @override
  FFFoodDetail productId(int? productId) => this(productId: productId);

  @override
  FFFoodDetail productsCounts(int? productsCounts) => this(productsCounts: productsCounts);

  @override
  FFFoodDetail selected(bool selected) => this(selected: selected);

  @override
  FFFoodDetail selectionPriority(int? selectionPriority) =>
      this(selectionPriority: selectionPriority);

  @override
  FFFoodDetail shortName(String? shortName) => this(shortName: shortName);

  @override
  FFFoodDetail tags(String? tags) => this(tags: tags);

  @override
  FFFoodDetail timeSelected(DateTime? timeSelected) => this(timeSelected: timeSelected);

  @override
  FFFoodDetail translations(List<FFTranslation> translations) => this(translations: translations);

  @override
  FFFoodDetail variationPrice(double? variationPrice) => this(variationPrice: variationPrice);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFoodDetail(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFoodDetail(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFoodDetail call({
    Object? allergenIds = const $CopyWithPlaceholder(),
    Object? calories = const $CopyWithPlaceholder(),
    Object? canBeDeleted = const $CopyWithPlaceholder(),
    Object? categoryName = const $CopyWithPlaceholder(),
    Object? foodCategoryId = const $CopyWithPlaceholder(),
    Object? forList = const $CopyWithPlaceholder(),
    Object? fromPlatForm = const $CopyWithPlaceholder(),
    Object? hidden = const $CopyWithPlaceholder(),
    Object? hiddenPrice = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? isFree = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? productId = const $CopyWithPlaceholder(),
    Object? productsCounts = const $CopyWithPlaceholder(),
    Object? selected = const $CopyWithPlaceholder(),
    Object? selectionPriority = const $CopyWithPlaceholder(),
    Object? shortName = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? timeSelected = const $CopyWithPlaceholder(),
    Object? translations = const $CopyWithPlaceholder(),
    Object? variationPrice = const $CopyWithPlaceholder(),
  }) {
    return FFFoodDetail(
      allergenIds: allergenIds == const $CopyWithPlaceholder() || allergenIds == null
          ? _value.allergenIds
          // ignore: cast_nullable_to_non_nullable
          : allergenIds as List<int>,
      calories: calories == const $CopyWithPlaceholder()
          ? _value.calories
          // ignore: cast_nullable_to_non_nullable
          : calories as int?,
      canBeDeleted: canBeDeleted == const $CopyWithPlaceholder()
          ? _value.canBeDeleted
          // ignore: cast_nullable_to_non_nullable
          : canBeDeleted as bool?,
      categoryName: categoryName == const $CopyWithPlaceholder()
          ? _value.categoryName
          // ignore: cast_nullable_to_non_nullable
          : categoryName as String?,
      foodCategoryId: foodCategoryId == const $CopyWithPlaceholder()
          ? _value.foodCategoryId
          // ignore: cast_nullable_to_non_nullable
          : foodCategoryId as int?,
      forList: forList == const $CopyWithPlaceholder()
          ? _value.forList
          // ignore: cast_nullable_to_non_nullable
          : forList as bool?,
      fromPlatForm: fromPlatForm == const $CopyWithPlaceholder()
          ? _value.fromPlatForm
          // ignore: cast_nullable_to_non_nullable
          : fromPlatForm as bool?,
      hidden: hidden == const $CopyWithPlaceholder()
          ? _value.hidden
          // ignore: cast_nullable_to_non_nullable
          : hidden as bool?,
      hiddenPrice: hiddenPrice == const $CopyWithPlaceholder() || hiddenPrice == null
          ? _value.hiddenPrice
          // ignore: cast_nullable_to_non_nullable
          : hiddenPrice as bool,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      isFree: isFree == const $CopyWithPlaceholder() || isFree == null
          ? _value.isFree
          // ignore: cast_nullable_to_non_nullable
          : isFree as bool,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      productId: productId == const $CopyWithPlaceholder()
          ? _value.productId
          // ignore: cast_nullable_to_non_nullable
          : productId as int?,
      productsCounts: productsCounts == const $CopyWithPlaceholder()
          ? _value.productsCounts
          // ignore: cast_nullable_to_non_nullable
          : productsCounts as int?,
      selected: selected == const $CopyWithPlaceholder() || selected == null
          ? _value.selected
          // ignore: cast_nullable_to_non_nullable
          : selected as bool,
      selectionPriority: selectionPriority == const $CopyWithPlaceholder()
          ? _value.selectionPriority
          // ignore: cast_nullable_to_non_nullable
          : selectionPriority as int?,
      shortName: shortName == const $CopyWithPlaceholder()
          ? _value.shortName
          // ignore: cast_nullable_to_non_nullable
          : shortName as String?,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as String?,
      timeSelected: timeSelected == const $CopyWithPlaceholder()
          ? _value.timeSelected
          // ignore: cast_nullable_to_non_nullable
          : timeSelected as DateTime?,
      translations: translations == const $CopyWithPlaceholder() || translations == null
          ? _value.translations
          // ignore: cast_nullable_to_non_nullable
          : translations as List<FFTranslation>,
      variationPrice: variationPrice == const $CopyWithPlaceholder()
          ? _value.variationPrice
          // ignore: cast_nullable_to_non_nullable
          : variationPrice as double?,
    );
  }
}

extension $FFFoodDetailCopyWith on FFFoodDetail {
  /// Returns a callable class that can be used as follows: `instanceOfFFFoodDetail.copyWith(...)` or like so:`instanceOfFFFoodDetail.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFFoodDetailCWProxy get copyWith => _$FFFoodDetailCWProxyImpl(this);
}

abstract class _$FFTranslationCWProxy {
  FFTranslation description(String? description);

  FFTranslation language(int? language);

  FFTranslation name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFTranslation(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFTranslation(...).copyWith(id: 12, name: "My name")
  /// ````
  FFTranslation call({
    String? description,
    int? language,
    String? name,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFTranslation.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFTranslation.copyWith.fieldName(...)`
class _$FFTranslationCWProxyImpl implements _$FFTranslationCWProxy {
  final FFTranslation _value;

  const _$FFTranslationCWProxyImpl(this._value);

  @override
  FFTranslation description(String? description) => this(description: description);

  @override
  FFTranslation language(int? language) => this(language: language);

  @override
  FFTranslation name(String? name) => this(name: name);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFTranslation(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFTranslation(...).copyWith(id: 12, name: "My name")
  /// ````
  FFTranslation call({
    Object? description = const $CopyWithPlaceholder(),
    Object? language = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return FFTranslation(
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      language: language == const $CopyWithPlaceholder()
          ? _value.language
          // ignore: cast_nullable_to_non_nullable
          : language as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $FFTranslationCopyWith on FFTranslation {
  /// Returns a callable class that can be used as follows: `instanceOfFFTranslation.copyWith(...)` or like so:`instanceOfFFTranslation.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFTranslationCWProxy get copyWith => _$FFTranslationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int,
      formatName: json['formatName'] as String?,
      productFormats: (json['productFormats'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      name: json['name'] as String?,
      preferredCookingTypeId: json['preferredCookingTypeId'] as int?,
      minOrdinableQuantity: json['minOrdinableQuantity'] as int? ?? 0,
      newPrice: (json['newPrice'] as num?)?.toDouble() ?? 0,
      price: (json['price'] as num).toDouble(),
      sectionId: json['sectionId'] as int? ?? 0,
      ingredients: (json['ingredients'] as List<dynamic>?)
              ?.map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      alternatives: (json['alternatives'] as List<dynamic>?)
              ?.map((e) => Alternative.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      cookingTypes: (json['cookingTypes'] as List<dynamic>?)
              ?.map((e) => CookingType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      foodListsDefinition: (json['foodListsDefinition'] as List<dynamic>?)
              ?.map((e) => FoodlistsDefinition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      foodlists: (json['foodlists'] as List<dynamic>?)
              ?.map((e) => Foodlist.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ProductToJson(Product instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('formatName', instance.formatName);
  writeNotNull('preferredCookingTypeId', instance.preferredCookingTypeId);
  val['minOrdinableQuantity'] = instance.minOrdinableQuantity;
  val['newPrice'] = instance.newPrice;
  val['price'] = instance.price;
  val['sectionId'] = instance.sectionId;
  val['ingredients'] = instance.ingredients.map((e) => e.toJson()).toList();
  val['alternatives'] = instance.alternatives.map((e) => e.toJson()).toList();
  val['cookingTypes'] = instance.cookingTypes.map((e) => e.toJson()).toList();
  val['foodlists'] = instance.foodlists.map((e) => e.toJson()).toList();
  val['foodListsDefinition'] = instance.foodListsDefinition.map((e) => e.toJson()).toList();
  val['productFormats'] = instance.productFormats.map((e) => e.toJson()).toList();
  return val;
}

Ingredient _$IngredientFromJson(Map<String, dynamic> json) => Ingredient(
      foodId: json['foodId'] as int,
      name: json['name'] as String?,
      isMain: json['isMain'] as bool? ?? false,
      selected: json['selected'] as bool? ?? false,
      price: (json['price'] as num).toDouble(),
      canRemove: json['canRemove'] as bool,
      canAddQuantity: json['canAddQuantity'] as int,
      variationType: json['variationType'] as int?,
      localVariationPrice: (json['localVariationPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$IngredientToJson(Ingredient instance) {
  final val = <String, dynamic>{
    'foodId': instance.foodId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['isMain'] = instance.isMain;
  val['selected'] = instance.selected;
  val['price'] = instance.price;
  val['canRemove'] = instance.canRemove;
  val['canAddQuantity'] = instance.canAddQuantity;
  writeNotNull('variationType', instance.variationType);
  writeNotNull('localVariationPrice', instance.localVariationPrice);
  return val;
}

Alternative _$AlternativeFromJson(Map<String, dynamic> json) => Alternative(
      foodListId: json['foodListId'] as int,
      foodListName: json['foodListName'] as String?,
      defaultFoodId: json['defaultFoodId'] as int,
      foods: (json['foods'] as List<dynamic>?)
              ?.map((e) => FFFood.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AlternativeToJson(Alternative instance) {
  final val = <String, dynamic>{
    'foodListId': instance.foodListId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('foodListName', instance.foodListName);
  val['defaultFoodId'] = instance.defaultFoodId;
  val['foods'] = instance.foods.map((e) => e.toJson()).toList();
  return val;
}

CookingType _$CookingTypeFromJson(Map<String, dynamic> json) => CookingType(
      id: json['id'] as int,
      name: json['name'] as String?,
      priority: json['priority'] as int?,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$CookingTypeToJson(CookingType instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('priority', instance.priority);
  val['isSelected'] = instance.isSelected;
  return val;
}

FFFood _$FFFoodFromJson(Map<String, dynamic> json) => FFFood(
      foodId: json['foodId'] as int,
      name: json['name'] as String?,
      price: (json['price'] as num).toDouble(),
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$FFFoodToJson(FFFood instance) {
  final val = <String, dynamic>{
    'foodId': instance.foodId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['price'] = instance.price;
  val['isSelected'] = instance.isSelected;
  return val;
}

FoodlistsDefinition _$FoodlistsDefinitionFromJson(Map<String, dynamic> json) => FoodlistsDefinition(
      foodListId: json['foodListId'] as int,
      maxQty: json['maxQty'] as int,
      minQty: json['minQty'] as int,
      mode: $enumDecode(_$ModeEnumMap, json['mode']),
      canAddQuantity: json['canAddQuantity'] as int,
    );

Map<String, dynamic> _$FoodlistsDefinitionToJson(FoodlistsDefinition instance) => <String, dynamic>{
      'canAddQuantity': instance.canAddQuantity,
      'maxQty': instance.maxQty,
      'minQty': instance.minQty,
      'foodListId': instance.foodListId,
      'mode': _$ModeEnumMap[instance.mode]!,
    };

const _$ModeEnumMap = {
  Mode.freeChoise: 0,
  Mode.maxIngredientWithCost: 1,
  Mode.maxIngredientFree: 2,
  Mode.maxFreeAndOtherWithCost: 3,
};

Foodlist _$FoodlistFromJson(Map<String, dynamic> json) => Foodlist(
      foods: (json['foods'] as List<dynamic>?)
          ?.map((e) => FFFoodDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      name: json['name'] as String?,
      priceListIds:
          (json['priceListIds'] as List<dynamic>?)?.map((e) => e as int).toList() ?? const [],
      foodIds: (json['foodIds'] as List<dynamic>?)?.map((e) => e as int).toList() ?? const [],
      alternative: json['alternative'] as bool?,
      hidden: json['hidden'] as bool?,
    );

Map<String, dynamic> _$FoodlistToJson(Foodlist instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('foods', instance.foods?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  val['priceListIds'] = instance.priceListIds;
  val['foodIds'] = instance.foodIds;
  writeNotNull('alternative', instance.alternative);
  writeNotNull('hidden', instance.hidden);
  return val;
}

FFFoodDetail _$FFFoodDetailFromJson(Map<String, dynamic> json) => FFFoodDetail(
      categoryName: json['categoryName'] as String?,
      allergenIds:
          (json['allergenIds'] as List<dynamic>?)?.map((e) => e as int).toList() ?? const [],
      productsCounts: json['productsCounts'] as int?,
      canBeDeleted: json['canBeDeleted'] as bool?,
      forList: json['forList'] as bool?,
      productId: json['productId'] as int?,
      fromPlatForm: json['fromPlatForm'] as bool?,
      translations: (json['translations'] as List<dynamic>?)
              ?.map((e) => FFTranslation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isFree: json['isFree'] as bool? ?? false,
      selected: json['selected'] as bool? ?? false,
      hiddenPrice: json['hiddenPrice'] as bool? ?? false,
      id: json['id'] as int?,
      name: json['name'] as String?,
      shortName: json['shortName'] as String?,
      variationPrice: (json['variationPrice'] as num?)?.toDouble(),
      calories: json['calories'] as int?,
      foodCategoryId: json['foodCategoryId'] as int?,
      tags: json['tags'] as String?,
      hidden: json['hidden'] as bool?,
      selectionPriority: json['selectionPriority'] as int?,
      timeSelected:
          json['timeSelected'] == null ? null : DateTime.parse(json['timeSelected'] as String),
    );

Map<String, dynamic> _$FFFoodDetailToJson(FFFoodDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('selectionPriority', instance.selectionPriority);
  writeNotNull('categoryName', instance.categoryName);
  val['allergenIds'] = instance.allergenIds;
  writeNotNull('productsCounts', instance.productsCounts);
  writeNotNull('canBeDeleted', instance.canBeDeleted);
  writeNotNull('forList', instance.forList);
  val['selected'] = instance.selected;
  val['isFree'] = instance.isFree;
  val['hiddenPrice'] = instance.hiddenPrice;
  writeNotNull('productId', instance.productId);
  writeNotNull('fromPlatForm', instance.fromPlatForm);
  val['translations'] = instance.translations.map((e) => e.toJson()).toList();
  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('shortName', instance.shortName);
  writeNotNull('variationPrice', instance.variationPrice);
  writeNotNull('calories', instance.calories);
  writeNotNull('foodCategoryId', instance.foodCategoryId);
  writeNotNull('tags', instance.tags);
  writeNotNull('hidden', instance.hidden);
  writeNotNull('timeSelected', instance.timeSelected?.toIso8601String());
  return val;
}

FFTranslation _$FFTranslationFromJson(Map<String, dynamic> json) => FFTranslation(
      language: json['language'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$FFTranslationToJson(FFTranslation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('language', instance.language);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  return val;
}
