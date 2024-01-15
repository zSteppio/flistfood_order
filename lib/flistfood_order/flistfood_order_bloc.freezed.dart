// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flistfood_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlistfoodOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String servicePointId) getOrderByServicePoint,
    required TResult Function(String servicePointId) deleteOrderByServicePoint,
    required TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)
        addProductOrDetailToORder,
    required TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)
        removeProductToOrder,
    required TResult Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)
        sendOrder,
    required TResult Function() removeAllOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String servicePointId)? getOrderByServicePoint,
    TResult? Function(String servicePointId)? deleteOrderByServicePoint,
    TResult? Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        addProductOrDetailToORder,
    TResult? Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        removeProductToOrder,
    TResult? Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)?
        sendOrder,
    TResult? Function()? removeAllOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String servicePointId)? getOrderByServicePoint,
    TResult Function(String servicePointId)? deleteOrderByServicePoint,
    TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        addProductOrDetailToORder,
    TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        removeProductToOrder,
    TResult Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)?
        sendOrder,
    TResult Function()? removeAllOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderByServicePoint value)
        getOrderByServicePoint,
    required TResult Function(_DeleteOrderByServicePoint value)
        deleteOrderByServicePoint,
    required TResult Function(_AddProductOrDetailToORder value)
        addProductOrDetailToORder,
    required TResult Function(_RemoveProductToOrder value) removeProductToOrder,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_RemoveAllOrder value) removeAllOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderByServicePoint value)? getOrderByServicePoint,
    TResult? Function(_DeleteOrderByServicePoint value)?
        deleteOrderByServicePoint,
    TResult? Function(_AddProductOrDetailToORder value)?
        addProductOrDetailToORder,
    TResult? Function(_RemoveProductToOrder value)? removeProductToOrder,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_RemoveAllOrder value)? removeAllOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderByServicePoint value)? getOrderByServicePoint,
    TResult Function(_DeleteOrderByServicePoint value)?
        deleteOrderByServicePoint,
    TResult Function(_AddProductOrDetailToORder value)?
        addProductOrDetailToORder,
    TResult Function(_RemoveProductToOrder value)? removeProductToOrder,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_RemoveAllOrder value)? removeAllOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlistfoodOrderEventCopyWith<$Res> {
  factory $FlistfoodOrderEventCopyWith(
          FlistfoodOrderEvent value, $Res Function(FlistfoodOrderEvent) then) =
      _$FlistfoodOrderEventCopyWithImpl<$Res, FlistfoodOrderEvent>;
}

/// @nodoc
class _$FlistfoodOrderEventCopyWithImpl<$Res, $Val extends FlistfoodOrderEvent>
    implements $FlistfoodOrderEventCopyWith<$Res> {
  _$FlistfoodOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOrderByServicePointImplCopyWith<$Res> {
  factory _$$GetOrderByServicePointImplCopyWith(
          _$GetOrderByServicePointImpl value,
          $Res Function(_$GetOrderByServicePointImpl) then) =
      __$$GetOrderByServicePointImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String servicePointId});
}

/// @nodoc
class __$$GetOrderByServicePointImplCopyWithImpl<$Res>
    extends _$FlistfoodOrderEventCopyWithImpl<$Res,
        _$GetOrderByServicePointImpl>
    implements _$$GetOrderByServicePointImplCopyWith<$Res> {
  __$$GetOrderByServicePointImplCopyWithImpl(
      _$GetOrderByServicePointImpl _value,
      $Res Function(_$GetOrderByServicePointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servicePointId = null,
  }) {
    return _then(_$GetOrderByServicePointImpl(
      servicePointId: null == servicePointId
          ? _value.servicePointId
          : servicePointId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOrderByServicePointImpl implements _GetOrderByServicePoint {
  const _$GetOrderByServicePointImpl({required this.servicePointId});

  @override
  final String servicePointId;

  @override
  String toString() {
    return 'FlistfoodOrderEvent.getOrderByServicePoint(servicePointId: $servicePointId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderByServicePointImpl &&
            (identical(other.servicePointId, servicePointId) ||
                other.servicePointId == servicePointId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, servicePointId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderByServicePointImplCopyWith<_$GetOrderByServicePointImpl>
      get copyWith => __$$GetOrderByServicePointImplCopyWithImpl<
          _$GetOrderByServicePointImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String servicePointId) getOrderByServicePoint,
    required TResult Function(String servicePointId) deleteOrderByServicePoint,
    required TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)
        addProductOrDetailToORder,
    required TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)
        removeProductToOrder,
    required TResult Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)
        sendOrder,
    required TResult Function() removeAllOrder,
  }) {
    return getOrderByServicePoint(servicePointId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String servicePointId)? getOrderByServicePoint,
    TResult? Function(String servicePointId)? deleteOrderByServicePoint,
    TResult? Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        addProductOrDetailToORder,
    TResult? Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        removeProductToOrder,
    TResult? Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)?
        sendOrder,
    TResult? Function()? removeAllOrder,
  }) {
    return getOrderByServicePoint?.call(servicePointId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String servicePointId)? getOrderByServicePoint,
    TResult Function(String servicePointId)? deleteOrderByServicePoint,
    TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        addProductOrDetailToORder,
    TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        removeProductToOrder,
    TResult Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)?
        sendOrder,
    TResult Function()? removeAllOrder,
    required TResult orElse(),
  }) {
    if (getOrderByServicePoint != null) {
      return getOrderByServicePoint(servicePointId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderByServicePoint value)
        getOrderByServicePoint,
    required TResult Function(_DeleteOrderByServicePoint value)
        deleteOrderByServicePoint,
    required TResult Function(_AddProductOrDetailToORder value)
        addProductOrDetailToORder,
    required TResult Function(_RemoveProductToOrder value) removeProductToOrder,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_RemoveAllOrder value) removeAllOrder,
  }) {
    return getOrderByServicePoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderByServicePoint value)? getOrderByServicePoint,
    TResult? Function(_DeleteOrderByServicePoint value)?
        deleteOrderByServicePoint,
    TResult? Function(_AddProductOrDetailToORder value)?
        addProductOrDetailToORder,
    TResult? Function(_RemoveProductToOrder value)? removeProductToOrder,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_RemoveAllOrder value)? removeAllOrder,
  }) {
    return getOrderByServicePoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderByServicePoint value)? getOrderByServicePoint,
    TResult Function(_DeleteOrderByServicePoint value)?
        deleteOrderByServicePoint,
    TResult Function(_AddProductOrDetailToORder value)?
        addProductOrDetailToORder,
    TResult Function(_RemoveProductToOrder value)? removeProductToOrder,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_RemoveAllOrder value)? removeAllOrder,
    required TResult orElse(),
  }) {
    if (getOrderByServicePoint != null) {
      return getOrderByServicePoint(this);
    }
    return orElse();
  }
}

abstract class _GetOrderByServicePoint implements FlistfoodOrderEvent {
  const factory _GetOrderByServicePoint(
      {required final String servicePointId}) = _$GetOrderByServicePointImpl;

  String get servicePointId;
  @JsonKey(ignore: true)
  _$$GetOrderByServicePointImplCopyWith<_$GetOrderByServicePointImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteOrderByServicePointImplCopyWith<$Res> {
  factory _$$DeleteOrderByServicePointImplCopyWith(
          _$DeleteOrderByServicePointImpl value,
          $Res Function(_$DeleteOrderByServicePointImpl) then) =
      __$$DeleteOrderByServicePointImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String servicePointId});
}

