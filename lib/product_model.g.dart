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

  FFProduct foodlists(List<FFFoodlist> foodlists);

  FFProduct formats(List<FFFormat> formats);

  FFProduct id(int id);

  FFProduct ingredients(List<FFIngredient> ingredients);

  FFProduct minOrdinableQuantity(int minOrdinableQuantity);

  FFProduct name(String? name);

  FFProduct newPrice(double newPrice);

  FFProduct preferredCookingTypeId(int? preferredCookingTypeId);

  FFProduct price(double price);

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
    List<FFFoodlist>? foodlists,
    List<FFFormat>? formats,
    int? id,
    List<FFIngredient>? ingredients,
    int? minOrdinableQuantity,
    String? name,
    double? newPrice,
    int? preferredCookingTypeId,
    double? price,
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
  FFProduct foodlists(List<FFFoodlist> foodlists) => this(foodlists: foodlists);

  @override
  FFProduct formats(List<FFFormat> formats) => this(formats: formats);

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
    Object? foodlists = const $CopyWithPlaceholder(),
    Object? formats = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? ingredients = const $CopyWithPlaceholder(),
    Object? minOrdinableQuantity = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? newPrice = const $CopyWithPlaceholder(),
    Object? preferredCookingTypeId = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
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
      foodlists: foodlists == const $CopyWithPlaceholder() || foodlists == null
          ? _value.foodlists
          // ignore: cast_nullable_to_non_nullable
          : foodlists as List<FFFoodlist>,
      formats: formats == const $CopyWithPlaceholder() || formats == null
          ? _value.formats
          // ignore: cast_nullable_to_non_nullable
          : formats as List<FFFormat>,
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

abstract class _$FFFormatCWProxy {
  FFFormat format(String? format);

