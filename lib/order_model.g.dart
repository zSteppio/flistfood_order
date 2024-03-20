// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FFOrderIDCWProxy {
  FFOrderID id(String id);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFOrderID(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFOrderID(...).copyWith(id: 12, name: "My name")
  /// ````
  FFOrderID call({
    String? id,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFOrderID.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFOrderID.copyWith.fieldName(...)`
class _$FFOrderIDCWProxyImpl implements _$FFOrderIDCWProxy {
  final FFOrderID _value;

  const _$FFOrderIDCWProxyImpl(this._value);

  @override
  FFOrderID id(String id) => this(id: id);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFOrderID(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFOrderID(...).copyWith(id: 12, name: "My name")
  /// ````
  FFOrderID call({
    Object? id = const $CopyWithPlaceholder(),
  }) {
    return FFOrderID(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
    );
  }
}

extension $FFOrderIDCopyWith on FFOrderID {
  /// Returns a callable class that can be used as follows: `instanceOfFFOrderID.copyWith(...)` or like so:`instanceOfFFOrderID.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFOrderIDCWProxy get copyWith => _$FFOrderIDCWProxyImpl(this);
}

abstract class _$FFOrderCWProxy {
  FFOrder deliveryInfo(FFDeliveryInfo? deliveryInfo);

  FFOrder details(List<FFDetail> details);

  FFOrder exitValue(int? exitValue);

  FFOrder expDate(String? expDate);

  FFOrder id(String? id);

  FFOrder mustBeReadyOn(DateTime? mustBeReadyOn);

  FFOrder note(String? note);

  FFOrder number(int number);

  FFOrder openDate(DateTime? openDate);

  FFOrder ownerId(String ownerId);

  FFOrder ownerName(String? ownerName);

  FFOrder paymentType(int? paymentType);

  FFOrder seatNumber(String? seatNumber);

  FFOrder servicePointId(String servicePointId);

  FFOrder source(String? source);

  FFOrder ticketId(String? ticketId);

  FFOrder totalPrice(double? totalPrice);

  FFOrder totalQuantity(int totalQuantity);

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
    String? expDate,
    String? id,
    DateTime? mustBeReadyOn,
    String? note,
    int? number,
    DateTime? openDate,
    String? ownerId,
    String? ownerName,
    int? paymentType,
    String? seatNumber,
    String? servicePointId,
    String? source,
    String? ticketId,
    double? totalPrice,
    int? totalQuantity,
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
  FFOrder expDate(String? expDate) => this(expDate: expDate);

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
  FFOrder openDate(DateTime? openDate) => this(openDate: openDate);

  @override
  FFOrder ownerId(String ownerId) => this(ownerId: ownerId);

  @override
  FFOrder ownerName(String? ownerName) => this(ownerName: ownerName);

  @override
  FFOrder paymentType(int? paymentType) => this(paymentType: paymentType);

  @override
  FFOrder seatNumber(String? seatNumber) => this(seatNumber: seatNumber);

  @override
  FFOrder servicePointId(String servicePointId) =>
      this(servicePointId: servicePointId);

  @override
  FFOrder source(String? source) => this(source: source);

  @override
  FFOrder ticketId(String? ticketId) => this(ticketId: ticketId);

  @override
  FFOrder totalPrice(double? totalPrice) => this(totalPrice: totalPrice);

  @override
  FFOrder totalQuantity(int totalQuantity) =>
      this(totalQuantity: totalQuantity);

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
    Object? expDate = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? mustBeReadyOn = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
    Object? number = const $CopyWithPlaceholder(),
    Object? openDate = const $CopyWithPlaceholder(),
    Object? ownerId = const $CopyWithPlaceholder(),
    Object? ownerName = const $CopyWithPlaceholder(),
    Object? paymentType = const $CopyWithPlaceholder(),
    Object? seatNumber = const $CopyWithPlaceholder(),
    Object? servicePointId = const $CopyWithPlaceholder(),
    Object? source = const $CopyWithPlaceholder(),
    Object? ticketId = const $CopyWithPlaceholder(),
    Object? totalPrice = const $CopyWithPlaceholder(),
    Object? totalQuantity = const $CopyWithPlaceholder(),
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
      expDate: expDate == const $CopyWithPlaceholder()
          ? _value.expDate
          // ignore: cast_nullable_to_non_nullable
          : expDate as String?,
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
      openDate: openDate == const $CopyWithPlaceholder()
          ? _value.openDate
          // ignore: cast_nullable_to_non_nullable
          : openDate as DateTime?,
      ownerId: ownerId == const $CopyWithPlaceholder() || ownerId == null
          ? _value.ownerId
          // ignore: cast_nullable_to_non_nullable
          : ownerId as String,
      ownerName: ownerName == const $CopyWithPlaceholder()
          ? _value.ownerName
          // ignore: cast_nullable_to_non_nullable
          : ownerName as String?,
      paymentType: paymentType == const $CopyWithPlaceholder()
          ? _value.paymentType
          // ignore: cast_nullable_to_non_nullable
          : paymentType as int?,
      seatNumber: seatNumber == const $CopyWithPlaceholder()
          ? _value.seatNumber
          // ignore: cast_nullable_to_non_nullable
          : seatNumber as String?,
      servicePointId: servicePointId == const $CopyWithPlaceholder() ||
              servicePointId == null
          ? _value.servicePointId
          // ignore: cast_nullable_to_non_nullable
          : servicePointId as String,
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
      totalQuantity:
          totalQuantity == const $CopyWithPlaceholder() || totalQuantity == null
              ? _value.totalQuantity
              // ignore: cast_nullable_to_non_nullable
              : totalQuantity as int,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
    );
  }
}