/// @nodoc
class __$$DeleteOrderByServicePointImplCopyWithImpl<$Res>
    extends _$FlistfoodOrderEventCopyWithImpl<$Res,
        _$DeleteOrderByServicePointImpl>
    implements _$$DeleteOrderByServicePointImplCopyWith<$Res> {
  __$$DeleteOrderByServicePointImplCopyWithImpl(
      _$DeleteOrderByServicePointImpl _value,
      $Res Function(_$DeleteOrderByServicePointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servicePointId = null,
  }) {
    return _then(_$DeleteOrderByServicePointImpl(
      servicePointId: null == servicePointId
          ? _value.servicePointId
          : servicePointId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteOrderByServicePointImpl implements _DeleteOrderByServicePoint {
  const _$DeleteOrderByServicePointImpl({required this.servicePointId});

  @override
  final String servicePointId;

  @override
  String toString() {
    return 'FlistfoodOrderEvent.deleteOrderByServicePoint(servicePointId: $servicePointId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteOrderByServicePointImpl &&
            (identical(other.servicePointId, servicePointId) ||
                other.servicePointId == servicePointId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, servicePointId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteOrderByServicePointImplCopyWith<_$DeleteOrderByServicePointImpl>
      get copyWith => __$$DeleteOrderByServicePointImplCopyWithImpl<
          _$DeleteOrderByServicePointImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String servicePointId) getOrderByServicePoint,
    required TResult Function(String servicePointId) deleteOrderByServicePoint,
    required TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)
        addProductOrDetailToORder,
    required TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)
        removeProductToOrder,
    required TResult Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)
        sendOrder,
    required TResult Function() removeAllOrder,
  }) {
    return deleteOrderByServicePoint(servicePointId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String servicePointId)? getOrderByServicePoint,
    TResult? Function(String servicePointId)? deleteOrderByServicePoint,
    TResult? Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        addProductOrDetailToORder,
    TResult? Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        removeProductToOrder,
    TResult? Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)?
        sendOrder,
    TResult? Function()? removeAllOrder,
  }) {
    return deleteOrderByServicePoint?.call(servicePointId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String servicePointId)? getOrderByServicePoint,
    TResult Function(String servicePointId)? deleteOrderByServicePoint,
    TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        addProductOrDetailToORder,
    TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        removeProductToOrder,
    TResult Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)?
        sendOrder,
    TResult Function()? removeAllOrder,
    required TResult orElse(),
  }) {
    if (deleteOrderByServicePoint != null) {
      return deleteOrderByServicePoint(servicePointId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderByServicePoint value)
        getOrderByServicePoint,
    required TResult Function(_DeleteOrderByServicePoint value)
        deleteOrderByServicePoint,
    required TResult Function(_AddProductOrDetailToORder value)
        addProductOrDetailToORder,
    required TResult Function(_RemoveProductToOrder value) removeProductToOrder,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_RemoveAllOrder value) removeAllOrder,
  }) {
    return deleteOrderByServicePoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderByServicePoint value)? getOrderByServicePoint,
    TResult? Function(_DeleteOrderByServicePoint value)?
        deleteOrderByServicePoint,
    TResult? Function(_AddProductOrDetailToORder value)?
        addProductOrDetailToORder,
    TResult? Function(_RemoveProductToOrder value)? removeProductToOrder,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_RemoveAllOrder value)? removeAllOrder,
  }) {
    return deleteOrderByServicePoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderByServicePoint value)? getOrderByServicePoint,
    TResult Function(_DeleteOrderByServicePoint value)?
        deleteOrderByServicePoint,
    TResult Function(_AddProductOrDetailToORder value)?
        addProductOrDetailToORder,
    TResult Function(_RemoveProductToOrder value)? removeProductToOrder,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_RemoveAllOrder value)? removeAllOrder,
    required TResult orElse(),
  }) {
    if (deleteOrderByServicePoint != null) {
      return deleteOrderByServicePoint(this);
    }
    return orElse();
  }
}

abstract class _DeleteOrderByServicePoint implements FlistfoodOrderEvent {
  const factory _DeleteOrderByServicePoint(
      {required final String servicePointId}) = _$DeleteOrderByServicePointImpl;

  String get servicePointId;
  @JsonKey(ignore: true)
  _$$DeleteOrderByServicePointImplCopyWith<_$DeleteOrderByServicePointImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductOrDetailToORderImplCopyWith<$Res> {
  factory _$$AddProductOrDetailToORderImplCopyWith(
          _$AddProductOrDetailToORderImpl value,
          $Res Function(_$AddProductOrDetailToORderImpl) then) =
      __$$AddProductOrDetailToORderImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String currentServicePoint,
      String? productJson,
      String? detailProductJson,
      String? formatProductJson,
      String ownerId,
      String ownerName,
      String? userId,
      DateTime opneDate,
      double? deliveryCost,
      double? deliveryServicePrice,
      bool isDelivery});
}

/// @nodoc
class __$$AddProductOrDetailToORderImplCopyWithImpl<$Res>
    extends _$FlistfoodOrderEventCopyWithImpl<$Res,
        _$AddProductOrDetailToORderImpl>
    implements _$$AddProductOrDetailToORderImplCopyWith<$Res> {
  __$$AddProductOrDetailToORderImplCopyWithImpl(
      _$AddProductOrDetailToORderImpl _value,
      $Res Function(_$AddProductOrDetailToORderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentServicePoint = null,
    Object? productJson = freezed,
    Object? detailProductJson = freezed,
    Object? formatProductJson = freezed,
    Object? ownerId = null,
    Object? ownerName = null,
    Object? userId = freezed,
    Object? opneDate = null,
    Object? deliveryCost = freezed,
    Object? deliveryServicePrice = freezed,
    Object? isDelivery = null,
  }) {
    return _then(_$AddProductOrDetailToORderImpl(
      currentServicePoint: null == currentServicePoint
          ? _value.currentServicePoint
          : currentServicePoint // ignore: cast_nullable_to_non_nullable
              as String,
      productJson: freezed == productJson
          ? _value.productJson
          : productJson // ignore: cast_nullable_to_non_nullable
              as String?,
      detailProductJson: freezed == detailProductJson
          ? _value.detailProductJson
          : detailProductJson // ignore: cast_nullable_to_non_nullable
              as String?,
      formatProductJson: freezed == formatProductJson
          ? _value.formatProductJson
          : formatProductJson // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      opneDate: null == opneDate
          ? _value.opneDate
          : opneDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryCost: freezed == deliveryCost
          ? _value.deliveryCost
          : deliveryCost // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryServicePrice: freezed == deliveryServicePrice
          ? _value.deliveryServicePrice
          : deliveryServicePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      isDelivery: null == isDelivery
          ? _value.isDelivery
          : isDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddProductOrDetailToORderImpl implements _AddProductOrDetailToORder {
  const _$AddProductOrDetailToORderImpl(
      {required this.currentServicePoint,
      this.productJson,
      this.detailProductJson,
      this.formatProductJson,
      required this.ownerId,
      required this.ownerName,
      required this.userId,
      required this.opneDate,
      required this.deliveryCost,
      required this.deliveryServicePrice,
      required this.isDelivery});

  @override
  final String currentServicePoint;
  @override
  final String? productJson;
  @override
  final String? detailProductJson;
  @override
  final String? formatProductJson;
  @override
  final String ownerId;
  @override
  final String ownerName;
  @override
  final String? userId;
  @override
  final DateTime opneDate;
  @override
  final double? deliveryCost;
  @override
  final double? deliveryServicePrice;
  @override
  final bool isDelivery;

  @override
  String toString() {
    return 'FlistfoodOrderEvent.addProductOrDetailToORder(currentServicePoint: $currentServicePoint, productJson: $productJson, detailProductJson: $detailProductJson, formatProductJson: $formatProductJson, ownerId: $ownerId, ownerName: $ownerName, userId: $userId, opneDate: $opneDate, deliveryCost: $deliveryCost, deliveryServicePrice: $deliveryServicePrice, isDelivery: $isDelivery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductOrDetailToORderImpl &&
            (identical(other.currentServicePoint, currentServicePoint) ||
                other.currentServicePoint == currentServicePoint) &&
            (identical(other.productJson, productJson) ||
                other.productJson == productJson) &&
            (identical(other.detailProductJson, detailProductJson) ||
                other.detailProductJson == detailProductJson) &&
            (identical(other.formatProductJson, formatProductJson) ||
                other.formatProductJson == formatProductJson) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.opneDate, opneDate) ||
                other.opneDate == opneDate) &&
            (identical(other.deliveryCost, deliveryCost) ||
                other.deliveryCost == deliveryCost) &&
            (identical(other.deliveryServicePrice, deliveryServicePrice) ||
                other.deliveryServicePrice == deliveryServicePrice) &&
            (identical(other.isDelivery, isDelivery) ||
                other.isDelivery == isDelivery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentServicePoint,
      productJson,
      detailProductJson,
      formatProductJson,
      ownerId,
      ownerName,
      userId,
      opneDate,
      deliveryCost,
      deliveryServicePrice,
      isDelivery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductOrDetailToORderImplCopyWith<_$AddProductOrDetailToORderImpl>
      get copyWith => __$$AddProductOrDetailToORderImplCopyWithImpl<
          _$AddProductOrDetailToORderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String servicePointId) getOrderByServicePoint,
    required TResult Function(String servicePointId) deleteOrderByServicePoint,
    required TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)
        addProductOrDetailToORder,
    required TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)
        removeProductToOrder,
    required TResult Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)
        sendOrder,
    required TResult Function() removeAllOrder,
  }) {
    return addProductOrDetailToORder(
        currentServicePoint,
        productJson,
        detailProductJson,
        formatProductJson,
        ownerId,
        ownerName,
        userId,
        opneDate,
        deliveryCost,
        deliveryServicePrice,
        isDelivery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String servicePointId)? getOrderByServicePoint,
    TResult? Function(String servicePointId)? deleteOrderByServicePoint,
    TResult? Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        addProductOrDetailToORder,
    TResult? Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        removeProductToOrder,
    TResult? Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)?
        sendOrder,
    TResult? Function()? removeAllOrder,
  }) {
    return addProductOrDetailToORder?.call(
        currentServicePoint,
        productJson,
        detailProductJson,
        formatProductJson,
        ownerId,
        ownerName,
        userId,
        opneDate,
        deliveryCost,
        deliveryServicePrice,
        isDelivery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String servicePointId)? getOrderByServicePoint,
    TResult Function(String servicePointId)? deleteOrderByServicePoint,
    TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        addProductOrDetailToORder,
    TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        removeProductToOrder,
    TResult Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)?
        sendOrder,
    TResult Function()? removeAllOrder,
    required TResult orElse(),
  }) {
    if (addProductOrDetailToORder != null) {
      return addProductOrDetailToORder(
          currentServicePoint,
          productJson,
          detailProductJson,
          formatProductJson,
          ownerId,
          ownerName,
          userId,
          opneDate,
          deliveryCost,
          deliveryServicePrice,
          isDelivery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderByServicePoint value)
        getOrderByServicePoint,
    required TResult Function(_DeleteOrderByServicePoint value)
        deleteOrderByServicePoint,
    required TResult Function(_AddProductOrDetailToORder value)
        addProductOrDetailToORder,
    required TResult Function(_RemoveProductToOrder value) removeProductToOrder,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_RemoveAllOrder value) removeAllOrder,
  }) {
    return addProductOrDetailToORder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderByServicePoint value)? getOrderByServicePoint,
    TResult? Function(_DeleteOrderByServicePoint value)?
        deleteOrderByServicePoint,
    TResult? Function(_AddProductOrDetailToORder value)?
        addProductOrDetailToORder,
    TResult? Function(_RemoveProductToOrder value)? removeProductToOrder,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_RemoveAllOrder value)? removeAllOrder,
  }) {
    return addProductOrDetailToORder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderByServicePoint value)? getOrderByServicePoint,
    TResult Function(_DeleteOrderByServicePoint value)?
        deleteOrderByServicePoint,
    TResult Function(_AddProductOrDetailToORder value)?
        addProductOrDetailToORder,
    TResult Function(_RemoveProductToOrder value)? removeProductToOrder,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_RemoveAllOrder value)? removeAllOrder,
    required TResult orElse(),
  }) {
    if (addProductOrDetailToORder != null) {
      return addProductOrDetailToORder(this);
    }
    return orElse();
  }
}

