// GENERATED CODE - DO NOT MODIFY BY HAND

part of flistfood_order;

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FFProductCWProxy {
  FFProduct alternatives(List<FFAlternative>? alternatives);

  FFProduct cookingTypes(List<FFCookingType>? cookingTypes);

  FFProduct foodListsDefinition(
      List<FFFoodListsDefinition>? foodListsDefinition);

  FFProduct foodlists(List<FFFoodlist>? foodlists);

  FFProduct formats(List<FFFormat>? formats);

  FFProduct id(int id);

  FFProduct ingredients(List<FFIngredient>? ingredients);

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
  FFProduct alternatives(List<FFAlternative>? alternatives) =>
      this(alternatives: alternatives);

  @override
  FFProduct cookingTypes(List<FFCookingType>? cookingTypes) =>
      this(cookingTypes: cookingTypes);

  @override
  FFProduct foodListsDefinition(
          List<FFFoodListsDefinition>? foodListsDefinition) =>
      this(foodListsDefinition: foodListsDefinition);

  @override
  FFProduct foodlists(List<FFFoodlist>? foodlists) =>
      this(foodlists: foodlists);

  @override
  FFProduct formats(List<FFFormat>? formats) => this(formats: formats);

  @override
  FFProduct id(int id) => this(id: id);

  @override
  FFProduct ingredients(List<FFIngredient>? ingredients) =>
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
      alternatives: alternatives == const $CopyWithPlaceholder()
          ? _value.alternatives
          // ignore: cast_nullable_to_non_nullable
          : alternatives as List<FFAlternative>?,
      cookingTypes: cookingTypes == const $CopyWithPlaceholder()
          ? _value.cookingTypes
          // ignore: cast_nullable_to_non_nullable
          : cookingTypes as List<FFCookingType>?,
      foodListsDefinition: foodListsDefinition == const $CopyWithPlaceholder()
          ? _value.foodListsDefinition
          // ignore: cast_nullable_to_non_nullable
          : foodListsDefinition as List<FFFoodListsDefinition>?,
      foodlists: foodlists == const $CopyWithPlaceholder()
          ? _value.foodlists
          // ignore: cast_nullable_to_non_nullable
          : foodlists as List<FFFoodlist>?,
      formats: formats == const $CopyWithPlaceholder()
          ? _value.formats
          // ignore: cast_nullable_to_non_nullable
          : formats as List<FFFormat>?,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      ingredients: ingredients == const $CopyWithPlaceholder()
          ? _value.ingredients
          // ignore: cast_nullable_to_non_nullable
          : ingredients as List<FFIngredient>?,
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
  _$FFIngredientCWProxy get copyWith => _$FFIngredientCWProxyImpl(this);
}

abstract class _$FFAlternativeCWProxy {
  FFAlternative defaultFoodId(int defaultFoodId);

  FFAlternative foodListId(int foodListId);

  FFAlternative foodListName(String? foodListName);

  FFAlternative foods(List<FFFood>? foods);

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
  FFAlternative foods(List<FFFood>? foods) => this(foods: foods);

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
      foods: foods == const $CopyWithPlaceholder()
          ? _value.foods
          // ignore: cast_nullable_to_non_nullable
          : foods as List<FFFood>?,
    );
  }
}

extension $FFAlternativeCopyWith on FFAlternative {
  /// Returns a callable class that can be used as follows: `instanceOfFFAlternative.copyWith(...)` or like so:`instanceOfFFAlternative.copyWith.fieldName(...)`.
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
  _$FFFoodListsDefinitionCWProxy get copyWith =>
      _$FFFoodListsDefinitionCWProxyImpl(this);
}

abstract class _$FFFoodlistCWProxy {
  FFFoodlist alternative(bool? alternative);

  FFFoodlist foodIds(List<int>? foodIds);

  FFFoodlist foods(List<FFFoodDetail>? foods);

  FFFoodlist hidden(bool? hidden);

  FFFoodlist id(int? id);

  FFFoodlist name(String? name);

  FFFoodlist priceListIds(List<int>? priceListIds);

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
  FFFoodlist foodIds(List<int>? foodIds) => this(foodIds: foodIds);

  @override
  FFFoodlist foods(List<FFFoodDetail>? foods) => this(foods: foods);

  @override
  FFFoodlist hidden(bool? hidden) => this(hidden: hidden);

  @override
  FFFoodlist id(int? id) => this(id: id);

  @override
  FFFoodlist name(String? name) => this(name: name);

  @override
  FFFoodlist priceListIds(List<int>? priceListIds) =>
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
      foodIds: foodIds == const $CopyWithPlaceholder()
          ? _value.foodIds
          // ignore: cast_nullable_to_non_nullable
          : foodIds as List<int>?,
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
      priceListIds: priceListIds == const $CopyWithPlaceholder()
          ? _value.priceListIds
          // ignore: cast_nullable_to_non_nullable
          : priceListIds as List<int>?,
    );
  }
}

extension $FFFoodlistCopyWith on FFFoodlist {
  /// Returns a callable class that can be used as follows: `instanceOfFFFoodlist.copyWith(...)` or like so:`instanceOfFFFoodlist.copyWith.fieldName(...)`.
  _$FFFoodlistCWProxy get copyWith => _$FFFoodlistCWProxyImpl(this);
}