extension $FFOrderCopyWith on FFOrder {
  /// Returns a callable class that can be used as follows: `instanceOfFFOrder.copyWith(...)` or like so:`instanceOfFFOrder.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFOrderCWProxy get copyWith => _$FFOrderCWProxyImpl(this);
}

abstract class _$FFDetailCWProxy {
  FFDetail cookingType(String? cookingType);

  FFDetail cookingTypeId(int? cookingTypeId);

  FFDetail discount(double? discount);

  FFDetail exitValue(int? exitValue);

  FFDetail format(String? format);

  FFDetail formatId(int? formatId);

  FFDetail id(String? id);

  FFDetail menuId(String? menuId);

  FFDetail productId(int productId);

  FFDetail productName(String? productName);

  FFDetail quantity(int quantity);

  FFDetail sectionId(int sectionId);

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
    int? formatId,
    String? id,
    String? menuId,
    int? productId,
    String? productName,
    int? quantity,
    int? sectionId,
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
  FFDetail discount(double? discount) => this(discount: discount);

  @override
  FFDetail exitValue(int? exitValue) => this(exitValue: exitValue);

  @override
  FFDetail format(String? format) => this(format: format);

  @override
  FFDetail formatId(int? formatId) => this(formatId: formatId);

  @override
  FFDetail id(String? id) => this(id: id);

  @override
  FFDetail menuId(String? menuId) => this(menuId: menuId);

  @override
  FFDetail productId(int productId) => this(productId: productId);

  @override
  FFDetail productName(String? productName) => this(productName: productName);

  @override
  FFDetail quantity(int quantity) => this(quantity: quantity);