abstract class _AddProductOrDetailToORder implements FlistfoodOrderEvent {
  const factory _AddProductOrDetailToORder(
      {required final String currentServicePoint,
      final String? productJson,
      final String? detailProductJson,
      final String? formatProductJson,
      required final String ownerId,
      required final String ownerName,
      required final String? userId,
      required final DateTime opneDate,
      required final double? deliveryCost,
      required final double? deliveryServicePrice,
      required final bool isDelivery}) = _$AddProductOrDetailToORderImpl;

  String get currentServicePoint;
  String? get productJson;
  String? get detailProductJson;
  String? get formatProductJson;
  String get ownerId;
  String get ownerName;
  String? get userId;
  DateTime get opneDate;
  double? get deliveryCost;
  double? get deliveryServicePrice;
  bool get isDelivery;
  @JsonKey(ignore: true)
  _$$AddProductOrDetailToORderImplCopyWith<_$AddProductOrDetailToORderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProductToOrderImplCopyWith<$Res> {
  factory _$$RemoveProductToOrderImplCopyWith(_$RemoveProductToOrderImpl value,
          $Res Function(_$RemoveProductToOrderImpl) then) =
      __$$RemoveProductToOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String currentServicePoint,
      String? productJson,
      String? detailProductJson,
      String ownerId,
      String? userId,
      String ownerName,
      DateTime opneDate,
      double? deliveryCost,
      double? deliveryServicePrice,
      bool isDelivery});
}