  FFFormat price(double price);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFormat(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFormat(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFormat call({
    String? format,
    double? price,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFFormat.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFFormat.copyWith.fieldName(...)`
class _$FFFormatCWProxyImpl implements _$FFFormatCWProxy {
  final FFFormat _value;

  const _$FFFormatCWProxyImpl(this._value);

  @override
  FFFormat format(String? format) => this(format: format);

  @override
  FFFormat price(double price) => this(price: price);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFormat(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFormat(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFormat call({
    Object? format = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
  }) {
    return FFFormat(
      format: format == const $CopyWithPlaceholder()
          ? _value.format
          // ignore: cast_nullable_to_non_nullable
          : format as String?,
      price: price == const $CopyWithPlaceholder() || price == null
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as double,
    );
  }
}

extension $FFFormatCopyWith on FFFormat {
  /// Returns a callable class that can be used as follows: `instanceOfFFFormat.copyWith(...)` or like so:`instanceOfFFFormat.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFFormatCWProxy get copyWith => _$FFFormatCWProxyImpl(this);
}

abstract class _$FFIngredientCWProxy {
  FFIngredient canDouble(bool canDouble);

  FFIngredient canRemove(bool canRemove);

  FFIngredient canTriple(bool canTriple);

  FFIngredient food(String? food);

  FFIngredient foodId(int foodId);

  FFIngredient hidden(bool hidden);

  FFIngredient isMainIngredient(bool isMainIngredient);

  FFIngredient selected(bool selected);

  FFIngredient variationGroup(String? variationGroup);

  FFIngredient variationPrice(double variationPrice);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFIngredient(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFIngredient(...).copyWith(id: 12, name: "My name")
  /// ````
  FFIngredient call({
    bool? canDouble,
    bool? canRemove,
    bool? canTriple,
    String? food,
    int? foodId,
    bool? hidden,
    bool? isMainIngredient,
    bool? selected,
    String? variationGroup,
    double? variationPrice,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFIngredient.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFIngredient.copyWith.fieldName(...)`
class _$FFIngredientCWProxyImpl implements _$FFIngredientCWProxy {
  final FFIngredient _value;

  const _$FFIngredientCWProxyImpl(this._value);

  @override
  FFIngredient canDouble(bool canDouble) => this(canDouble: canDouble);

  @override
  FFIngredient canRemove(bool canRemove) => this(canRemove: canRemove);

  @override
  FFIngredient canTriple(bool canTriple) => this(canTriple: canTriple);

  @override
  FFIngredient food(String? food) => this(food: food);

  @override
  FFIngredient foodId(int foodId) => this(foodId: foodId);

  @override
  FFIngredient hidden(bool hidden) => this(hidden: hidden);

  @override
  FFIngredient isMainIngredient(bool isMainIngredient) =>
      this(isMainIngredient: isMainIngredient);

  @override
  FFIngredient selected(bool selected) => this(selected: selected);

  @override
  FFIngredient variationGroup(String? variationGroup) =>
      this(variationGroup: variationGroup);

  @override
  FFIngredient variationPrice(double variationPrice) =>
      this(variationPrice: variationPrice);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFIngredient(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFIngredient(...).copyWith(id: 12, name: "My name")
  /// ````
  FFIngredient call({
    Object? canDouble = const $CopyWithPlaceholder(),
    Object? canRemove = const $CopyWithPlaceholder(),
    Object? canTriple = const $CopyWithPlaceholder(),
    Object? food = const $CopyWithPlaceholder(),
    Object? foodId = const $CopyWithPlaceholder(),
    Object? hidden = const $CopyWithPlaceholder(),
    Object? isMainIngredient = const $CopyWithPlaceholder(),
    Object? selected = const $CopyWithPlaceholder(),
    Object? variationGroup = const $CopyWithPlaceholder(),
    Object? variationPrice = const $CopyWithPlaceholder(),
  }) {
    return FFIngredient(
      canDouble: canDouble == const $CopyWithPlaceholder() || canDouble == null
          ? _value.canDouble
          // ignore: cast_nullable_to_non_nullable
          : canDouble as bool,
      canRemove: canRemove == const $CopyWithPlaceholder() || canRemove == null
          ? _value.canRemove
          // ignore: cast_nullable_to_non_nullable
          : canRemove as bool,
      canTriple: canTriple == const $CopyWithPlaceholder() || canTriple == null
          ? _value.canTriple
          // ignore: cast_nullable_to_non_nullable
          : canTriple as bool,
      food: food == const $CopyWithPlaceholder()
          ? _value.food
          // ignore: cast_nullable_to_non_nullable
          : food as String?,
      foodId: foodId == const $CopyWithPlaceholder() || foodId == null
          ? _value.foodId
          // ignore: cast_nullable_to_non_nullable
          : foodId as int,
      hidden: hidden == const $CopyWithPlaceholder() || hidden == null
          ? _value.hidden
          // ignore: cast_nullable_to_non_nullable
          : hidden as bool,
      isMainIngredient: isMainIngredient == const $CopyWithPlaceholder() ||
              isMainIngredient == null
          ? _value.isMainIngredient
          // ignore: cast_nullable_to_non_nullable
          : isMainIngredient as bool,
      selected: selected == const $CopyWithPlaceholder() || selected == null
          ? _value.selected
          // ignore: cast_nullable_to_non_nullable
          : selected as bool,
      variationGroup: variationGroup == const $CopyWithPlaceholder()
          ? _value.variationGroup
          // ignore: cast_nullable_to_non_nullable
          : variationGroup as String?,
      variationPrice: variationPrice == const $CopyWithPlaceholder() ||
              variationPrice == null
          ? _value.variationPrice
          // ignore: cast_nullable_to_non_nullable
          : variationPrice as double,
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

  FFCookingType priority(int? priority);

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
  FFCookingType priority(int? priority) => this(priority: priority);

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
      priority: priority == const $CopyWithPlaceholder()
          ? _value.priority
          // ignore: cast_nullable_to_non_nullable
          : priority as int?,
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

  FFFood foodName(String? foodName);

  FFFood isSelected(bool isSelected);

  FFFood price(double price);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFood(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFood(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFood call({
    int? foodId,
    String? foodName,
    bool? isSelected,
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
  FFFood foodName(String? foodName) => this(foodName: foodName);

  @override
  FFFood isSelected(bool isSelected) => this(isSelected: isSelected);

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
    Object? foodName = const $CopyWithPlaceholder(),
    Object? isSelected = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
  }) {
    return FFFood(
      foodId: foodId == const $CopyWithPlaceholder() || foodId == null
          ? _value.foodId
          // ignore: cast_nullable_to_non_nullable
          : foodId as int,
      foodName: foodName == const $CopyWithPlaceholder()
          ? _value.foodName
          // ignore: cast_nullable_to_non_nullable
          : foodName as String?,
      isSelected:
          isSelected == const $CopyWithPlaceholder() || isSelected == null
              ? _value.isSelected
              // ignore: cast_nullable_to_non_nullable
              : isSelected as bool,
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
  FFFoodListsDefinition foodListId(int foodListId);

  FFFoodListsDefinition maxQty(int maxQty);

  FFFoodListsDefinition minQty(int minQty);

  FFFoodListsDefinition mode(int mode);

  FFFoodListsDefinition x2(bool x2);

  FFFoodListsDefinition x3(bool x3);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFoodListsDefinition(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFoodListsDefinition(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFoodListsDefinition call({
    int? foodListId,
    int? maxQty,
    int? minQty,
    int? mode,
    bool? x2,
    bool? x3,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFFoodListsDefinition.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFFoodListsDefinition.copyWith.fieldName(...)`
class _$FFFoodListsDefinitionCWProxyImpl
    implements _$FFFoodListsDefinitionCWProxy {
  final FFFoodListsDefinition _value;

  const _$FFFoodListsDefinitionCWProxyImpl(this._value);

  @override
  FFFoodListsDefinition foodListId(int foodListId) =>
      this(foodListId: foodListId);

  @override
  FFFoodListsDefinition maxQty(int maxQty) => this(maxQty: maxQty);

  @override
  FFFoodListsDefinition minQty(int minQty) => this(minQty: minQty);

  @override
  FFFoodListsDefinition mode(int mode) => this(mode: mode);

  @override
  FFFoodListsDefinition x2(bool x2) => this(x2: x2);

  @override
  FFFoodListsDefinition x3(bool x3) => this(x3: x3);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFoodListsDefinition(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFoodListsDefinition(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFoodListsDefinition call({
    Object? foodListId = const $CopyWithPlaceholder(),
    Object? maxQty = const $CopyWithPlaceholder(),
    Object? minQty = const $CopyWithPlaceholder(),
    Object? mode = const $CopyWithPlaceholder(),
    Object? x2 = const $CopyWithPlaceholder(),
    Object? x3 = const $CopyWithPlaceholder(),
  }) {
    return FFFoodListsDefinition(
      foodListId:
          foodListId == const $CopyWithPlaceholder() || foodListId == null
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
          : mode as int,
      x2: x2 == const $CopyWithPlaceholder() || x2 == null
          ? _value.x2
          // ignore: cast_nullable_to_non_nullable
          : x2 as bool,
      x3: x3 == const $CopyWithPlaceholder() || x3 == null
          ? _value.x3
          // ignore: cast_nullable_to_non_nullable
          : x3 as bool,
    );
  }
}

extension $FFFoodListsDefinitionCopyWith on FFFoodListsDefinition {
  /// Returns a callable class that can be used as follows: `instanceOfFFFoodListsDefinition.copyWith(...)` or like so:`instanceOfFFFoodListsDefinition.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFFoodListsDefinitionCWProxy get copyWith =>
      _$FFFoodListsDefinitionCWProxyImpl(this);
}

abstract class _$FFFoodlistCWProxy {
  FFFoodlist alternative(bool? alternative);

  FFFoodlist foodIds(List<int> foodIds);

  FFFoodlist foods(List<FFFoodDetail>? foods);

  FFFoodlist hidden(bool? hidden);

  FFFoodlist id(int? id);

  FFFoodlist name(String? name);

  FFFoodlist priceListIds(List<int> priceListIds);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFoodlist(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFoodlist(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFoodlist call({
    bool? alternative,
    List<int>? foodIds,
    List<FFFoodDetail>? foods,
    bool? hidden,
    int? id,
    String? name,
    List<int>? priceListIds,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFFoodlist.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFFoodlist.copyWith.fieldName(...)`
class _$FFFoodlistCWProxyImpl implements _$FFFoodlistCWProxy {
  final FFFoodlist _value;

  const _$FFFoodlistCWProxyImpl(this._value);

  @override
  FFFoodlist alternative(bool? alternative) => this(alternative: alternative);

  @override
  FFFoodlist foodIds(List<int> foodIds) => this(foodIds: foodIds);

  @override
  FFFoodlist foods(List<FFFoodDetail>? foods) => this(foods: foods);

  @override
  FFFoodlist hidden(bool? hidden) => this(hidden: hidden);

  @override
  FFFoodlist id(int? id) => this(id: id);

  @override
  FFFoodlist name(String? name) => this(name: name);

  @override
  FFFoodlist priceListIds(List<int> priceListIds) =>
      this(priceListIds: priceListIds);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFFoodlist(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFFoodlist(...).copyWith(id: 12, name: "My name")
  /// ````
  FFFoodlist call({
    Object? alternative = const $CopyWithPlaceholder(),
    Object? foodIds = const $CopyWithPlaceholder(),
    Object? foods = const $CopyWithPlaceholder(),
    Object? hidden = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? priceListIds = const $CopyWithPlaceholder(),
  }) {
    return FFFoodlist(
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
      priceListIds:
          priceListIds == const $CopyWithPlaceholder() || priceListIds == null
              ? _value.priceListIds
              // ignore: cast_nullable_to_non_nullable
              : priceListIds as List<int>,
    );
  }
}

extension $FFFoodlistCopyWith on FFFoodlist {
  /// Returns a callable class that can be used as follows: `instanceOfFFFoodlist.copyWith(...)` or like so:`instanceOfFFFoodlist.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFFoodlistCWProxy get copyWith => _$FFFoodlistCWProxyImpl(this);
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

  FFFoodDetail shortName(String? shortName);

  FFFoodDetail tags(String? tags);

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
    String? shortName,
    String? tags,
    List<FFTranslation>? translations,
    double? variationPrice,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFFoodDetail.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFFoodDetail.copyWith.fieldName(...)`
class _$FFFoodDetailCWProxyImpl implements _$FFFoodDetailCWProxy {
  final FFFoodDetail _value;

  const _$FFFoodDetailCWProxyImpl(this._value);

  @override
  FFFoodDetail allergenIds(List<int> allergenIds) =>
      this(allergenIds: allergenIds);

  @override
  FFFoodDetail calories(int? calories) => this(calories: calories);

  @override
  FFFoodDetail canBeDeleted(bool? canBeDeleted) =>
      this(canBeDeleted: canBeDeleted);

  @override
  FFFoodDetail categoryName(String? categoryName) =>
      this(categoryName: categoryName);

  @override
  FFFoodDetail foodCategoryId(int? foodCategoryId) =>
      this(foodCategoryId: foodCategoryId);

  @override
  FFFoodDetail forList(bool? forList) => this(forList: forList);

  @override
  FFFoodDetail fromPlatForm(bool? fromPlatForm) =>
      this(fromPlatForm: fromPlatForm);

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
  FFFoodDetail productsCounts(int? productsCounts) =>
      this(productsCounts: productsCounts);

  @override
  FFFoodDetail selected(bool selected) => this(selected: selected);

  @override
  FFFoodDetail shortName(String? shortName) => this(shortName: shortName);

  @override
  FFFoodDetail tags(String? tags) => this(tags: tags);

  @override
  FFFoodDetail translations(List<FFTranslation> translations) =>
      this(translations: translations);

  @override
  FFFoodDetail variationPrice(double? variationPrice) =>
      this(variationPrice: variationPrice);

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
    Object? shortName = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? translations = const $CopyWithPlaceholder(),
    Object? variationPrice = const $CopyWithPlaceholder(),
  }) {
    return FFFoodDetail(
      allergenIds:
          allergenIds == const $CopyWithPlaceholder() || allergenIds == null
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
      hiddenPrice:
          hiddenPrice == const $CopyWithPlaceholder() || hiddenPrice == null
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
      shortName: shortName == const $CopyWithPlaceholder()
          ? _value.shortName
          // ignore: cast_nullable_to_non_nullable
          : shortName as String?,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as String?,
      translations:
          translations == const $CopyWithPlaceholder() || translations == null
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
      name: json['name'] as String?,
      preferredCookingTypeId: json['preferredCookingTypeId'] as int?,
      minOrdinableQuantity: json['minOrdinableQuantity'] as int? ?? 0,
      newPrice: (json['newPrice'] as num?)?.toDouble() ?? 0,
      price: (json['price'] as num).toDouble(),
      sectionId: json['sectionId'] as int? ?? 0,
      formats: (json['formats'] as List<dynamic>?)
              ?.map((e) => FFFormat.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
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
      foodlists: (json['foodlists'] as List<dynamic>?)
              ?.map((e) => FFFoodlist.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FFProductToJson(FFProduct instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('preferredCookingTypeId', instance.preferredCookingTypeId);
  val['minOrdinableQuantity'] = instance.minOrdinableQuantity;
  val['newPrice'] = instance.newPrice;
  val['price'] = instance.price;
  val['sectionId'] = instance.sectionId;
  val['formats'] = instance.formats.map((e) => e.toJson()).toList();
  val['ingredients'] = instance.ingredients.map((e) => e.toJson()).toList();
  val['alternatives'] = instance.alternatives.map((e) => e.toJson()).toList();
  val['cookingTypes'] = instance.cookingTypes.map((e) => e.toJson()).toList();
  val['foodlists'] = instance.foodlists.map((e) => e.toJson()).toList();
  val['foodListsDefinition'] =
      instance.foodListsDefinition.map((e) => e.toJson()).toList();
  return val;
}

FFFormat _$FFFormatFromJson(Map<String, dynamic> json) => FFFormat(
      format: json['format'] as String?,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$FFFormatToJson(FFFormat instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('format', instance.format);
  val['price'] = instance.price;
  return val;
}

FFIngredient _$FFIngredientFromJson(Map<String, dynamic> json) => FFIngredient(
      foodId: json['foodId'] as int,
      food: json['food'] as String?,
      hidden: json['hidden'] as bool,
      isMainIngredient: json['isMainIngredient'] as bool? ?? false,
      selected: json['selected'] as bool? ?? false,
      variationPrice: (json['variationPrice'] as num).toDouble(),
      variationGroup: json['variationGroup'] as String?,
      canRemove: json['canRemove'] as bool,
      canDouble: json['canDouble'] as bool,
      canTriple: json['canTriple'] as bool,
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

  writeNotNull('food', instance.food);
  val['hidden'] = instance.hidden;
  val['isMainIngredient'] = instance.isMainIngredient;
  val['selected'] = instance.selected;
  val['variationPrice'] = instance.variationPrice;
  writeNotNull('variationGroup', instance.variationGroup);
  val['canRemove'] = instance.canRemove;
  val['canDouble'] = instance.canDouble;
  val['canTriple'] = instance.canTriple;
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
      priority: json['priority'] as int?,
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
  writeNotNull('priority', instance.priority);
  val['isSelected'] = instance.isSelected;
  return val;
}

FFFood _$FFFoodFromJson(Map<String, dynamic> json) => FFFood(
      foodId: json['foodId'] as int,
      foodName: json['foodName'] as String?,
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

  writeNotNull('foodName', instance.foodName);
  val['price'] = instance.price;
  val['isSelected'] = instance.isSelected;
  return val;
}

FFFoodListsDefinition _$FFFoodListsDefinitionFromJson(
        Map<String, dynamic> json) =>
    FFFoodListsDefinition(
      foodListId: json['foodListId'] as int,
      maxQty: json['maxQty'] as int,
      minQty: json['minQty'] as int,
      mode: json['mode'] as int,
      x2: json['x2'] as bool,
      x3: json['x3'] as bool,
    );

Map<String, dynamic> _$FFFoodListsDefinitionToJson(
        FFFoodListsDefinition instance) =>
    <String, dynamic>{
      'x2': instance.x2,
      'x3': instance.x3,
      'maxQty': instance.maxQty,
      'minQty': instance.minQty,
      'foodListId': instance.foodListId,
      'mode': instance.mode,
    };

FFFoodlist _$FFFoodlistFromJson(Map<String, dynamic> json) => FFFoodlist(
      foods: (json['foods'] as List<dynamic>?)
          ?.map((e) => FFFoodDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      name: json['name'] as String?,
      priceListIds: (json['priceListIds'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
      foodIds:
          (json['foodIds'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              const [],
      alternative: json['alternative'] as bool?,
      hidden: json['hidden'] as bool?,
    );

Map<String, dynamic> _$FFFoodlistToJson(FFFoodlist instance) {
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
      allergenIds: (json['allergenIds'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
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
    );

Map<String, dynamic> _$FFFoodDetailToJson(FFFoodDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

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