  @override
  FFDetail sectionId(int sectionId) => this(sectionId: sectionId);

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
    Object? formatId = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? menuId = const $CopyWithPlaceholder(),
    Object? productId = const $CopyWithPlaceholder(),
    Object? productName = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? sectionId = const $CopyWithPlaceholder(),
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
      discount: discount == const $CopyWithPlaceholder()
          ? _value.discount
          // ignore: cast_nullable_to_non_nullable
          : discount as double?,
      exitValue: exitValue == const $CopyWithPlaceholder()
          ? _value.exitValue
          // ignore: cast_nullable_to_non_nullable
          : exitValue as int?,
      format: format == const $CopyWithPlaceholder()
          ? _value.format
          // ignore: cast_nullable_to_non_nullable
          : format as String?,
      formatId: formatId == const $CopyWithPlaceholder()
          ? _value.formatId
          // ignore: cast_nullable_to_non_nullable
          : formatId as int?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      menuId: menuId == const $CopyWithPlaceholder()
          ? _value.menuId
          // ignore: cast_nullable_to_non_nullable
          : menuId as String?,
      productId: productId == const $CopyWithPlaceholder() || productId == null
          ? _value.productId
          // ignore: cast_nullable_to_non_nullable
          : productId as int,
      productName: productName == const $CopyWithPlaceholder()
          ? _value.productName
          // ignore: cast_nullable_to_non_nullable
          : productName as String?,
      quantity: quantity == const $CopyWithPlaceholder() || quantity == null
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int,
      sectionId: sectionId == const $CopyWithPlaceholder() || sectionId == null
          ? _value.sectionId
          // ignore: cast_nullable_to_non_nullable
          : sectionId as int,
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
  // ignore: library_private_types_in_public_api
  _$FFDetailCWProxy get copyWith => _$FFDetailCWProxyImpl(this);
}

abstract class _$FFVariationCWProxy {
  FFVariation alternative(bool? alternative);

  FFVariation foodId(int foodId);

  FFVariation foodName(String? foodName);

  FFVariation price(double price);

  FFVariation selectionPriority(int? selectionPriority);

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
    int? selectionPriority,
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
  FFVariation selectionPriority(int? selectionPriority) =>
      this(selectionPriority: selectionPriority);

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
    Object? selectionPriority = const $CopyWithPlaceholder(),
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
      selectionPriority: selectionPriority == const $CopyWithPlaceholder()
          ? _value.selectionPriority
          // ignore: cast_nullable_to_non_nullable
          : selectionPriority as int?,
      variationType: variationType == const $CopyWithPlaceholder()
          ? _value.variationType
          // ignore: cast_nullable_to_non_nullable
          : variationType as int?,
    );
  }
}

extension $FFVariationCopyWith on FFVariation {
  /// Returns a callable class that can be used as follows: `instanceOfFFVariation.copyWith(...)` or like so:`instanceOfFFVariation.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFVariationCWProxy get copyWith => _$FFVariationCWProxyImpl(this);
}

abstract class _$FFDeliveryInfoCWProxy {
  FFDeliveryInfo canChangeServicePoint(bool? canChangeServicePoint);

  FFDeliveryInfo customerName(String? customerName);

  FFDeliveryInfo deliveringTime(int? deliveringTime);

  FFDeliveryInfo deliveryAddress(String? deliveryAddress);

  FFDeliveryInfo deliveryIntercom(String? deliveryIntercom);

  FFDeliveryInfo deliveryLatitude(double? deliveryLatitude);

  FFDeliveryInfo deliveryLongitude(double? deliveryLongitude);

  FFDeliveryInfo deliveryTime(String? deliveryTime);

  FFDeliveryInfo notes(String? notes);

  FFDeliveryInfo paymentType(int? paymentType);

  FFDeliveryInfo phoneNumber(String? phoneNumber);

  FFDeliveryInfo referenceCode(String? referenceCode);

  FFDeliveryInfo supplementPrice(double? supplementPrice);

  FFDeliveryInfo zoneId(String zoneId);

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
    String? deliveryTime,
    String? notes,
    int? paymentType,
    String? phoneNumber,
    String? referenceCode,
    double? supplementPrice,
    String? zoneId,
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
  FFDeliveryInfo deliveryTime(String? deliveryTime) =>
      this(deliveryTime: deliveryTime);

  @override
  FFDeliveryInfo notes(String? notes) => this(notes: notes);