/// @nodoc
class __$$RemoveProductToOrderImplCopyWithImpl<$Res>
    extends _$FlistfoodOrderEventCopyWithImpl<$Res, _$RemoveProductToOrderImpl>
    implements _$$RemoveProductToOrderImplCopyWith<$Res> {
  __$$RemoveProductToOrderImplCopyWithImpl(_$RemoveProductToOrderImpl _value,
      $Res Function(_$RemoveProductToOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentServicePoint = null,
    Object? productJson = freezed,
    Object? detailProductJson = freezed,
    Object? ownerId = null,
    Object? userId = freezed,
    Object? ownerName = null,
    Object? opneDate = null,
    Object? deliveryCost = freezed,
    Object? deliveryServicePrice = freezed,
    Object? isDelivery = null,
  }) {
    return _then(_$RemoveProductToOrderImpl(
      currentServicePoint: null == currentServicePoint
          ? _value.currentServicePoint
          : currentServicePoint // ignore: cast_nullable_to_non_nullable
              as String,
      productJson: freezed == productJson
          ? _value.productJson
          : productJson // ignore: cast_nullable_to_non_nullable
              as String?,
      detailProductJson: freezed == detailProductJson
          ? _value.detailProductJson
          : detailProductJson // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      opneDate: null == opneDate
          ? _value.opneDate
          : opneDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryCost: freezed == deliveryCost
          ? _value.deliveryCost
          : deliveryCost // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryServicePrice: freezed == deliveryServicePrice
          ? _value.deliveryServicePrice
          : deliveryServicePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      isDelivery: null == isDelivery
          ? _value.isDelivery
          : isDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RemoveProductToOrderImpl implements _RemoveProductToOrder {
  const _$RemoveProductToOrderImpl(
      {required this.currentServicePoint,
      this.productJson,
      this.detailProductJson,
      required this.ownerId,
      required this.userId,
      required this.ownerName,
      required this.opneDate,
      required this.deliveryCost,
      required this.deliveryServicePrice,
      required this.isDelivery});

  @override
  final String currentServicePoint;
  @override
  final String? productJson;
  @override
  final String? detailProductJson;
  @override
  final String ownerId;
  @override
  final String? userId;
  @override
  final String ownerName;
  @override
  final DateTime opneDate;
  @override
  final double? deliveryCost;
  @override
  final double? deliveryServicePrice;
  @override
  final bool isDelivery;

  @override
  String toString() {
    return 'FlistfoodOrderEvent.removeProductToOrder(currentServicePoint: $currentServicePoint, productJson: $productJson, detailProductJson: $detailProductJson, ownerId: $ownerId, userId: $userId, ownerName: $ownerName, opneDate: $opneDate, deliveryCost: $deliveryCost, deliveryServicePrice: $deliveryServicePrice, isDelivery: $isDelivery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveProductToOrderImpl &&
            (identical(other.currentServicePoint, currentServicePoint) ||
                other.currentServicePoint == currentServicePoint) &&
            (identical(other.productJson, productJson) ||
                other.productJson == productJson) &&
            (identical(other.detailProductJson, detailProductJson) ||
                other.detailProductJson == detailProductJson) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.opneDate, opneDate) ||
                other.opneDate == opneDate) &&
            (identical(other.deliveryCost, deliveryCost) ||
                other.deliveryCost == deliveryCost) &&
            (identical(other.deliveryServicePrice, deliveryServicePrice) ||
                other.deliveryServicePrice == deliveryServicePrice) &&
            (identical(other.isDelivery, isDelivery) ||
                other.isDelivery == isDelivery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentServicePoint,
      productJson,
      detailProductJson,
      ownerId,
      userId,
      ownerName,
      opneDate,
      deliveryCost,
      deliveryServicePrice,
      isDelivery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveProductToOrderImplCopyWith<_$RemoveProductToOrderImpl>
      get copyWith =>
          __$$RemoveProductToOrderImplCopyWithImpl<_$RemoveProductToOrderImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String servicePointId) getOrderByServicePoint,
    required TResult Function(String servicePointId) deleteOrderByServicePoint,
    required TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)
        addProductOrDetailToORder,
    required TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)
        removeProductToOrder,
    required TResult Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)
        sendOrder,
    required TResult Function() removeAllOrder,
  }) {
    return removeProductToOrder(
        currentServicePoint,
        productJson,
        detailProductJson,
        ownerId,
        userId,
        ownerName,
        opneDate,
        deliveryCost,
        deliveryServicePrice,
        isDelivery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String servicePointId)? getOrderByServicePoint,
    TResult? Function(String servicePointId)? deleteOrderByServicePoint,
    TResult? Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        addProductOrDetailToORder,
    TResult? Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        removeProductToOrder,
    TResult? Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)?
        sendOrder,
    TResult? Function()? removeAllOrder,
  }) {
    return removeProductToOrder?.call(
        currentServicePoint,
        productJson,
        detailProductJson,
        ownerId,
        userId,
        ownerName,
        opneDate,
        deliveryCost,
        deliveryServicePrice,
        isDelivery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String servicePointId)? getOrderByServicePoint,
    TResult Function(String servicePointId)? deleteOrderByServicePoint,
    TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        addProductOrDetailToORder,
    TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        removeProductToOrder,
    TResult Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)?
        sendOrder,
    TResult Function()? removeAllOrder,
    required TResult orElse(),
  }) {
    if (removeProductToOrder != null) {
      return removeProductToOrder(
          currentServicePoint,
          productJson,
          detailProductJson,
          ownerId,
          userId,
          ownerName,
          opneDate,
          deliveryCost,
          deliveryServicePrice,
          isDelivery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderByServicePoint value)
        getOrderByServicePoint,
    required TResult Function(_DeleteOrderByServicePoint value)
        deleteOrderByServicePoint,
    required TResult Function(_AddProductOrDetailToORder value)
        addProductOrDetailToORder,
    required TResult Function(_RemoveProductToOrder value) removeProductToOrder,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_RemoveAllOrder value) removeAllOrder,
  }) {
    return removeProductToOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderByServicePoint value)? getOrderByServicePoint,
    TResult? Function(_DeleteOrderByServicePoint value)?
        deleteOrderByServicePoint,
    TResult? Function(_AddProductOrDetailToORder value)?
        addProductOrDetailToORder,
    TResult? Function(_RemoveProductToOrder value)? removeProductToOrder,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_RemoveAllOrder value)? removeAllOrder,
  }) {
    return removeProductToOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderByServicePoint value)? getOrderByServicePoint,
    TResult Function(_DeleteOrderByServicePoint value)?
        deleteOrderByServicePoint,
    TResult Function(_AddProductOrDetailToORder value)?
        addProductOrDetailToORder,
    TResult Function(_RemoveProductToOrder value)? removeProductToOrder,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_RemoveAllOrder value)? removeAllOrder,
    required TResult orElse(),
  }) {
    if (removeProductToOrder != null) {
      return removeProductToOrder(this);
    }
    return orElse();
  }
}

abstract class _RemoveProductToOrder implements FlistfoodOrderEvent {
  const factory _RemoveProductToOrder(
      {required final String currentServicePoint,
      final String? productJson,
      final String? detailProductJson,
      required final String ownerId,
      required final String? userId,
      required final String ownerName,
      required final DateTime opneDate,
      required final double? deliveryCost,
      required final double? deliveryServicePrice,
      required final bool isDelivery}) = _$RemoveProductToOrderImpl;

  String get currentServicePoint;
  String? get productJson;
  String? get detailProductJson;
  String get ownerId;
  String? get userId;
  String get ownerName;
  DateTime get opneDate;
  double? get deliveryCost;
  double? get deliveryServicePrice;
  bool get isDelivery;
  @JsonKey(ignore: true)
  _$$RemoveProductToOrderImplCopyWith<_$RemoveProductToOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendOrderImplCopyWith<$Res> {
  factory _$$SendOrderImplCopyWith(
          _$SendOrderImpl value, $Res Function(_$SendOrderImpl) then) =
      __$$SendOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? orderId,
      String currentServicePoint,
      String? seatNumber,
      int? hour,
      int? minute,
      String note,
      FFDeliveryInfo? deliveryInfo,
      String? token,
      bool isAnonymous,
      String apiBaseUrl,
      String language});
}

