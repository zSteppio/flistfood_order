// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_point_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FFCurrentServicePointCWProxy {
  FFCurrentServicePoint id(String id);

  FFCurrentServicePoint supplementPrice(double? supplementPrice);

  FFCurrentServicePoint type(int? type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFCurrentServicePoint(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFCurrentServicePoint(...).copyWith(id: 12, name: "My name")
  /// ````
  FFCurrentServicePoint call({
    String? id,
    double? supplementPrice,
    int? type,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFFCurrentServicePoint.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFFCurrentServicePoint.copyWith.fieldName(...)`
class _$FFCurrentServicePointCWProxyImpl
    implements _$FFCurrentServicePointCWProxy {
  final FFCurrentServicePoint _value;

  const _$FFCurrentServicePointCWProxyImpl(this._value);

  @override
  FFCurrentServicePoint id(String id) => this(id: id);

  @override
  FFCurrentServicePoint supplementPrice(double? supplementPrice) =>
      this(supplementPrice: supplementPrice);

  @override
  FFCurrentServicePoint type(int? type) => this(type: type);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FFCurrentServicePoint(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FFCurrentServicePoint(...).copyWith(id: 12, name: "My name")
  /// ````
  FFCurrentServicePoint call({
    Object? id = const $CopyWithPlaceholder(),
    Object? supplementPrice = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return FFCurrentServicePoint(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      supplementPrice: supplementPrice == const $CopyWithPlaceholder()
          ? _value.supplementPrice
          // ignore: cast_nullable_to_non_nullable
          : supplementPrice as double?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as int?,
    );
  }
}

extension $FFCurrentServicePointCopyWith on FFCurrentServicePoint {
  /// Returns a callable class that can be used as follows: `instanceOfFFCurrentServicePoint.copyWith(...)` or like so:`instanceOfFFCurrentServicePoint.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FFCurrentServicePointCWProxy get copyWith =>
      _$FFCurrentServicePointCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FFCurrentServicePoint _$FFCurrentServicePointFromJson(
        Map<String, dynamic> json) =>
    FFCurrentServicePoint(
      id: json['id'] as String,
      supplementPrice: (json['supplementPrice'] as num?)?.toDouble(),
      type: json['type'] as int?,
    );

Map<String, dynamic> _$FFCurrentServicePointToJson(
    FFCurrentServicePoint instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('supplementPrice', instance.supplementPrice);
  writeNotNull('type', instance.type);
  return val;
}