  @override
  FFDeliveryInfo paymentType(int? paymentType) =>
      this(paymentType: paymentType);

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
  FFDeliveryInfo zoneId(String zoneId) => this(zoneId: zoneId);

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
    Object? deliveryTime = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
    Object? paymentType = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
    Object? referenceCode = const $CopyWithPlaceholder(),
    Object? supplementPrice = const $CopyWithPlaceholder(),
    Object? zoneId = const $CopyWithPlaceholder(),
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
      deliveryTime: deliveryTime == const $CopyWithPlaceholder()
          ? _value.deliveryTime
          // ignore: cast_nullable_to_non_nullable
          : deliveryTime as String?,
      notes: notes == const $CopyWithPlaceholder()
          ? _value.notes
          // ignore: cast_nullable_to_non_nullable
          : notes as String?,
      paymentType: paymentType == const $CopyWithPlaceholder()
          ? _value.paymentType
          // ignore: cast_nullable_to_non_nullable
          : paymentType as int?,
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
      zoneId: zoneId == const $CopyWithPlaceholder() || zoneId == null
          ? _value.zoneId
          // ignore: cast_nullable_to_non_nullable
          : zoneId as String,
    );
  }
}

extension $FFDeliveryInfoCopyWith on FFDeliveryInfo {
  /// Returns a callable class that can be used as follows: `instanceOfFFDeliveryInfo.copyWith(...)` or like so:`instanceOfFFDeliveryInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFDeliveryInfoCWProxy get copyWith => _$FFDeliveryInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FFOrderID _$FFOrderIDFromJson(Map<String, dynamic> json) => FFOrderID(
      id: json['id'] as String,
    );

Map<String, dynamic> _$FFOrderIDToJson(FFOrderID instance) => <String, dynamic>{
      'id': instance.id,
    };

FFOrder _$FFOrderFromJson(Map<String, dynamic> json) => FFOrder(
      id: json['id'] as String?,
      source: json['source'] as String?,
      servicePointId: json['servicePointId'] as String,
      ticketId: json['ticketId'] as String?,
      mustBeReadyOn: json['mustBeReadyOn'] == null
          ? null
          : DateTime.parse(json['mustBeReadyOn'] as String),
      exitValue: json['exitValue'] as int?,
      details: (json['details'] as List<dynamic>)
          .map((e) => FFDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] as String?,
      ownerId: json['ownerId'] as String,
      deliveryInfo: json['deliveryInfo'] == null
          ? null
          : FFDeliveryInfo.fromJson(
              json['deliveryInfo'] as Map<String, dynamic>),
      paymentType: json['paymentType'] as int?,
      seatNumber: json['seatNumber'] as String?,
      note: json['note'] as String?,
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      openDate: json['openDate'] == null
          ? null
          : DateTime.parse(json['openDate'] as String),
      ownerName: json['ownerName'] as String?,
      expDate: json['expDate'] as String?,
      number: json['number'] as int? ?? 0,
      totalQuantity: json['totalQuantity'] as int? ?? 0,
    );

Map<String, dynamic> _$FFOrderToJson(FFOrder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('source', instance.source);
  val['servicePointId'] = instance.servicePointId;
  writeNotNull('ticketId', instance.ticketId);
  writeNotNull('mustBeReadyOn', instance.mustBeReadyOn?.toIso8601String());
  writeNotNull('exitValue', instance.exitValue);
  val['details'] = instance.details.map((e) => e.toJson()).toList();
  writeNotNull('userId', instance.userId);
  val['ownerId'] = instance.ownerId;
  writeNotNull('deliveryInfo', instance.deliveryInfo?.toJson());
  writeNotNull('paymentType', instance.paymentType);
  writeNotNull('seatNumber', instance.seatNumber);
  writeNotNull('note', instance.note);
  writeNotNull('totalPrice', instance.totalPrice);
  val['number'] = instance.number;
  writeNotNull('openDate', instance.openDate?.toIso8601String());
  writeNotNull('ownerName', instance.ownerName);
  writeNotNull('expDate', instance.expDate);
  val['totalQuantity'] = instance.totalQuantity;
  return val;
}