/// @nodoc
class __$$SendOrderImplCopyWithImpl<$Res>
    extends _$FlistfoodOrderEventCopyWithImpl<$Res, _$SendOrderImpl>
    implements _$$SendOrderImplCopyWith<$Res> {
  __$$SendOrderImplCopyWithImpl(
      _$SendOrderImpl _value, $Res Function(_$SendOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? currentServicePoint = null,
    Object? seatNumber = freezed,
    Object? hour = freezed,
    Object? minute = freezed,
    Object? note = null,
    Object? deliveryInfo = freezed,
    Object? token = freezed,
    Object? isAnonymous = null,
    Object? apiBaseUrl = null,
    Object? language = null,
  }) {
    return _then(_$SendOrderImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentServicePoint: null == currentServicePoint
          ? _value.currentServicePoint
          : currentServicePoint // ignore: cast_nullable_to_non_nullable
              as String,
      seatNumber: freezed == seatNumber
          ? _value.seatNumber
          : seatNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      hour: freezed == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int?,
      minute: freezed == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int?,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryInfo: freezed == deliveryInfo
          ? _value.deliveryInfo
          : deliveryInfo // ignore: cast_nullable_to_non_nullable
              as FFDeliveryInfo?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      apiBaseUrl: null == apiBaseUrl
          ? _value.apiBaseUrl
          : apiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOrderImpl implements _SendOrder {
  const _$SendOrderImpl(
      {required this.orderId,
      required this.currentServicePoint,
      required this.seatNumber,
      required this.hour,
      required this.minute,
      required this.note,
      required this.deliveryInfo,
      required this.token,
      required this.isAnonymous,
      required this.apiBaseUrl,
      required this.language});

  @override
  final String? orderId;
  @override
  final String currentServicePoint;
  @override
  final String? seatNumber;
  @override
  final int? hour;
  @override
  final int? minute;
  @override
  final String note;
  @override
  final FFDeliveryInfo? deliveryInfo;
  @override
  final String? token;
  @override
  final bool isAnonymous;
  @override
  final String apiBaseUrl;
  @override
  final String language;

  @override
  String toString() {
    return 'FlistfoodOrderEvent.sendOrder(orderId: $orderId, currentServicePoint: $currentServicePoint, seatNumber: $seatNumber, hour: $hour, minute: $minute, note: $note, deliveryInfo: $deliveryInfo, token: $token, isAnonymous: $isAnonymous, apiBaseUrl: $apiBaseUrl, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.currentServicePoint, currentServicePoint) ||
                other.currentServicePoint == currentServicePoint) &&
            (identical(other.seatNumber, seatNumber) ||
                other.seatNumber == seatNumber) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.deliveryInfo, deliveryInfo) ||
                other.deliveryInfo == deliveryInfo) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.apiBaseUrl, apiBaseUrl) ||
                other.apiBaseUrl == apiBaseUrl) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      currentServicePoint,
      seatNumber,
      hour,
      minute,
      note,
      deliveryInfo,
      token,
      isAnonymous,
      apiBaseUrl,
      language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOrderImplCopyWith<_$SendOrderImpl> get copyWith =>
      __$$SendOrderImplCopyWithImpl<_$SendOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String servicePointId) getOrderByServicePoint,
    required TResult Function(String servicePointId) deleteOrderByServicePoint,
    required TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)
        addProductOrDetailToORder,
    required TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)
        removeProductToOrder,
    required TResult Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)
        sendOrder,
    required TResult Function() removeAllOrder,
  }) {
    return sendOrder(orderId, currentServicePoint, seatNumber, hour, minute,
        note, deliveryInfo, token, isAnonymous, apiBaseUrl, language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String servicePointId)? getOrderByServicePoint,
    TResult? Function(String servicePointId)? deleteOrderByServicePoint,
    TResult? Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        addProductOrDetailToORder,
    TResult? Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        removeProductToOrder,
    TResult? Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)?
        sendOrder,
    TResult? Function()? removeAllOrder,
  }) {
    return sendOrder?.call(orderId, currentServicePoint, seatNumber, hour,
        minute, note, deliveryInfo, token, isAnonymous, apiBaseUrl, language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String servicePointId)? getOrderByServicePoint,
    TResult Function(String servicePointId)? deleteOrderByServicePoint,
    TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        addProductOrDetailToORder,
    TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        removeProductToOrder,
    TResult Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)?
        sendOrder,
    TResult Function()? removeAllOrder,
    required TResult orElse(),
  }) {
    if (sendOrder != null) {
      return sendOrder(orderId, currentServicePoint, seatNumber, hour, minute,
          note, deliveryInfo, token, isAnonymous, apiBaseUrl, language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderByServicePoint value)
        getOrderByServicePoint,
    required TResult Function(_DeleteOrderByServicePoint value)
        deleteOrderByServicePoint,
    required TResult Function(_AddProductOrDetailToORder value)
        addProductOrDetailToORder,
    required TResult Function(_RemoveProductToOrder value) removeProductToOrder,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_RemoveAllOrder value) removeAllOrder,
  }) {
    return sendOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderByServicePoint value)? getOrderByServicePoint,
    TResult? Function(_DeleteOrderByServicePoint value)?
        deleteOrderByServicePoint,
    TResult? Function(_AddProductOrDetailToORder value)?
        addProductOrDetailToORder,
    TResult? Function(_RemoveProductToOrder value)? removeProductToOrder,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_RemoveAllOrder value)? removeAllOrder,
  }) {
    return sendOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderByServicePoint value)? getOrderByServicePoint,
    TResult Function(_DeleteOrderByServicePoint value)?
        deleteOrderByServicePoint,
    TResult Function(_AddProductOrDetailToORder value)?
        addProductOrDetailToORder,
    TResult Function(_RemoveProductToOrder value)? removeProductToOrder,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_RemoveAllOrder value)? removeAllOrder,
    required TResult orElse(),
  }) {
    if (sendOrder != null) {
      return sendOrder(this);
    }
    return orElse();
  }
}

abstract class _SendOrder implements FlistfoodOrderEvent {
  const factory _SendOrder(
      {required final String? orderId,
      required final String currentServicePoint,
      required final String? seatNumber,
      required final int? hour,
      required final int? minute,
      required final String note,
      required final FFDeliveryInfo? deliveryInfo,
      required final String? token,
      required final bool isAnonymous,
      required final String apiBaseUrl,
      required final String language}) = _$SendOrderImpl;

  String? get orderId;
  String get currentServicePoint;
  String? get seatNumber;
  int? get hour;
  int? get minute;
  String get note;
  FFDeliveryInfo? get deliveryInfo;
  String? get token;
  bool get isAnonymous;
  String get apiBaseUrl;
  String get language;
  @JsonKey(ignore: true)
  _$$SendOrderImplCopyWith<_$SendOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAllOrderImplCopyWith<$Res> {
  factory _$$RemoveAllOrderImplCopyWith(_$RemoveAllOrderImpl value,
          $Res Function(_$RemoveAllOrderImpl) then) =
      __$$RemoveAllOrderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveAllOrderImplCopyWithImpl<$Res>
    extends _$FlistfoodOrderEventCopyWithImpl<$Res, _$RemoveAllOrderImpl>
    implements _$$RemoveAllOrderImplCopyWith<$Res> {
  __$$RemoveAllOrderImplCopyWithImpl(
      _$RemoveAllOrderImpl _value, $Res Function(_$RemoveAllOrderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveAllOrderImpl implements _RemoveAllOrder {
  const _$RemoveAllOrderImpl();

  @override
  String toString() {
    return 'FlistfoodOrderEvent.removeAllOrder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveAllOrderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String servicePointId) getOrderByServicePoint,
    required TResult Function(String servicePointId) deleteOrderByServicePoint,
    required TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)
        addProductOrDetailToORder,
    required TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)
        removeProductToOrder,
    required TResult Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)
        sendOrder,
    required TResult Function() removeAllOrder,
  }) {
    return removeAllOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String servicePointId)? getOrderByServicePoint,
    TResult? Function(String servicePointId)? deleteOrderByServicePoint,
    TResult? Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        addProductOrDetailToORder,
    TResult? Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        removeProductToOrder,
    TResult? Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)?
        sendOrder,
    TResult? Function()? removeAllOrder,
  }) {
    return removeAllOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String servicePointId)? getOrderByServicePoint,
    TResult Function(String servicePointId)? deleteOrderByServicePoint,
    TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String? formatProductJson,
            String ownerId,
            String ownerName,
            String? userId,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        addProductOrDetailToORder,
    TResult Function(
            String currentServicePoint,
            String? productJson,
            String? detailProductJson,
            String ownerId,
            String? userId,
            String ownerName,
            DateTime opneDate,
            double? deliveryCost,
            double? deliveryServicePrice,
            bool isDelivery)?
        removeProductToOrder,
    TResult Function(
            String? orderId,
            String currentServicePoint,
            String? seatNumber,
            int? hour,
            int? minute,
            String note,
            FFDeliveryInfo? deliveryInfo,
            String? token,
            bool isAnonymous,
            String apiBaseUrl,
            String language)?
        sendOrder,
    TResult Function()? removeAllOrder,
    required TResult orElse(),
  }) {
    if (removeAllOrder != null) {
      return removeAllOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderByServicePoint value)
        getOrderByServicePoint,
    required TResult Function(_DeleteOrderByServicePoint value)
        deleteOrderByServicePoint,
    required TResult Function(_AddProductOrDetailToORder value)
        addProductOrDetailToORder,
    required TResult Function(_RemoveProductToOrder value) removeProductToOrder,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_RemoveAllOrder value) removeAllOrder,
  }) {
    return removeAllOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderByServicePoint value)? getOrderByServicePoint,
    TResult? Function(_DeleteOrderByServicePoint value)?
        deleteOrderByServicePoint,
    TResult? Function(_AddProductOrDetailToORder value)?
        addProductOrDetailToORder,
    TResult? Function(_RemoveProductToOrder value)? removeProductToOrder,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_RemoveAllOrder value)? removeAllOrder,
  }) {
    return removeAllOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderByServicePoint value)? getOrderByServicePoint,
    TResult Function(_DeleteOrderByServicePoint value)?
        deleteOrderByServicePoint,
    TResult Function(_AddProductOrDetailToORder value)?
        addProductOrDetailToORder,
    TResult Function(_RemoveProductToOrder value)? removeProductToOrder,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_RemoveAllOrder value)? removeAllOrder,
    required TResult orElse(),
  }) {
    if (removeAllOrder != null) {
      return removeAllOrder(this);
    }
    return orElse();
  }
}

abstract class _RemoveAllOrder implements FlistfoodOrderEvent {
  const factory _RemoveAllOrder() = _$RemoveAllOrderImpl;
}