abstract class _$FFFoodDetailCWProxy {
  FFFoodDetail allergenIds(List<int>? allergenIds);

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

  FFFoodDetail translations(List<FFTranslation>? translations);

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
  FFFoodDetail allergenIds(List<int>? allergenIds) =>
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
  FFFoodDetail translations(List<FFTranslation>? translations) =>
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
      allergenIds: allergenIds == const $CopyWithPlaceholder()
          ? _value.allergenIds
          // ignore: cast_nullable_to_non_nullable
          : allergenIds as List<int>?,
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
      translations: translations == const $CopyWithPlaceholder()
          ? _value.translations
          // ignore: cast_nullable_to_non_nullable
          : translations as List<FFTranslation>?,
      variationPrice: variationPrice == const $CopyWithPlaceholder()
          ? _value.variationPrice
          // ignore: cast_nullable_to_non_nullable
          : variationPrice as double?,
    );
  }
}

extension $FFFoodDetailCopyWith on FFFoodDetail {
  /// Returns a callable class that can be used as follows: `instanceOfFFFoodDetail.copyWith(...)` or like so:`instanceOfFFFoodDetail.copyWith.fieldName(...)`.
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
  _$FFTranslationCWProxy get copyWith => _$FFTranslationCWProxyImpl(this);
}

abstract class _$FFOrderCWProxy {
  FFOrder deliveryInfo(FFDeliveryInfo? deliveryInfo);

  FFOrder details(List<FFDetail> details);

  FFOrder exitValue(int? exitValue);

  FFOrder id(String? id);

  FFOrder mustBeReadyOn(DateTime? mustBeReadyOn);

  FFOrder note(String? note);

  FFOrder number(int number);

  FFOrder ownerId(String ownerId);

  FFOrder ownerName(String? ownerName);

  FFOrder paymentStatus(int paymentStatus);

  FFOrder paymentType(int paymentType);

  FFOrder seatNumber(String? seatNumber);

  FFOrder servicePointId(String servicePointId);

  FFOrder servicePointName(String? servicePointName);

  FFOrder serviceType(int serviceType);

  FFOrder source(String? source);

  FFOrder ticketId(String? ticketId);

  FFOrder totalPrice(double? totalPrice);

  FFOrder user(String? user);

