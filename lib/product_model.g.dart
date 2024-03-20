// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FFProductCWProxy {
  FFProduct alternatives(List<FFAlternative> alternatives);

  FFProduct cookingTypes(List<FFCookingType> cookingTypes);

  FFProduct foodListsDefinition(
      List<FFFoodListsDefinition> foodListsDefinition);

  FFProduct formatId(int? formatId);

  FFProduct formatName(String? formatName);

  FFProduct id(int id);

  FFProduct ingredients(List<FFIngredient> ingredients);

  FFProduct minOrdinableQuantity(int minOrdinableQuantity);

  FFProduct name(String? name);

  FFProduct newPrice(double newPrice);

  FFProduct preferredCookingTypeId(int? preferredCookingTypeId);

  FFProduct price(double price);

  FFProduct productFormats(List<FFProduct> productFormats);

  FFProduct sectionId(int sectionId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFProduct(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFProduct(...).copyWith(id: 12, name: "My name")
  /// ````
  FFProduct call({
    List<FFAlternative>? alternatives,
    List<FFCookingType>? cookingTypes,
    List<FFFoodListsDefinition>? foodListsDefinition,
    int? formatId,
    String? formatName,
    int? id,
    List<FFIngredient>? ingredients,
    int? minOrdinableQuantity,
    String? name,
    double? newPrice,
    int? preferredCookingTypeId,
    double? price,
    List<FFProduct>? productFormats,
    int? sectionId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFProduct.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFProduct.copyWith.fieldName(...)`
class _$FFProductCWProxyImpl implements _$FFProductCWProxy {
  final FFProduct _value;

  const _$FFProductCWProxyImpl(this._value);

  @override
  FFProduct alternatives(List<FFAlternative> alternatives) =>
      this(alternatives: alternatives);

  @override
  FFProduct cookingTypes(List<FFCookingType> cookingTypes) =>
      this(cookingTypes: cookingTypes);

  @override
  FFProduct foodListsDefinition(
          List<FFFoodListsDefinition> foodListsDefinition) =>
      this(foodListsDefinition: foodListsDefinition);

  @override
  FFProduct formatId(int? formatId) => this(formatId: formatId);

  @override
  FFProduct formatName(String? formatName) => this(formatName: formatName);

  @override
  FFProduct id(int id) => this(id: id);

  @override
  FFProduct ingredients(List<FFIngredient> ingredients) =>
      this(ingredients: ingredients);

  @override
  FFProduct minOrdinableQuantity(int minOrdinableQuantity) =>
      this(minOrdinableQuantity: minOrdinableQuantity);

  @override
  FFProduct name(String? name) => this(name: name);

  @override
  FFProduct newPrice(double newPrice) => this(newPrice: newPrice);

  @override
  FFProduct preferredCookingTypeId(int? preferredCookingTypeId) =>
      this(preferredCookingTypeId: preferredCookingTypeId);

  @override
  FFProduct price(double price) => this(price: price);

  @override
  FFProduct productFormats(List<FFProduct> productFormats) =>
      this(productFormats: productFormats);

  @override
  FFProduct sectionId(int sectionId) => this(sectionId: sectionId);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFProduct(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFProduct(...).copyWith(id: 12, name: "My name")
  /// ````
  FFProduct call({
    Object? alternatives = const $CopyWithPlaceholder(),
    Object? cookingTypes = const $CopyWithPlaceholder(),
    Object? foodListsDefinition = const $CopyWithPlaceholder(),
    Object? formatId = const $CopyWithPlaceholder(),
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
    return FFProduct(
      alternatives:
          alternatives == const $CopyWithPlaceholder() || alternatives == null
              ? _value.alternatives
              // ignore: cast_nullable_to_non_nullable
              : alternatives as List<FFAlternative>,
      cookingTypes:
          cookingTypes == const $CopyWithPlaceholder() || cookingTypes == null
              ? _value.cookingTypes
              // ignore: cast_nullable_to_non_nullable
              : cookingTypes as List<FFCookingType>,
      foodListsDefinition:
          foodListsDefinition == const $CopyWithPlaceholder() ||
                  foodListsDefinition == null
              ? _value.foodListsDefinition
              // ignore: cast_nullable_to_non_nullable
              : foodListsDefinition as List<FFFoodListsDefinition>,
      formatId: formatId == const $CopyWithPlaceholder()
          ? _value.formatId
          // ignore: cast_nullable_to_non_nullable
          : formatId as int?,
      formatName: formatName == const $CopyWithPlaceholder()
          ? _value.formatName
          // ignore: cast_nullable_to_non_nullable
          : formatName as String?,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      ingredients:
          ingredients == const $CopyWithPlaceholder() || ingredients == null
              ? _value.ingredients
              // ignore: cast_nullable_to_non_nullable
              : ingredients as List<FFIngredient>,
      minOrdinableQuantity:
          minOrdinableQuantity == const $CopyWithPlaceholder() ||
                  minOrdinableQuantity == null
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
      preferredCookingTypeId:
          preferredCookingTypeId == const $CopyWithPlaceholder()
              ? _value.preferredCookingTypeId
              // ignore: cast_nullable_to_non_nullable
              : preferredCookingTypeId as int?,
      price: price == const $CopyWithPlaceholder() || price == null
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as double,
      productFormats: productFormats == const $CopyWithPlaceholder() ||
              productFormats == null
          ? _value.productFormats
          // ignore: cast_nullable_to_non_nullable
          : productFormats as List<FFProduct>,
      sectionId: sectionId == const $CopyWithPlaceholder() || sectionId == null
          ? _value.sectionId
          // ignore: cast_nullable_to_non_nullable
          : sectionId as int,
    );
  }
}

extension $FFProductCopyWith on FFProduct {
  /// Returns a callable class that can be used as follows: `instanceOfFFProduct.copyWith(...)` or like so:`instanceOfFFProduct.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFProductCWProxy get copyWith => _$FFProductCWProxyImpl(this);
}

abstract class _$FFIngredientCWProxy {
  FFIngredient canAddQuantity(int canAddQuantity);

  FFIngredient canRemove(bool canRemove);

  FFIngredient foodId(int foodId);

  FFIngredient isMain(bool isMain);

  FFIngredient localVariationPrice(double? localVariationPrice);

  FFIngredient name(String? name);

  FFIngredient price(double price);

  FFIngredient selected(bool selected);

  FFIngredient variationType(int? variationType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFIngredient(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFIngredient(...).copyWith(id: 12, name: "My name")
  /// ````
  FFIngredient call({
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

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFIngredient.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFIngredient.copyWith.fieldName(...)`
class _$FFIngredientCWProxyImpl implements _$FFIngredientCWProxy {
  final FFIngredient _value;

  const _$FFIngredientCWProxyImpl(this._value);

  @override
  FFIngredient canAddQuantity(int canAddQuantity) =>
      this(canAddQuantity: canAddQuantity);

  @override
  FFIngredient canRemove(bool canRemove) => this(canRemove: canRemove);

  @override
  FFIngredient foodId(int foodId) => this(foodId: foodId);

  @override
  FFIngredient isMain(bool isMain) => this(isMain: isMain);

  @override
  FFIngredient localVariationPrice(double? localVariationPrice) =>
      this(localVariationPrice: localVariationPrice);

  @override
  FFIngredient name(String? name) => this(name: name);

  @override
  FFIngredient price(double price) => this(price: price);

  @override
  FFIngredient selected(bool selected) => this(selected: selected);

  @override
  FFIngredient variationType(int? variationType) =>
      this(variationType: variationType);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFIngredient(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFIngredient(...).copyWith(id: 12, name: "My name")
  /// ````
  FFIngredient call({
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
    return FFIngredient(
      canAddQuantity: canAddQuantity == const $CopyWithPlaceholder() ||
              canAddQuantity == null
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

extension $FFIngredientCopyWith on FFIngredient {
  /// Returns a callable class that can be used as follows: `instanceOfFFIngredient.copyWith(...)` or like so:`instanceOfFFIngredient.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFIngredientCWProxy get copyWith => _$FFIngredientCWProxyImpl(this);
}

abstract class _$FFAlternativeCWProxy {
  FFAlternative defaultFoodId(int defaultFoodId);

  FFAlternative foodListId(int foodListId);

  FFAlternative foodListName(String? foodListName);

  FFAlternative foods(List<FFFood> foods);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFAlternative(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFAlternative(...).copyWith(id: 12, name: "My name")
  /// ````
  FFAlternative call({
    int? defaultFoodId,
    int? foodListId,
    String? foodListName,
    List<FFFood>? foods,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFAlternative.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFAlternative.copyWith.fieldName(...)`
class _$FFAlternativeCWProxyImpl implements _$FFAlternativeCWProxy {
  final FFAlternative _value;

  const _$FFAlternativeCWProxyImpl(this._value);

  @override
  FFAlternative defaultFoodId(int defaultFoodId) =>
      this(defaultFoodId: defaultFoodId);

  @override
  FFAlternative foodListId(int foodListId) => this(foodListId: foodListId);

  @override
  FFAlternative foodListName(String? foodListName) =>
      this(foodListName: foodListName);

  @override
  FFAlternative foods(List<FFFood> foods) => this(foods: foods);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFAlternative(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFAlternative(...).copyWith(id: 12, name: "My name")
  /// ````
  FFAlternative call({
    Object? defaultFoodId = const $CopyWithPlaceholder(),
    Object? foodListId = const $CopyWithPlaceholder(),
    Object? foodListName = const $CopyWithPlaceholder(),
    Object? foods = const $CopyWithPlaceholder(),
  }) {
    return FFAlternative(
      defaultFoodId:
          defaultFoodId == const $CopyWithPlaceholder() || defaultFoodId == null
              ? _value.defaultFoodId
              // ignore: cast_nullable_to_non_nullable
              : defaultFoodId as int,
      foodListId:
          foodListId == const $CopyWithPlaceholder() || foodListId == null
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

extension $FFAlternativeCopyWith on FFAlternative {
  /// Returns a callable class that can be used as follows: `instanceOfFFAlternative.copyWith(...)` or like so:`instanceOfFFAlternative.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFAlternativeCWProxy get copyWith => _$FFAlternativeCWProxyImpl(this);
}

abstract class _$FFCookingTypeCWProxy {
  FFCookingType id(int id);

  FFCookingType isSelected(bool isSelected);

  FFCookingType name(String? name);

  FFCookingType priority(int priority);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFCookingType(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFCookingType(...).copyWith(id: 12, name: "My name")
  /// ````
  FFCookingType call({
    int? id,
    bool? isSelected,
    String? name,
    int? priority,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFCookingType.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFCookingType.copyWith.fieldName(...)`
class _$FFCookingTypeCWProxyImpl implements _$FFCookingTypeCWProxy {
  final FFCookingType _value;

  const _$FFCookingTypeCWProxyImpl(this._value);

  @override
  FFCookingType id(int id) => this(id: id);

  @override
  FFCookingType isSelected(bool isSelected) => this(isSelected: isSelected);

  @override
  FFCookingType name(String? name) => this(name: name);

  @override
  FFCookingType priority(int priority) => this(priority: priority);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFCookingType(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFCookingType(...).copyWith(id: 12, name: "My name")
  /// ````
  FFCookingType call({
    Object? id = const $CopyWithPlaceholder(),
    Object? isSelected = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? priority = const $CopyWithPlaceholder(),
  }) {
    return FFCookingType(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      isSelected:
          isSelected == const $CopyWithPlaceholder() || isSelected == null
              ? _value.isSelected
              // ignore: cast_nullable_to_non_nullable
              : isSelected as bool,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      priority: priority == const $CopyWithPlaceholder() || priority == null
          ? _value.priority
          // ignore: cast_nullable_to_non_nullable
          : priority as int,
    );
  }
}

extension $FFCookingTypeCopyWith on FFCookingType {
  /// Returns a callable class that can be used as follows: `instanceOfFFCookingType.copyWith(...)` or like so:`instanceOfFFCookingType.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFCookingTypeCWProxy get copyWith => _$FFCookingTypeCWProxyImpl(this);
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
      isSelected:
          isSelected == const $CopyWithPlaceholder() || isSelected == null
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

abstract class _$FFFoodListsDefinitionCWProxy {
  FFFoodListsDefinition canAddQuantity(int canAddQuantity);

  FFFoodListsDefinition foods(List<FFFoodListDefinitionDetail> foods);

  FFFoodListsDefinition id(int id);

  FFFoodListsDefinition maxQty(int maxQty);

  FFFoodListsDefinition minQty(int minQty);

  FFFoodListsDefinition mode(FFMode mode);

  FFFoodListsDefinition name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFoodListsDefinition(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFoodListsDefinition(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFoodListsDefinition call({
    int? canAddQuantity,
    List<FFFoodListDefinitionDetail>? foods,
    int? id,
    int? maxQty,
    int? minQty,
    FFMode? mode,
    String? name,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFFoodListsDefinition.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFFoodListsDefinition.copyWith.fieldName(...)`
class _$FFFoodListsDefinitionCWProxyImpl
    implements _$FFFoodListsDefinitionCWProxy {
  final FFFoodListsDefinition _value;

  const _$FFFoodListsDefinitionCWProxyImpl(this._value);

  @override
  FFFoodListsDefinition canAddQuantity(int canAddQuantity) =>
      this(canAddQuantity: canAddQuantity);

  @override
  FFFoodListsDefinition foods(List<FFFoodListDefinitionDetail> foods) =>
      this(foods: foods);

  @override
  FFFoodListsDefinition id(int id) => this(id: id);

  @override
  FFFoodListsDefinition maxQty(int maxQty) => this(maxQty: maxQty);

  @override
  FFFoodListsDefinition minQty(int minQty) => this(minQty: minQty);

  @override
  FFFoodListsDefinition mode(FFMode mode) => this(mode: mode);

  @override
  FFFoodListsDefinition name(String? name) => this(name: name);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFoodListsDefinition(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFoodListsDefinition(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFoodListsDefinition call({
    Object? canAddQuantity = const $CopyWithPlaceholder(),
    Object? foods = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? maxQty = const $CopyWithPlaceholder(),
    Object? minQty = const $CopyWithPlaceholder(),
    Object? mode = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return FFFoodListsDefinition(
      canAddQuantity: canAddQuantity == const $CopyWithPlaceholder() ||
              canAddQuantity == null
          ? _value.canAddQuantity
          // ignore: cast_nullable_to_non_nullable
          : canAddQuantity as int,
      foods: foods == const $CopyWithPlaceholder() || foods == null
          ? _value.foods
          // ignore: cast_nullable_to_non_nullable
          : foods as List<FFFoodListDefinitionDetail>,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
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
          : mode as FFMode,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $FFFoodListsDefinitionCopyWith on FFFoodListsDefinition {
  /// Returns a callable class that can be used as follows: `instanceOfFFFoodListsDefinition.copyWith(...)` or like so:`instanceOfFFFoodListsDefinition.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFFoodListsDefinitionCWProxy get copyWith =>
      _$FFFoodListsDefinitionCWProxyImpl(this);
}

abstract class _$FFFoodListDefinitionDetailCWProxy {
  FFFoodListDefinitionDetail id(int id);

  FFFoodListDefinitionDetail isSelected(bool isSelected);

  FFFoodListDefinitionDetail name(String? name);

  FFFoodListDefinitionDetail price(double price);

  FFFoodListDefinitionDetail timeSelected(DateTime? timeSelected);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFoodListDefinitionDetail(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFoodListDefinitionDetail(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFoodListDefinitionDetail call({
    int? id,
    bool? isSelected,
    String? name,
    double? price,
    DateTime? timeSelected,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFFoodListDefinitionDetail.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFFoodListDefinitionDetail.copyWith.fieldName(...)`
class _$FFFoodListDefinitionDetailCWProxyImpl
    implements _$FFFoodListDefinitionDetailCWProxy {
  final FFFoodListDefinitionDetail _value;

  const _$FFFoodListDefinitionDetailCWProxyImpl(this._value);

  @override
  FFFoodListDefinitionDetail id(int id) => this(id: id);

  @override
  FFFoodListDefinitionDetail isSelected(bool isSelected) =>
      this(isSelected: isSelected);

  @override
  FFFoodListDefinitionDetail name(String? name) => this(name: name);

  @override
  FFFoodListDefinitionDetail price(double price) => this(price: price);

  @override
  FFFoodListDefinitionDetail timeSelected(DateTime? timeSelected) =>
      this(timeSelected: timeSelected);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFoodListDefinitionDetail(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFoodListDefinitionDetail(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFoodListDefinitionDetail call({
    Object? id = const $CopyWithPlaceholder(),
    Object? isSelected = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? timeSelected = const $CopyWithPlaceholder(),
  }) {
    return FFFoodListDefinitionDetail(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      isSelected:
          isSelected == const $CopyWithPlaceholder() || isSelected == null
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
      timeSelected: timeSelected == const $CopyWithPlaceholder()
          ? _value.timeSelected
          // ignore: cast_nullable_to_non_nullable
          : timeSelected as DateTime?,
    );
  }
}

extension $FFFoodListDefinitionDetailCopyWith on FFFoodListDefinitionDetail {
  /// Returns a callable class that can be used as follows: `instanceOfFFFoodListDefinitionDetail.copyWith(...)` or like so:`instanceOfFFFoodListDefinitionDetail.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFFoodListDefinitionDetailCWProxy get copyWith =>
      _$FFFoodListDefinitionDetailCWProxyImpl(this);
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
  FFTranslation description(String? description) =>
      this(description: description);

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

FFProduct _$FFProductFromJson(Map<String, dynamic> json) => FFProduct(
      id: json['id'] as int,
      sectionId: json['sectionId'] as int,
      formatName: json['formatName'] as String?,
      productFormats: (json['productFormats'] as List<dynamic>?)
              ?.map((e) => FFProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      name: json['name'] as String?,
      preferredCookingTypeId: json['preferredCookingTypeId'] as int?,
      minOrdinableQuantity: json['minOrdinableQuantity'] as int? ?? 0,
      newPrice: (json['newPrice'] as num?)?.toDouble() ?? 0,
      price: (json['price'] as num).toDouble(),
      formatId: json['formatId'] as int?,
      ingredients: (json['ingredients'] as List<dynamic>?)
              ?.map((e) => FFIngredient.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      alternatives: (json['alternatives'] as List<dynamic>?)
              ?.map((e) => FFAlternative.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      cookingTypes: (json['cookingTypes'] as List<dynamic>?)
              ?.map((e) => FFCookingType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      foodListsDefinition: (json['foodListsDefinition'] as List<dynamic>?)
              ?.map((e) =>
                  FFFoodListsDefinition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FFProductToJson(FFProduct instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'sectionId': instance.sectionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('formatName', instance.formatName);
  writeNotNull('formatId', instance.formatId);
  writeNotNull('preferredCookingTypeId', instance.preferredCookingTypeId);
  val['minOrdinableQuantity'] = instance.minOrdinableQuantity;
  val['price'] = instance.price;
  val['ingredients'] = instance.ingredients.map((e) => e.toJson()).toList();
  val['alternatives'] = instance.alternatives.map((e) => e.toJson()).toList();
  val['cookingTypes'] = instance.cookingTypes.map((e) => e.toJson()).toList();
  val['foodListsDefinition'] =
      instance.foodListsDefinition.map((e) => e.toJson()).toList();
  val['productFormats'] =
      instance.productFormats.map((e) => e.toJson()).toList();
  val['newPrice'] = instance.newPrice;
  return val;
}

FFIngredient _$FFIngredientFromJson(Map<String, dynamic> json) => FFIngredient(
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

Map<String, dynamic> _$FFIngredientToJson(FFIngredient instance) {
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

FFAlternative _$FFAlternativeFromJson(Map<String, dynamic> json) =>
    FFAlternative(
      foodListId: json['foodListId'] as int,
      foodListName: json['foodListName'] as String?,
      defaultFoodId: json['defaultFoodId'] as int,
      foods: (json['foods'] as List<dynamic>?)
              ?.map((e) => FFFood.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FFAlternativeToJson(FFAlternative instance) {
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

FFCookingType _$FFCookingTypeFromJson(Map<String, dynamic> json) =>
    FFCookingType(
      id: json['id'] as int,
      name: json['name'] as String?,
      priority: json['priority'] as int,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$FFCookingTypeToJson(FFCookingType instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['priority'] = instance.priority;
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

FFFoodListsDefinition _$FFFoodListsDefinitionFromJson(
        Map<String, dynamic> json) =>
    FFFoodListsDefinition(
      id: json['id'] as int,
      maxQty: json['maxQty'] as int,
      minQty: json['minQty'] as int,
      mode: $enumDecode(_$FFModeEnumMap, json['mode']),
      canAddQuantity: json['canAddQuantity'] as int? ?? 0,
      name: json['name'] as String?,
      foods: (json['foods'] as List<dynamic>?)
              ?.map((e) => FFFoodListDefinitionDetail.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FFFoodListsDefinitionToJson(
    FFFoodListsDefinition instance) {
  final val = <String, dynamic>{
    'canAddQuantity': instance.canAddQuantity,
    'maxQty': instance.maxQty,
    'minQty': instance.minQty,
    'id': instance.id,
    'mode': _$FFModeEnumMap[instance.mode]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['foods'] = instance.foods.map((e) => e.toJson()).toList();
  return val;
}

const _$FFModeEnumMap = {
  FFMode.freeChoise: 0,
  FFMode.maxIngredientWithCost: 1,
  FFMode.maxIngredientFree: 2,
  FFMode.maxFreeAndOtherWithCost: 3,
};

FFFoodListDefinitionDetail _$FFFoodListDefinitionDetailFromJson(
        Map<String, dynamic> json) =>
    FFFoodListDefinitionDetail(
      id: json['id'] as int,
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      name: json['name'] as String?,
      isSelected: json['isSelected'] as bool? ?? false,
      timeSelected: json['timeSelected'] == null
          ? null
          : DateTime.parse(json['timeSelected'] as String),
    );

Map<String, dynamic> _$FFFoodListDefinitionDetailToJson(
    FFFoodListDefinitionDetail instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['price'] = instance.price;
  val['isSelected'] = instance.isSelected;
  writeNotNull('timeSelected', instance.timeSelected?.toIso8601String());
  return val;
}

FFTranslation _$FFTranslationFromJson(Map<String, dynamic> json) =>
    FFTranslation(
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