/// @nodoc
mixin _$FlistfoodOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FFOrder? order) loading,
    required TResult Function(bool isUnauthenticated) error,
    required TResult Function(FFOrder? order) success,
    required TResult Function() deleted,
    required TResult Function(FFOrderID? orderId) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FFOrder? order)? loading,
    TResult? Function(bool isUnauthenticated)? error,
    TResult? Function(FFOrder? order)? success,
    TResult? Function()? deleted,
    TResult? Function(FFOrderID? orderId)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FFOrder? order)? loading,
    TResult Function(bool isUnauthenticated)? error,
    TResult Function(FFOrder? order)? success,
    TResult Function()? deleted,
    TResult Function(FFOrderID? orderId)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlistfoodOrderInitial value) initial,
    required TResult Function(_FlistfoodOrderLoadingState value) loading,
    required TResult Function(_FlistfoodOrderErrorState value) error,
    required TResult Function(_FlistfoodOrderSuccessState value) success,
    required TResult Function(_FlistfoodOrderDeletedState value) deleted,
    required TResult Function(_FlistfoodOrderSendState value) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FlistfoodOrderInitial value)? initial,
    TResult? Function(_FlistfoodOrderLoadingState value)? loading,
    TResult? Function(_FlistfoodOrderErrorState value)? error,
    TResult? Function(_FlistfoodOrderSuccessState value)? success,
    TResult? Function(_FlistfoodOrderDeletedState value)? deleted,
    TResult? Function(_FlistfoodOrderSendState value)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlistfoodOrderInitial value)? initial,
    TResult Function(_FlistfoodOrderLoadingState value)? loading,
    TResult Function(_FlistfoodOrderErrorState value)? error,
    TResult Function(_FlistfoodOrderSuccessState value)? success,
    TResult Function(_FlistfoodOrderDeletedState value)? deleted,
    TResult Function(_FlistfoodOrderSendState value)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlistfoodOrderStateCopyWith<$Res> {
  factory $FlistfoodOrderStateCopyWith(
          FlistfoodOrderState value, $Res Function(FlistfoodOrderState) then) =
      _$FlistfoodOrderStateCopyWithImpl<$Res, FlistfoodOrderState>;
}

/// @nodoc
class _$FlistfoodOrderStateCopyWithImpl<$Res, $Val extends FlistfoodOrderState>
    implements $FlistfoodOrderStateCopyWith<$Res> {
  _$FlistfoodOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FlistfoodOrderInitialImplCopyWith<$Res> {
  factory _$$FlistfoodOrderInitialImplCopyWith(
          _$FlistfoodOrderInitialImpl value,
          $Res Function(_$FlistfoodOrderInitialImpl) then) =
      __$$FlistfoodOrderInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FlistfoodOrderInitialImplCopyWithImpl<$Res>
    extends _$FlistfoodOrderStateCopyWithImpl<$Res, _$FlistfoodOrderInitialImpl>
    implements _$$FlistfoodOrderInitialImplCopyWith<$Res> {
  __$$FlistfoodOrderInitialImplCopyWithImpl(_$FlistfoodOrderInitialImpl _value,
      $Res Function(_$FlistfoodOrderInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FlistfoodOrderInitialImpl implements _FlistfoodOrderInitial {
  const _$FlistfoodOrderInitialImpl();

  @override
  String toString() {
    return 'FlistfoodOrderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlistfoodOrderInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FFOrder? order) loading,
    required TResult Function(bool isUnauthenticated) error,
    required TResult Function(FFOrder? order) success,
    required TResult Function() deleted,
    required TResult Function(FFOrderID? orderId) send,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FFOrder? order)? loading,
    TResult? Function(bool isUnauthenticated)? error,
    TResult? Function(FFOrder? order)? success,
    TResult? Function()? deleted,
    TResult? Function(FFOrderID? orderId)? send,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FFOrder? order)? loading,
    TResult Function(bool isUnauthenticated)? error,
    TResult Function(FFOrder? order)? success,
    TResult Function()? deleted,
    TResult Function(FFOrderID? orderId)? send,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlistfoodOrderInitial value) initial,
    required TResult Function(_FlistfoodOrderLoadingState value) loading,
    required TResult Function(_FlistfoodOrderErrorState value) error,
    required TResult Function(_FlistfoodOrderSuccessState value) success,
    required TResult Function(_FlistfoodOrderDeletedState value) deleted,
    required TResult Function(_FlistfoodOrderSendState value) send,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FlistfoodOrderInitial value)? initial,
    TResult? Function(_FlistfoodOrderLoadingState value)? loading,
    TResult? Function(_FlistfoodOrderErrorState value)? error,
    TResult? Function(_FlistfoodOrderSuccessState value)? success,
    TResult? Function(_FlistfoodOrderDeletedState value)? deleted,
    TResult? Function(_FlistfoodOrderSendState value)? send,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlistfoodOrderInitial value)? initial,
    TResult Function(_FlistfoodOrderLoadingState value)? loading,
    TResult Function(_FlistfoodOrderErrorState value)? error,
    TResult Function(_FlistfoodOrderSuccessState value)? success,
    TResult Function(_FlistfoodOrderDeletedState value)? deleted,
    TResult Function(_FlistfoodOrderSendState value)? send,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FlistfoodOrderInitial implements FlistfoodOrderState {
  const factory _FlistfoodOrderInitial() = _$FlistfoodOrderInitialImpl;
}

/// @nodoc
abstract class _$$FlistfoodOrderLoadingStateImplCopyWith<$Res> {
  factory _$$FlistfoodOrderLoadingStateImplCopyWith(
          _$FlistfoodOrderLoadingStateImpl value,
          $Res Function(_$FlistfoodOrderLoadingStateImpl) then) =
      __$$FlistfoodOrderLoadingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FFOrder? order});
}

/// @nodoc
class __$$FlistfoodOrderLoadingStateImplCopyWithImpl<$Res>
    extends _$FlistfoodOrderStateCopyWithImpl<$Res,
        _$FlistfoodOrderLoadingStateImpl>
    implements _$$FlistfoodOrderLoadingStateImplCopyWith<$Res> {
  __$$FlistfoodOrderLoadingStateImplCopyWithImpl(
      _$FlistfoodOrderLoadingStateImpl _value,
      $Res Function(_$FlistfoodOrderLoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(_$FlistfoodOrderLoadingStateImpl(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as FFOrder?,
    ));
  }
}

/// @nodoc

class _$FlistfoodOrderLoadingStateImpl implements _FlistfoodOrderLoadingState {
  const _$FlistfoodOrderLoadingStateImpl({required this.order});

  @override
  final FFOrder? order;

  @override
  String toString() {
    return 'FlistfoodOrderState.loading(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlistfoodOrderLoadingStateImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlistfoodOrderLoadingStateImplCopyWith<_$FlistfoodOrderLoadingStateImpl>
      get copyWith => __$$FlistfoodOrderLoadingStateImplCopyWithImpl<
          _$FlistfoodOrderLoadingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FFOrder? order) loading,
    required TResult Function(bool isUnauthenticated) error,
    required TResult Function(FFOrder? order) success,
    required TResult Function() deleted,
    required TResult Function(FFOrderID? orderId) send,
  }) {
    return loading(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FFOrder? order)? loading,
    TResult? Function(bool isUnauthenticated)? error,
    TResult? Function(FFOrder? order)? success,
    TResult? Function()? deleted,
    TResult? Function(FFOrderID? orderId)? send,
  }) {
    return loading?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FFOrder? order)? loading,
    TResult Function(bool isUnauthenticated)? error,
    TResult Function(FFOrder? order)? success,
    TResult Function()? deleted,
    TResult Function(FFOrderID? orderId)? send,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlistfoodOrderInitial value) initial,
    required TResult Function(_FlistfoodOrderLoadingState value) loading,
    required TResult Function(_FlistfoodOrderErrorState value) error,
    required TResult Function(_FlistfoodOrderSuccessState value) success,
    required TResult Function(_FlistfoodOrderDeletedState value) deleted,
    required TResult Function(_FlistfoodOrderSendState value) send,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FlistfoodOrderInitial value)? initial,
    TResult? Function(_FlistfoodOrderLoadingState value)? loading,
    TResult? Function(_FlistfoodOrderErrorState value)? error,
    TResult? Function(_FlistfoodOrderSuccessState value)? success,
    TResult? Function(_FlistfoodOrderDeletedState value)? deleted,
    TResult? Function(_FlistfoodOrderSendState value)? send,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlistfoodOrderInitial value)? initial,
    TResult Function(_FlistfoodOrderLoadingState value)? loading,
    TResult Function(_FlistfoodOrderErrorState value)? error,
    TResult Function(_FlistfoodOrderSuccessState value)? success,
    TResult Function(_FlistfoodOrderDeletedState value)? deleted,
    TResult Function(_FlistfoodOrderSendState value)? send,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FlistfoodOrderLoadingState implements FlistfoodOrderState {
  const factory _FlistfoodOrderLoadingState({required final FFOrder? order}) =
      _$FlistfoodOrderLoadingStateImpl;

  FFOrder? get order;
  @JsonKey(ignore: true)
  _$$FlistfoodOrderLoadingStateImplCopyWith<_$FlistfoodOrderLoadingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FlistfoodOrderErrorStateImplCopyWith<$Res> {
  factory _$$FlistfoodOrderErrorStateImplCopyWith(
          _$FlistfoodOrderErrorStateImpl value,
          $Res Function(_$FlistfoodOrderErrorStateImpl) then) =
      __$$FlistfoodOrderErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isUnauthenticated});
}