FFDetail _$FFDetailFromJson(Map<String, dynamic> json) => FFDetail(
      productId: json['productId'] as int,
      sectionId: json['sectionId'] as int? ?? 0,
      quantity: json['quantity'] as int? ?? 0,
      exitValue: json['exitValue'] as int?,
      unitPrice: (json['unitPrice'] as num?)?.toDouble() ?? 0,
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
      cookingTypeId: json['cookingTypeId'] as int?,
      format: json['format'] as String?,
      variations: (json['variations'] as List<dynamic>?)
              ?.map((e) => FFVariation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      menuId: json['menuId'] as String?,
      productName: json['productName'] as String?,
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0,
      cookingType: json['cookingType'] as String?,
      id: json['id'] as String?,
      formatId: json['formatId'] as int?,
    );

Map<String, dynamic> _$FFDetailToJson(FFDetail instance) {
  final val = <String, dynamic>{
    'productId': instance.productId,
    'sectionId': instance.sectionId,
    'quantity': instance.quantity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('exitValue', instance.exitValue);
  val['unitPrice'] = instance.unitPrice;
  writeNotNull('discount', instance.discount);
  writeNotNull('cookingTypeId', instance.cookingTypeId);
  writeNotNull('format', instance.format);
  writeNotNull('formatId', instance.formatId);
  val['variations'] = instance.variations.map((e) => e.toJson()).toList();
  writeNotNull('menuId', instance.menuId);
  writeNotNull('productName', instance.productName);
  val['totalPrice'] = instance.totalPrice;
  writeNotNull('cookingType', instance.cookingType);
  writeNotNull('id', instance.id);
  return val;
}

FFVariation _$FFVariationFromJson(Map<String, dynamic> json) => FFVariation(
      foodId: json['foodId'] as int,
      alternative: json['alternative'] as bool?,
      selectionPriority: json['selectionPriority'] as int?,
      variationType: json['variationType'] as int?,
      foodName: json['foodName'] as String?,
      price: (json['price'] as num).toDouble(),
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

  writeNotNull('alternative', instance.alternative);
  writeNotNull('variationType', instance.variationType);
  writeNotNull('selectionPriority', instance.selectionPriority);
  writeNotNull('foodName', instance.foodName);
  val['price'] = instance.price;
  return val;
}

FFDeliveryInfo _$FFDeliveryInfoFromJson(Map<String, dynamic> json) =>
    FFDeliveryInfo(
      referenceCode: json['referenceCode'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      customerName: json['customerName'] as String?,
      deliveryAddress: json['deliveryAddress'] as String?,
      deliveryLatitude: (json['deliveryLatitude'] as num?)?.toDouble(),
      deliveryLongitude: (json['deliveryLongitude'] as num?)?.toDouble(),
      deliveryIntercom: json['deliveryIntercom'] as String?,
      deliveringTime: json['deliveringTime'] as int?,
      notes: json['notes'] as String?,
      deliveryTime: json['deliveryTime'] as String?,
      canChangeServicePoint: json['canChangeServicePoint'] as bool?,
      zoneId: json['zoneId'] as String,
      supplementPrice: (json['supplementPrice'] as num?)?.toDouble(),
      paymentType: json['paymentType'] as int?,
    );

Map<String, dynamic> _$FFDeliveryInfoToJson(FFDeliveryInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('referenceCode', instance.referenceCode);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('customerName', instance.customerName);
  writeNotNull('deliveryAddress', instance.deliveryAddress);
  writeNotNull('deliveryLatitude', instance.deliveryLatitude);
  writeNotNull('deliveryLongitude', instance.deliveryLongitude);
  writeNotNull('deliveryIntercom', instance.deliveryIntercom);
  writeNotNull('deliveringTime', instance.deliveringTime);
  writeNotNull('notes', instance.notes);
  writeNotNull('deliveryTime', instance.deliveryTime);
  writeNotNull('canChangeServicePoint', instance.canChangeServicePoint);
  val['zoneId'] = instance.zoneId;
  writeNotNull('supplementPrice', instance.supplementPrice);
  writeNotNull('paymentType', instance.paymentType);
  return val;
}