  FFOrder userId(String? userId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFOrder(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFOrder(...).copyWith(id: 12, name: "My name")
  /// ````
  FFOrder call({
    FFDeliveryInfo? deliveryInfo,
    List<FFDetail>? details,
    int? exitValue,
    String? id,
    DateTime? mustBeReadyOn,
    String? note,
    int? number,
    String? ownerId,
    String? ownerName,
    int? paymentStatus,
    int? paymentType,
    String? seatNumber,
    String? servicePointId,
    String? servicePointName,
    int? serviceType,
    String? source,
    String? ticketId,
    double? totalPrice,
    String? user,
    String? userId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFOrder.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFOrder.copyWith.fieldName(...)`
class _$FFOrderCWProxyImpl implements _$FFOrderCWProxy {
  final FFOrder _value;

  const _$FFOrderCWProxyImpl(this._value);

  @override
  FFOrder deliveryInfo(FFDeliveryInfo? deliveryInfo) =>
      this(deliveryInfo: deliveryInfo);

  @override
  FFOrder details(List<FFDetail> details) => this(details: details);

  @override
  FFOrder exitValue(int? exitValue) => this(exitValue: exitValue);

  @override
  FFOrder id(String? id) => this(id: id);

  @override
  FFOrder mustBeReadyOn(DateTime? mustBeReadyOn) =>
      this(mustBeReadyOn: mustBeReadyOn);

  @override
  FFOrder note(String? note) => this(note: note);

  @override
  FFOrder number(int number) => this(number: number);

  @override
  FFOrder ownerId(String ownerId) => this(ownerId: ownerId);

  @override
  FFOrder ownerName(String? ownerName) => this(ownerName: ownerName);

  @override
  FFOrder paymentStatus(int paymentStatus) =>
      this(paymentStatus: paymentStatus);

  @override
  FFOrder paymentType(int paymentType) => this(paymentType: paymentType);

  @override
  FFOrder seatNumber(String? seatNumber) => this(seatNumber: seatNumber);

  @override
  FFOrder servicePointId(String servicePointId) =>
      this(servicePointId: servicePointId);

  @override
  FFOrder servicePointName(String? servicePointName) =>
      this(servicePointName: servicePointName);

  @override
  FFOrder serviceType(int serviceType) => this(serviceType: serviceType);

  @override
  FFOrder source(String? source) => this(source: source);

  @override
  FFOrder ticketId(String? ticketId) => this(ticketId: ticketId);

  @override
  FFOrder totalPrice(double? totalPrice) => this(totalPrice: totalPrice);

  @override
  FFOrder user(String? user) => this(user: user);

  @override
  FFOrder userId(String? userId) => this(userId: userId);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFOrder(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFOrder(...).copyWith(id: 12, name: "My name")
  /// ````
  FFOrder call({
    Object? deliveryInfo = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? exitValue = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? mustBeReadyOn = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
    Object? number = const $CopyWithPlaceholder(),
    Object? ownerId = const $CopyWithPlaceholder(),
    Object? ownerName = const $CopyWithPlaceholder(),
    Object? paymentStatus = const $CopyWithPlaceholder(),
    Object? paymentType = const $CopyWithPlaceholder(),
    Object? seatNumber = const $CopyWithPlaceholder(),
    Object? servicePointId = const $CopyWithPlaceholder(),
    Object? servicePointName = const $CopyWithPlaceholder(),
    Object? serviceType = const $CopyWithPlaceholder(),
    Object? source = const $CopyWithPlaceholder(),
    Object? ticketId = const $CopyWithPlaceholder(),
    Object? totalPrice = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
  }) {
    return FFOrder(
      deliveryInfo: deliveryInfo == const $CopyWithPlaceholder()
          ? _value.deliveryInfo
          // ignore: cast_nullable_to_non_nullable
          : deliveryInfo as FFDeliveryInfo?,
      details: details == const $CopyWithPlaceholder() || details == null
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as List<FFDetail>,
      exitValue: exitValue == const $CopyWithPlaceholder()
          ? _value.exitValue
          // ignore: cast_nullable_to_non_nullable
          : exitValue as int?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      mustBeReadyOn: mustBeReadyOn == const $CopyWithPlaceholder()
          ? _value.mustBeReadyOn
          // ignore: cast_nullable_to_non_nullable
          : mustBeReadyOn as DateTime?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
      number: number == const $CopyWithPlaceholder() || number == null
          ? _value.number
          // ignore: cast_nullable_to_non_nullable
          : number as int,
      ownerId: ownerId == const $CopyWithPlaceholder() || ownerId == null
          ? _value.ownerId
          // ignore: cast_nullable_to_non_nullable
          : ownerId as String,
      ownerName: ownerName == const $CopyWithPlaceholder()
          ? _value.ownerName
          // ignore: cast_nullable_to_non_nullable
          : ownerName as String?,
      paymentStatus:
          paymentStatus == const $CopyWithPlaceholder() || paymentStatus == null
              ? _value.paymentStatus
              // ignore: cast_nullable_to_non_nullable
              : paymentStatus as int,
      paymentType:
          paymentType == const $CopyWithPlaceholder() || paymentType == null
              ? _value.paymentType
              // ignore: cast_nullable_to_non_nullable
              : paymentType as int,
      seatNumber: seatNumber == const $CopyWithPlaceholder()
          ? _value.seatNumber
          // ignore: cast_nullable_to_non_nullable
          : seatNumber as String?,
      servicePointId: servicePointId == const $CopyWithPlaceholder() ||
              servicePointId == null
          ? _value.servicePointId
          // ignore: cast_nullable_to_non_nullable
          : servicePointId as String,
      servicePointName: servicePointName == const $CopyWithPlaceholder()
          ? _value.servicePointName
          // ignore: cast_nullable_to_non_nullable
          : servicePointName as String?,
      serviceType:
          serviceType == const $CopyWithPlaceholder() || serviceType == null
              ? _value.serviceType
              // ignore: cast_nullable_to_non_nullable
              : serviceType as int,
      source: source == const $CopyWithPlaceholder()
          ? _value.source
          // ignore: cast_nullable_to_non_nullable
          : source as String?,
      ticketId: ticketId == const $CopyWithPlaceholder()
          ? _value.ticketId
          // ignore: cast_nullable_to_non_nullable
          : ticketId as String?,
      totalPrice: totalPrice == const $CopyWithPlaceholder()
          ? _value.totalPrice
          // ignore: cast_nullable_to_non_nullable
          : totalPrice as double?,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as String?,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
    );
  }
}

extension $FFOrderCopyWith on FFOrder {
  /// Returns a callable class that can be used as follows: `instanceOfFFOrder.copyWith(...)` or like so:`instanceOfFFOrder.copyWith.fieldName(...)`.
  _$FFOrderCWProxy get copyWith => _$FFOrderCWProxyImpl(this);
}

abstract class _$FFDeliveryInfoCWProxy {
  FFDeliveryInfo canChangeServicePoint(bool? canChangeServicePoint);

  FFDeliveryInfo customerName(String? customerName);

  FFDeliveryInfo deliveringTime(int? deliveringTime);

  FFDeliveryInfo deliveryAddress(String? deliveryAddress);

  FFDeliveryInfo deliveryIntercom(String? deliveryIntercom);

  FFDeliveryInfo deliveryLatitude(double? deliveryLatitude);

  FFDeliveryInfo deliveryLongitude(double? deliveryLongitude);

  FFDeliveryInfo deliveryNotes(String? deliveryNotes);

  FFDeliveryInfo deliveryTime(DateTime? deliveryTime);

  FFDeliveryInfo notes(String? notes);

  FFDeliveryInfo paymentStatus(int? paymentStatus);

  FFDeliveryInfo paymentType(int paymentType);

  FFDeliveryInfo phoneNumber(String? phoneNumber);

  FFDeliveryInfo referenceCode(String? referenceCode);

  FFDeliveryInfo supplementPrice(double? supplementPrice);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFDeliveryInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFDeliveryInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  FFDeliveryInfo call({
    bool? canChangeServicePoint,
    String? customerName,
    int? deliveringTime,
    String? deliveryAddress,
    String? deliveryIntercom,
    double? deliveryLatitude,
    double? deliveryLongitude,
    String? deliveryNotes,
    DateTime? deliveryTime,
    String? notes,
    int? paymentStatus,
    int? paymentType,
    String? phoneNumber,
    String? referenceCode,
    double? supplementPrice,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFDeliveryInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFDeliveryInfo.copyWith.fieldName(...)`
class _$FFDeliveryInfoCWProxyImpl implements _$FFDeliveryInfoCWProxy {
  final FFDeliveryInfo _value;

  const _$FFDeliveryInfoCWProxyImpl(this._value);

  @override
  FFDeliveryInfo canChangeServicePoint(bool? canChangeServicePoint) =>
      this(canChangeServicePoint: canChangeServicePoint);

  @override
  FFDeliveryInfo customerName(String? customerName) =>
      this(customerName: customerName);

  @override
  FFDeliveryInfo deliveringTime(int? deliveringTime) =>
      this(deliveringTime: deliveringTime);

  @override
  FFDeliveryInfo deliveryAddress(String? deliveryAddress) =>
      this(deliveryAddress: deliveryAddress);

  @override
  FFDeliveryInfo deliveryIntercom(String? deliveryIntercom) =>
      this(deliveryIntercom: deliveryIntercom);

  @override
  FFDeliveryInfo deliveryLatitude(double? deliveryLatitude) =>
      this(deliveryLatitude: deliveryLatitude);

  @override
  FFDeliveryInfo deliveryLongitude(double? deliveryLongitude) =>
      this(deliveryLongitude: deliveryLongitude);

  @override
  FFDeliveryInfo deliveryNotes(String? deliveryNotes) =>
      this(deliveryNotes: deliveryNotes);

  @override
  FFDeliveryInfo deliveryTime(DateTime? deliveryTime) =>
      this(deliveryTime: deliveryTime);

  @override
  FFDeliveryInfo notes(String? notes) => this(notes: notes);

  @override
  FFDeliveryInfo paymentStatus(int? paymentStatus) =>
      this(paymentStatus: paymentStatus);

  @override
  FFDeliveryInfo paymentType(int paymentType) => this(paymentType: paymentType);

  @override
  FFDeliveryInfo phoneNumber(String? phoneNumber) =>
      this(phoneNumber: phoneNumber);

  @override
  FFDeliveryInfo referenceCode(String? referenceCode) =>
      this(referenceCode: referenceCode);

  @override
  FFDeliveryInfo supplementPrice(double? supplementPrice) =>
      this(supplementPrice: supplementPrice);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFDeliveryInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFDeliveryInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  FFDeliveryInfo call({
    Object? canChangeServicePoint = const $CopyWithPlaceholder(),
    Object? customerName = const $CopyWithPlaceholder(),
    Object? deliveringTime = const $CopyWithPlaceholder(),
    Object? deliveryAddress = const $CopyWithPlaceholder(),
    Object? deliveryIntercom = const $CopyWithPlaceholder(),
    Object? deliveryLatitude = const $CopyWithPlaceholder(),
    Object? deliveryLongitude = const $CopyWithPlaceholder(),
    Object? deliveryNotes = const $CopyWithPlaceholder(),
    Object? deliveryTime = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
    Object? paymentStatus = const $CopyWithPlaceholder(),
    Object? paymentType = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
    Object? referenceCode = const $CopyWithPlaceholder(),
    Object? supplementPrice = const $CopyWithPlaceholder(),
  }) {
    return FFDeliveryInfo(
      canChangeServicePoint:
          canChangeServicePoint == const $CopyWithPlaceholder()
              ? _value.canChangeServicePoint
              // ignore: cast_nullable_to_non_nullable
              : canChangeServicePoint as bool?,
      customerName: customerName == const $CopyWithPlaceholder()
          ? _value.customerName
          // ignore: cast_nullable_to_non_nullable
          : customerName as String?,
      deliveringTime: deliveringTime == const $CopyWithPlaceholder()
          ? _value.deliveringTime
          // ignore: cast_nullable_to_non_nullable
          : deliveringTime as int?,
      deliveryAddress: deliveryAddress == const $CopyWithPlaceholder()
          ? _value.deliveryAddress
          // ignore: cast_nullable_to_non_nullable
          : deliveryAddress as String?,
      deliveryIntercom: deliveryIntercom == const $CopyWithPlaceholder()
          ? _value.deliveryIntercom
          // ignore: cast_nullable_to_non_nullable
          : deliveryIntercom as String?,
      deliveryLatitude: deliveryLatitude == const $CopyWithPlaceholder()
          ? _value.deliveryLatitude
          // ignore: cast_nullable_to_non_nullable
          : deliveryLatitude as double?,
      deliveryLongitude: deliveryLongitude == const $CopyWithPlaceholder()
          ? _value.deliveryLongitude
          // ignore: cast_nullable_to_non_nullable
          : deliveryLongitude as double?,
      deliveryNotes: deliveryNotes == const $CopyWithPlaceholder()
          ? _value.deliveryNotes
          // ignore: cast_nullable_to_non_nullable
          : deliveryNotes as String?,
      deliveryTime: deliveryTime == const $CopyWithPlaceholder()
          ? _value.deliveryTime
          // ignore: cast_nullable_to_non_nullable
          : deliveryTime as DateTime?,
      notes: notes == const $CopyWithPlaceholder()
          ? _value.notes
          // ignore: cast_nullable_to_non_nullable
          : notes as String?,
      paymentStatus: paymentStatus == const $CopyWithPlaceholder()
          ? _value.paymentStatus
          // ignore: cast_nullable_to_non_nullable
          : paymentStatus as int?,
      paymentType:
          paymentType == const $CopyWithPlaceholder() || paymentType == null
              ? _value.paymentType
              // ignore: cast_nullable_to_non_nullable
              : paymentType as int,
      phoneNumber: phoneNumber == const $CopyWithPlaceholder()
          ? _value.phoneNumber
          // ignore: cast_nullable_to_non_nullable
          : phoneNumber as String?,
      referenceCode: referenceCode == const $CopyWithPlaceholder()
          ? _value.referenceCode
          // ignore: cast_nullable_to_non_nullable
          : referenceCode as String?,
      supplementPrice: supplementPrice == const $CopyWithPlaceholder()
          ? _value.supplementPrice
          // ignore: cast_nullable_to_non_nullable
          : supplementPrice as double?,
    );
  }
}

extension $FFDeliveryInfoCopyWith on FFDeliveryInfo {
  /// Returns a callable class that can be used as follows: `instanceOfFFDeliveryInfo.copyWith(...)` or like so:`instanceOfFFDeliveryInfo.copyWith.fieldName(...)`.
  _$FFDeliveryInfoCWProxy get copyWith => _$FFDeliveryInfoCWProxyImpl(this);
}

abstract class _$FFDetailCWProxy {
  FFDetail cookingType(String? cookingType);

  FFDetail cookingTypeId(int? cookingTypeId);

  FFDetail discount(double discount);

  FFDetail exitValue(int? exitValue);

  FFDetail format(String? format);

  FFDetail id(String? id);

  FFDetail menuId(String? menuId);

  FFDetail menuName(String? menuName);

  FFDetail productId(int productId);

  FFDetail productName(String? productName);

  FFDetail productShortName(String? productShortName);

  FFDetail quantity(int quantity);

  FFDetail sectionId(int sectionId);

  FFDetail sectionName(String? sectionName);

  FFDetail state(int state);

  FFDetail totalPrice(double totalPrice);

  FFDetail unitPrice(double unitPrice);

  FFDetail variations(List<FFVariation> variations);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFDetail(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFDetail(...).copyWith(id: 12, name: "My name")
  /// ````
  FFDetail call({
    String? cookingType,
    int? cookingTypeId,
    double? discount,
    int? exitValue,
    String? format,
    String? id,
    String? menuId,
    String? menuName,
    int? productId,
    String? productName,
    String? productShortName,
    int? quantity,
    int? sectionId,
    String? sectionName,
    int? state,
    double? totalPrice,
    double? unitPrice,
    List<FFVariation>? variations,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFDetail.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFDetail.copyWith.fieldName(...)`
class _$FFDetailCWProxyImpl implements _$FFDetailCWProxy {
  final FFDetail _value;

  const _$FFDetailCWProxyImpl(this._value);

  @override
  FFDetail cookingType(String? cookingType) => this(cookingType: cookingType);

  @override
  FFDetail cookingTypeId(int? cookingTypeId) =>
      this(cookingTypeId: cookingTypeId);

  @override
  FFDetail discount(double discount) => this(discount: discount);

  @override
  FFDetail exitValue(int? exitValue) => this(exitValue: exitValue);

  @override
  FFDetail format(String? format) => this(format: format);

  @override
  FFDetail id(String? id) => this(id: id);

  @override
  FFDetail menuId(String? menuId) => this(menuId: menuId);

  @override
  FFDetail menuName(String? menuName) => this(menuName: menuName);

  @override
  FFDetail productId(int productId) => this(productId: productId);

  @override
  FFDetail productName(String? productName) => this(productName: productName);

  @override
  FFDetail productShortName(String? productShortName) =>
      this(productShortName: productShortName);

  @override
  FFDetail quantity(int quantity) => this(quantity: quantity);

  @override
  FFDetail sectionId(int sectionId) => this(sectionId: sectionId);

  @override
  FFDetail sectionName(String? sectionName) => this(sectionName: sectionName);

  @override
  FFDetail state(int state) => this(state: state);

  @override
  FFDetail totalPrice(double totalPrice) => this(totalPrice: totalPrice);

  @override
  FFDetail unitPrice(double unitPrice) => this(unitPrice: unitPrice);

  @override
  FFDetail variations(List<FFVariation> variations) =>
      this(variations: variations);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFDetail(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFDetail(...).copyWith(id: 12, name: "My name")
  /// ````
  FFDetail call({
    Object? cookingType = const $CopyWithPlaceholder(),
    Object? cookingTypeId = const $CopyWithPlaceholder(),
    Object? discount = const $CopyWithPlaceholder(),
    Object? exitValue = const $CopyWithPlaceholder(),
    Object? format = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? menuId = const $CopyWithPlaceholder(),
    Object? menuName = const $CopyWithPlaceholder(),
    Object? productId = const $CopyWithPlaceholder(),
    Object? productName = const $CopyWithPlaceholder(),
    Object? productShortName = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? sectionId = const $CopyWithPlaceholder(),
    Object? sectionName = const $CopyWithPlaceholder(),
    Object? state = const $CopyWithPlaceholder(),
    Object? totalPrice = const $CopyWithPlaceholder(),
    Object? unitPrice = const $CopyWithPlaceholder(),
    Object? variations = const $CopyWithPlaceholder(),
  }) {
    return FFDetail(
      cookingType: cookingType == const $CopyWithPlaceholder()
          ? _value.cookingType
          // ignore: cast_nullable_to_non_nullable
          : cookingType as String?,
      cookingTypeId: cookingTypeId == const $CopyWithPlaceholder()
          ? _value.cookingTypeId
          // ignore: cast_nullable_to_non_nullable
          : cookingTypeId as int?,
      discount: discount == const $CopyWithPlaceholder() || discount == null
          ? _value.discount
          // ignore: cast_nullable_to_non_nullable
          : discount as double,
      exitValue: exitValue == const $CopyWithPlaceholder()
          ? _value.exitValue
          // ignore: cast_nullable_to_non_nullable
          : exitValue as int?,
      format: format == const $CopyWithPlaceholder()
          ? _value.format
          // ignore: cast_nullable_to_non_nullable
          : format as String?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      menuId: menuId == const $CopyWithPlaceholder()
          ? _value.menuId
          // ignore: cast_nullable_to_non_nullable
          : menuId as String?,
      menuName: menuName == const $CopyWithPlaceholder()
          ? _value.menuName
          // ignore: cast_nullable_to_non_nullable
          : menuName as String?,
      productId: productId == const $CopyWithPlaceholder() || productId == null
          ? _value.productId
          // ignore: cast_nullable_to_non_nullable
          : productId as int,
      productName: productName == const $CopyWithPlaceholder()
          ? _value.productName
          // ignore: cast_nullable_to_non_nullable
          : productName as String?,
      productShortName: productShortName == const $CopyWithPlaceholder()
          ? _value.productShortName
          // ignore: cast_nullable_to_non_nullable
          : productShortName as String?,
      quantity: quantity == const $CopyWithPlaceholder() || quantity == null
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int,
      sectionId: sectionId == const $CopyWithPlaceholder() || sectionId == null
          ? _value.sectionId
          // ignore: cast_nullable_to_non_nullable
          : sectionId as int,
      sectionName: sectionName == const $CopyWithPlaceholder()
          ? _value.sectionName
          // ignore: cast_nullable_to_non_nullable
          : sectionName as String?,
      state: state == const $CopyWithPlaceholder() || state == null
          ? _value.state
          // ignore: cast_nullable_to_non_nullable
          : state as int,
      totalPrice:
          totalPrice == const $CopyWithPlaceholder() || totalPrice == null
              ? _value.totalPrice
              // ignore: cast_nullable_to_non_nullable
              : totalPrice as double,
      unitPrice: unitPrice == const $CopyWithPlaceholder() || unitPrice == null
          ? _value.unitPrice
          // ignore: cast_nullable_to_non_nullable
          : unitPrice as double,
      variations:
          variations == const $CopyWithPlaceholder() || variations == null
              ? _value.variations
              // ignore: cast_nullable_to_non_nullable
              : variations as List<FFVariation>,
    );
  }
}

extension $FFDetailCopyWith on FFDetail {
  /// Returns a callable class that can be used as follows: `instanceOfFFDetail.copyWith(...)` or like so:`instanceOfFFDetail.copyWith.fieldName(...)`.
  _$FFDetailCWProxy get copyWith => _$FFDetailCWProxyImpl(this);
}

abstract class _$FFVariationCWProxy {
  FFVariation alternative(bool? alternative);

  FFVariation foodId(int foodId);

  FFVariation foodName(String? foodName);

  FFVariation price(double price);

  FFVariation variationType(int? variationType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFVariation(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFVariation(...).copyWith(id: 12, name: "My name")
  /// ````
  FFVariation call({
    bool? alternative,
    int? foodId,
    String? foodName,
    double? price,
    int? variationType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFVariation.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFVariation.copyWith.fieldName(...)`
class _$FFVariationCWProxyImpl implements _$FFVariationCWProxy {
  final FFVariation _value;

  const _$FFVariationCWProxyImpl(this._value);

  @override
  FFVariation alternative(bool? alternative) => this(alternative: alternative);

  @override
  FFVariation foodId(int foodId) => this(foodId: foodId);

  @override
  FFVariation foodName(String? foodName) => this(foodName: foodName);

  @override
  FFVariation price(double price) => this(price: price);

  @override
  FFVariation variationType(int? variationType) =>
      this(variationType: variationType);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFVariation(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFVariation(...).copyWith(id: 12, name: "My name")
  /// ````
  FFVariation call({
    Object? alternative = const $CopyWithPlaceholder(),
    Object? foodId = const $CopyWithPlaceholder(),
    Object? foodName = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? variationType = const $CopyWithPlaceholder(),
  }) {
    return FFVariation(
      alternative: alternative == const $CopyWithPlaceholder()
          ? _value.alternative
          // ignore: cast_nullable_to_non_nullable
          : alternative as bool?,
      foodId: foodId == const $CopyWithPlaceholder() || foodId == null
          ? _value.foodId
          // ignore: cast_nullable_to_non_nullable
          : foodId as int,
      foodName: foodName == const $CopyWithPlaceholder()
          ? _value.foodName
          // ignore: cast_nullable_to_non_nullable
          : foodName as String?,
      price: price == const $CopyWithPlaceholder() || price == null
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as double,
      variationType: variationType == const $CopyWithPlaceholder()
          ? _value.variationType
          // ignore: cast_nullable_to_non_nullable
          : variationType as int?,
    );
  }
}

extension $FFVariationCopyWith on FFVariation {
  /// Returns a callable class that can be used as follows: `instanceOfFFVariation.copyWith(...)` or like so:`instanceOfFFVariation.copyWith.fieldName(...)`.
  _$FFVariationCWProxy get copyWith => _$FFVariationCWProxyImpl(this);
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
          .toList(),
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => FFIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      alternatives: (json['alternatives'] as List<dynamic>?)
          ?.map((e) => FFAlternative.fromJson(e as Map<String, dynamic>))
          .toList(),
      cookingTypes: (json['cookingTypes'] as List<dynamic>?)
          ?.map((e) => FFCookingType.fromJson(e as Map<String, dynamic>))
          .toList(),
      foodListsDefinition: (json['foodListsDefinition'] as List<dynamic>?)
          ?.map(
              (e) => FFFoodListsDefinition.fromJson(e as Map<String, dynamic>))
          .toList(),
      foodlists: (json['foodlists'] as List<dynamic>?)
          ?.map((e) => FFFoodlist.fromJson(e as Map<String, dynamic>))
          .toList(),
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
  writeNotNull('formats', instance.formats?.map((e) => e.toJson()).toList());
  writeNotNull(
      'ingredients', instance.ingredients?.map((e) => e.toJson()).toList());
  writeNotNull(
      'alternatives', instance.alternatives?.map((e) => e.toJson()).toList());
  writeNotNull(
      'cookingTypes', instance.cookingTypes?.map((e) => e.toJson()).toList());
  writeNotNull(
      'foodlists', instance.foodlists?.map((e) => e.toJson()).toList());
  writeNotNull('foodListsDefinition',
      instance.foodListsDefinition?.map((e) => e.toJson()).toList());
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
          .toList(),
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
  writeNotNull('foods', instance.foods?.map((e) => e.toJson()).toList());
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
          .toList(),
      foodIds:
          (json['foodIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
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
  writeNotNull('priceListIds', instance.priceListIds);
  writeNotNull('foodIds', instance.foodIds);
  writeNotNull('alternative', instance.alternative);
  writeNotNull('hidden', instance.hidden);
  return val;
}

FFFoodDetail _$FFFoodDetailFromJson(Map<String, dynamic> json) => FFFoodDetail(
      categoryName: json['categoryName'] as String?,
      allergenIds: (json['allergenIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      productsCounts: json['productsCounts'] as int?,
      canBeDeleted: json['canBeDeleted'] as bool?,
      forList: json['forList'] as bool?,
      productId: json['productId'] as int?,
      fromPlatForm: json['fromPlatForm'] as bool?,
      translations: (json['translations'] as List<dynamic>?)
          ?.map((e) => FFTranslation.fromJson(e as Map<String, dynamic>))
          .toList(),
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
  writeNotNull('allergenIds', instance.allergenIds);
  writeNotNull('productsCounts', instance.productsCounts);
  writeNotNull('canBeDeleted', instance.canBeDeleted);
  writeNotNull('forList', instance.forList);
  val['selected'] = instance.selected;
  val['isFree'] = instance.isFree;
  val['hiddenPrice'] = instance.hiddenPrice;
  writeNotNull('productId', instance.productId);
  writeNotNull('fromPlatForm', instance.fromPlatForm);
  writeNotNull(
      'translations', instance.translations?.map((e) => e.toJson()).toList());
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

FFOrder _$FFOrderFromJson(Map<String, dynamic> json) => FFOrder(
      id: json['id'] as String?,
      number: json['number'] as int? ?? 0,
      source: json['source'] as String?,
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      servicePointId: json['servicePointId'] as String,
      servicePointName: json['servicePointName'] as String?,
      serviceType: json['serviceType'] as int,
      ticketId: json['ticketId'] as String?,
      mustBeReadyOn: json['mustBeReadyOn'] == null
          ? null
          : DateTime.parse(json['mustBeReadyOn'] as String),
      exitValue: json['exitValue'] as int?,
      details: (json['details'] as List<dynamic>)
          .map((e) => FFDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] as String?,
      user: json['user'] as String?,
      ownerId: json['ownerId'] as String,
      ownerName: json['ownerName'] as String?,
      deliveryInfo: json['deliveryInfo'] == null
          ? null
          : FFDeliveryInfo.fromJson(
              json['deliveryInfo'] as Map<String, dynamic>),
      paymentStatus: json['paymentStatus'] as int? ?? 0,
      seatNumber: json['seatNumber'] as String?,
      note: json['note'] as String?,
      paymentType: json['paymentType'] as int? ?? 1,
    );

Map<String, dynamic> _$FFOrderToJson(FFOrder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['number'] = instance.number;
  writeNotNull('source', instance.source);
  writeNotNull('totalPrice', instance.totalPrice);
  val['servicePointId'] = instance.servicePointId;
  writeNotNull('servicePointName', instance.servicePointName);
  val['serviceType'] = instance.serviceType;
  writeNotNull('ticketId', instance.ticketId);
  writeNotNull('mustBeReadyOn', instance.mustBeReadyOn?.toIso8601String());
  writeNotNull('exitValue', instance.exitValue);
  val['details'] = instance.details.map((e) => e.toJson()).toList();
  writeNotNull('userId', instance.userId);
  writeNotNull('user', instance.user);
  val['ownerId'] = instance.ownerId;
  writeNotNull('ownerName', instance.ownerName);
  writeNotNull('deliveryInfo', instance.deliveryInfo?.toJson());
  val['paymentStatus'] = instance.paymentStatus;
  writeNotNull('seatNumber', instance.seatNumber);
  writeNotNull('note', instance.note);
  val['paymentType'] = instance.paymentType;
  return val;
}

FFDeliveryInfo _$FFDeliveryInfoFromJson(Map<String, dynamic> json) =>
    FFDeliveryInfo(
      customerName: json['customerName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      paymentType: json['paymentType'] as int,
      deliveryAddress: json['deliveryAddress'] as String?,
      deliveryLatitude: (json['deliveryLatitude'] as num?)?.toDouble(),
      deliveryLongitude: (json['deliveryLongitude'] as num?)?.toDouble(),
      deliveryIntercom: json['deliveryIntercom'] as String?,
      notes: json['notes'] as String?,
      referenceCode: json['referenceCode'] as String?,
      deliveryNotes: json['deliveryNotes'] as String?,
      deliveringTime: json['deliveringTime'] as int?,
      canChangeServicePoint: json['canChangeServicePoint'] as bool?,
      paymentStatus: json['paymentStatus'] as int?,
      deliveryTime: json['deliveryTime'] == null
          ? null
          : DateTime.parse(json['deliveryTime'] as String),
      supplementPrice: (json['supplementPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FFDeliveryInfoToJson(FFDeliveryInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customerName', instance.customerName);
  writeNotNull('phoneNumber', instance.phoneNumber);
  val['paymentType'] = instance.paymentType;
  writeNotNull('deliveryAddress', instance.deliveryAddress);
  writeNotNull('deliveryLatitude', instance.deliveryLatitude);
  writeNotNull('deliveryLongitude', instance.deliveryLongitude);
  writeNotNull('deliveryIntercom', instance.deliveryIntercom);
  writeNotNull('notes', instance.notes);
  writeNotNull('referenceCode', instance.referenceCode);
  writeNotNull('deliveryNotes', instance.deliveryNotes);
  writeNotNull('deliveringTime', instance.deliveringTime);
  writeNotNull('canChangeServicePoint', instance.canChangeServicePoint);
  writeNotNull('paymentStatus', instance.paymentStatus);
  writeNotNull('deliveryTime', instance.deliveryTime?.toIso8601String());
  writeNotNull('supplementPrice', instance.supplementPrice);
  return val;
}

FFDetail _$FFDetailFromJson(Map<String, dynamic> json) => FFDetail(
      id: json['id'] as String?,
      productId: json['productId'] as int,
      productName: json['productName'] as String?,
      productShortName: json['productShortName'] as String?,
      sectionName: json['sectionName'] as String?,
      sectionId: json['sectionId'] as int? ?? 0,
      quantity: json['quantity'] as int? ?? 0,
      exitValue: json['exitValue'] as int?,
      unitPrice: (json['unitPrice'] as num?)?.toDouble() ?? 0,
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0,
      cookingTypeId: json['cookingTypeId'] as int?,
      cookingType: json['cookingType'] as String?,
      format: json['format'] as String?,
      variations: (json['variations'] as List<dynamic>?)
              ?.map((e) => FFVariation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      state: json['state'] as int? ?? 0,
      menuId: json['menuId'] as String?,
      menuName: json['menuName'] as String?,
    );

Map<String, dynamic> _$FFDetailToJson(FFDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['productId'] = instance.productId;
  writeNotNull('productName', instance.productName);
  writeNotNull('productShortName', instance.productShortName);
  writeNotNull('sectionName', instance.sectionName);
  val['sectionId'] = instance.sectionId;
  val['quantity'] = instance.quantity;
  writeNotNull('exitValue', instance.exitValue);
  val['unitPrice'] = instance.unitPrice;
  val['discount'] = instance.discount;
  val['totalPrice'] = instance.totalPrice;
  writeNotNull('cookingTypeId', instance.cookingTypeId);
  writeNotNull('cookingType', instance.cookingType);
  writeNotNull('format', instance.format);
  val['variations'] = instance.variations.map((e) => e.toJson()).toList();
  val['state'] = instance.state;
  writeNotNull('menuId', instance.menuId);
  writeNotNull('menuName', instance.menuName);
  return val;
}

FFVariation _$FFVariationFromJson(Map<String, dynamic> json) => FFVariation(
      foodId: json['foodId'] as int,
      foodName: json['foodName'] as String?,
      price: (json['price'] as num).toDouble(),
      alternative: json['alternative'] as bool?,
      variationType: json['variationType'] as int?,
    );

Map<String, dynamic> _$FFVariationToJson(FFVariation instance) {
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
  writeNotNull('alternative', instance.alternative);
  writeNotNull('variationType', instance.variationType);
  return val;
}