/// @nodoc
class __$$FlistfoodOrderErrorStateImplCopyWithImpl<$Res>
    extends _$FlistfoodOrderStateCopyWithImpl<$Res,
        _$FlistfoodOrderErrorStateImpl>
    implements _$$FlistfoodOrderErrorStateImplCopyWith<$Res> {
  __$$FlistfoodOrderErrorStateImplCopyWithImpl(
      _$FlistfoodOrderErrorStateImpl _value,
      $Res Function(_$FlistfoodOrderErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUnauthenticated = null,
  }) {
    return _then(_$FlistfoodOrderErrorStateImpl(
      isUnauthenticated: null == isUnauthenticated
          ? _value.isUnauthenticated
          : isUnauthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FlistfoodOrderErrorStateImpl implements _FlistfoodOrderErrorState {
  const _$FlistfoodOrderErrorStateImpl({required this.isUnauthenticated});

  @override
  final bool isUnauthenticated;

  @override
  String toString() {
    return 'FlistfoodOrderState.error(isUnauthenticated: $isUnauthenticated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlistfoodOrderErrorStateImpl &&
            (identical(other.isUnauthenticated, isUnauthenticated) ||
                other.isUnauthenticated == isUnauthenticated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUnauthenticated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlistfoodOrderErrorStateImplCopyWith<_$FlistfoodOrderErrorStateImpl>
      get copyWith => __$$FlistfoodOrderErrorStateImplCopyWithImpl<
          _$FlistfoodOrderErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FFOrder? order) loading,
    required TResult Function(bool isUnauthenticated) error,
    required TResult Function(FFOrder? order) success,
    required TResult Function() deleted,
    required TResult Function(FFOrderID? orderId) send,
  }) {
    return error(isUnauthenticated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FFOrder? order)? loading,
    TResult? Function(bool isUnauthenticated)? error,
    TResult? Function(FFOrder? order)? success,
    TResult? Function()? deleted,
    TResult? Function(FFOrderID? orderId)? send,
  }) {
    return error?.call(isUnauthenticated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FFOrder? order)? loading,
    TResult Function(bool isUnauthenticated)? error,
    TResult Function(FFOrder? order)? success,
    TResult Function()? deleted,
    TResult Function(FFOrderID? orderId)? send,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(isUnauthenticated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlistfoodOrderInitial value) initial,
    required TResult Function(_FlistfoodOrderLoadingState value) loading,
    required TResult Function(_FlistfoodOrderErrorState value) error,
    required TResult Function(_FlistfoodOrderSuccessState value) success,
    required TResult Function(_FlistfoodOrderDeletedState value) deleted,
    required TResult Function(_FlistfoodOrderSendState value) send,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FlistfoodOrderInitial value)? initial,
    TResult? Function(_FlistfoodOrderLoadingState value)? loading,
    TResult? Function(_FlistfoodOrderErrorState value)? error,
    TResult? Function(_FlistfoodOrderSuccessState value)? success,
    TResult? Function(_FlistfoodOrderDeletedState value)? deleted,
    TResult? Function(_FlistfoodOrderSendState value)? send,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlistfoodOrderInitial value)? initial,
    TResult Function(_FlistfoodOrderLoadingState value)? loading,
    TResult Function(_FlistfoodOrderErrorState value)? error,
    TResult Function(_FlistfoodOrderSuccessState value)? success,
    TResult Function(_FlistfoodOrderDeletedState value)? deleted,
    TResult Function(_FlistfoodOrderSendState value)? send,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FlistfoodOrderErrorState implements FlistfoodOrderState {
  const factory _FlistfoodOrderErrorState(
      {required final bool isUnauthenticated}) = _$FlistfoodOrderErrorStateImpl;

  bool get isUnauthenticated;
  @JsonKey(ignore: true)
  _$$FlistfoodOrderErrorStateImplCopyWith<_$FlistfoodOrderErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FlistfoodOrderSuccessStateImplCopyWith<$Res> {
  factory _$$FlistfoodOrderSuccessStateImplCopyWith(
          _$FlistfoodOrderSuccessStateImpl value,
          $Res Function(_$FlistfoodOrderSuccessStateImpl) then) =
      __$$FlistfoodOrderSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FFOrder? order});
}

/// @nodoc
class __$$FlistfoodOrderSuccessStateImplCopyWithImpl<$Res>
    extends _$FlistfoodOrderStateCopyWithImpl<$Res,
        _$FlistfoodOrderSuccessStateImpl>
    implements _$$FlistfoodOrderSuccessStateImplCopyWith<$Res> {
  __$$FlistfoodOrderSuccessStateImplCopyWithImpl(
      _$FlistfoodOrderSuccessStateImpl _value,
      $Res Function(_$FlistfoodOrderSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(_$FlistfoodOrderSuccessStateImpl(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as FFOrder?,
    ));
  }
}

/// @nodoc

class _$FlistfoodOrderSuccessStateImpl implements _FlistfoodOrderSuccessState {
  const _$FlistfoodOrderSuccessStateImpl({required this.order});

  @override
  final FFOrder? order;

  @override
  String toString() {
    return 'FlistfoodOrderState.success(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlistfoodOrderSuccessStateImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlistfoodOrderSuccessStateImplCopyWith<_$FlistfoodOrderSuccessStateImpl>
      get copyWith => __$$FlistfoodOrderSuccessStateImplCopyWithImpl<
          _$FlistfoodOrderSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FFOrder? order) loading,
    required TResult Function(bool isUnauthenticated) error,
    required TResult Function(FFOrder? order) success,
    required TResult Function() deleted,
    required TResult Function(FFOrderID? orderId) send,
  }) {
    return success(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FFOrder? order)? loading,
    TResult? Function(bool isUnauthenticated)? error,
    TResult? Function(FFOrder? order)? success,
    TResult? Function()? deleted,
    TResult? Function(FFOrderID? orderId)? send,
  }) {
    return success?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FFOrder? order)? loading,
    TResult Function(bool isUnauthenticated)? error,
    TResult Function(FFOrder? order)? success,
    TResult Function()? deleted,
    TResult Function(FFOrderID? orderId)? send,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlistfoodOrderInitial value) initial,
    required TResult Function(_FlistfoodOrderLoadingState value) loading,
    required TResult Function(_FlistfoodOrderErrorState value) error,
    required TResult Function(_FlistfoodOrderSuccessState value) success,
    required TResult Function(_FlistfoodOrderDeletedState value) deleted,
    required TResult Function(_FlistfoodOrderSendState value) send,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FlistfoodOrderInitial value)? initial,
    TResult? Function(_FlistfoodOrderLoadingState value)? loading,
    TResult? Function(_FlistfoodOrderErrorState value)? error,
    TResult? Function(_FlistfoodOrderSuccessState value)? success,
    TResult? Function(_FlistfoodOrderDeletedState value)? deleted,
    TResult? Function(_FlistfoodOrderSendState value)? send,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlistfoodOrderInitial value)? initial,
    TResult Function(_FlistfoodOrderLoadingState value)? loading,
    TResult Function(_FlistfoodOrderErrorState value)? error,
    TResult Function(_FlistfoodOrderSuccessState value)? success,
    TResult Function(_FlistfoodOrderDeletedState value)? deleted,
    TResult Function(_FlistfoodOrderSendState value)? send,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FlistfoodOrderSuccessState implements FlistfoodOrderState {
  const factory _FlistfoodOrderSuccessState({required final FFOrder? order}) =
      _$FlistfoodOrderSuccessStateImpl;

  FFOrder? get order;
  @JsonKey(ignore: true)
  _$$FlistfoodOrderSuccessStateImplCopyWith<_$FlistfoodOrderSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FlistfoodOrderDeletedStateImplCopyWith<$Res> {
  factory _$$FlistfoodOrderDeletedStateImplCopyWith(
          _$FlistfoodOrderDeletedStateImpl value,
          $Res Function(_$FlistfoodOrderDeletedStateImpl) then) =
      __$$FlistfoodOrderDeletedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FlistfoodOrderDeletedStateImplCopyWithImpl<$Res>
    extends _$FlistfoodOrderStateCopyWithImpl<$Res,
        _$FlistfoodOrderDeletedStateImpl>
    implements _$$FlistfoodOrderDeletedStateImplCopyWith<$Res> {
  __$$FlistfoodOrderDeletedStateImplCopyWithImpl(
      _$FlistfoodOrderDeletedStateImpl _value,
      $Res Function(_$FlistfoodOrderDeletedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FlistfoodOrderDeletedStateImpl implements _FlistfoodOrderDeletedState {
  const _$FlistfoodOrderDeletedStateImpl();

  @override
  String toString() {
    return 'FlistfoodOrderState.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlistfoodOrderDeletedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FFOrder? order) loading,
    required TResult Function(bool isUnauthenticated) error,
    required TResult Function(FFOrder? order) success,
    required TResult Function() deleted,
    required TResult Function(FFOrderID? orderId) send,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FFOrder? order)? loading,
    TResult? Function(bool isUnauthenticated)? error,
    TResult? Function(FFOrder? order)? success,
    TResult? Function()? deleted,
    TResult? Function(FFOrderID? orderId)? send,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FFOrder? order)? loading,
    TResult Function(bool isUnauthenticated)? error,
    TResult Function(FFOrder? order)? success,
    TResult Function()? deleted,
    TResult Function(FFOrderID? orderId)? send,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlistfoodOrderInitial value) initial,
    required TResult Function(_FlistfoodOrderLoadingState value) loading,
    required TResult Function(_FlistfoodOrderErrorState value) error,
    required TResult Function(_FlistfoodOrderSuccessState value) success,
    required TResult Function(_FlistfoodOrderDeletedState value) deleted,
    required TResult Function(_FlistfoodOrderSendState value) send,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FlistfoodOrderInitial value)? initial,
    TResult? Function(_FlistfoodOrderLoadingState value)? loading,
    TResult? Function(_FlistfoodOrderErrorState value)? error,
    TResult? Function(_FlistfoodOrderSuccessState value)? success,
    TResult? Function(_FlistfoodOrderDeletedState value)? deleted,
    TResult? Function(_FlistfoodOrderSendState value)? send,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlistfoodOrderInitial value)? initial,
    TResult Function(_FlistfoodOrderLoadingState value)? loading,
    TResult Function(_FlistfoodOrderErrorState value)? error,
    TResult Function(_FlistfoodOrderSuccessState value)? success,
    TResult Function(_FlistfoodOrderDeletedState value)? deleted,
    TResult Function(_FlistfoodOrderSendState value)? send,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _FlistfoodOrderDeletedState implements FlistfoodOrderState {
  const factory _FlistfoodOrderDeletedState() =
      _$FlistfoodOrderDeletedStateImpl;
}

/// @nodoc
abstract class _$$FlistfoodOrderSendStateImplCopyWith<$Res> {
  factory _$$FlistfoodOrderSendStateImplCopyWith(
          _$FlistfoodOrderSendStateImpl value,
          $Res Function(_$FlistfoodOrderSendStateImpl) then) =
      __$$FlistfoodOrderSendStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FFOrderID? orderId});
}

/// @nodoc
class __$$FlistfoodOrderSendStateImplCopyWithImpl<$Res>
    extends _$FlistfoodOrderStateCopyWithImpl<$Res,
        _$FlistfoodOrderSendStateImpl>
    implements _$$FlistfoodOrderSendStateImplCopyWith<$Res> {
  __$$FlistfoodOrderSendStateImplCopyWithImpl(
      _$FlistfoodOrderSendStateImpl _value,
      $Res Function(_$FlistfoodOrderSendStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
  }) {
    return _then(_$FlistfoodOrderSendStateImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as FFOrderID?,
    ));
  }
}

/// @nodoc

class _$FlistfoodOrderSendStateImpl implements _FlistfoodOrderSendState {
  const _$FlistfoodOrderSendStateImpl({required this.orderId});

  @override
  final FFOrderID? orderId;

  @override
  String toString() {
    return 'FlistfoodOrderState.send(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlistfoodOrderSendStateImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlistfoodOrderSendStateImplCopyWith<_$FlistfoodOrderSendStateImpl>
      get copyWith => __$$FlistfoodOrderSendStateImplCopyWithImpl<
          _$FlistfoodOrderSendStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FFOrder? order) loading,
    required TResult Function(bool isUnauthenticated) error,
    required TResult Function(FFOrder? order) success,
    required TResult Function() deleted,
    required TResult Function(FFOrderID? orderId) send,
  }) {
    return send(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FFOrder? order)? loading,
    TResult? Function(bool isUnauthenticated)? error,
    TResult? Function(FFOrder? order)? success,
    TResult? Function()? deleted,
    TResult? Function(FFOrderID? orderId)? send,
  }) {
    return send?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FFOrder? order)? loading,
    TResult Function(bool isUnauthenticated)? error,
    TResult Function(FFOrder? order)? success,
    TResult Function()? deleted,
    TResult Function(FFOrderID? orderId)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlistfoodOrderInitial value) initial,
    required TResult Function(_FlistfoodOrderLoadingState value) loading,
    required TResult Function(_FlistfoodOrderErrorState value) error,
    required TResult Function(_FlistfoodOrderSuccessState value) success,
    required TResult Function(_FlistfoodOrderDeletedState value) deleted,
    required TResult Function(_FlistfoodOrderSendState value) send,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FlistfoodOrderInitial value)? initial,
    TResult? Function(_FlistfoodOrderLoadingState value)? loading,
    TResult? Function(_FlistfoodOrderErrorState value)? error,
    TResult? Function(_FlistfoodOrderSuccessState value)? success,
    TResult? Function(_FlistfoodOrderDeletedState value)? deleted,
    TResult? Function(_FlistfoodOrderSendState value)? send,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlistfoodOrderInitial value)? initial,
    TResult Function(_FlistfoodOrderLoadingState value)? loading,
    TResult Function(_FlistfoodOrderErrorState value)? error,
    TResult Function(_FlistfoodOrderSuccessState value)? success,
    TResult Function(_FlistfoodOrderDeletedState value)? deleted,
    TResult Function(_FlistfoodOrderSendState value)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class _FlistfoodOrderSendState implements FlistfoodOrderState {
  const factory _FlistfoodOrderSendState({required final FFOrderID? orderId}) =
      _$FlistfoodOrderSendStateImpl;

  FFOrderID? get orderId;
  @JsonKey(ignore: true)
  _$$FlistfoodOrderSendStateImplCopyWith<_$FlistfoodOrderSendStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
