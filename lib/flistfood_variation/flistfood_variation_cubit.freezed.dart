// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flistfood_variation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlistfoodVariationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FFProduct product) loading,
    required TResult Function() initial,
    required TResult Function(FFProduct product) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FFProduct product)? loading,
    TResult? Function()? initial,
    TResult? Function(FFProduct product)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FFProduct product)? loading,
    TResult Function()? initial,
    TResult Function(FFProduct product)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlistfoodVariationLoadingState value) loading,
    required TResult Function(_FlistfoodVariationInitialState value) initial,
    required TResult Function(_FlistfoodVariationSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FlistfoodVariationLoadingState value)? loading,
    TResult? Function(_FlistfoodVariationInitialState value)? initial,
    TResult? Function(_FlistfoodVariationSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlistfoodVariationLoadingState value)? loading,
    TResult Function(_FlistfoodVariationInitialState value)? initial,
    TResult Function(_FlistfoodVariationSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlistfoodVariationStateCopyWith<$Res> {
  factory $FlistfoodVariationStateCopyWith(FlistfoodVariationState value,
          $Res Function(FlistfoodVariationState) then) =
      _$FlistfoodVariationStateCopyWithImpl<$Res, FlistfoodVariationState>;
}

/// @nodoc
class _$FlistfoodVariationStateCopyWithImpl<$Res,
        $Val extends FlistfoodVariationState>
    implements $FlistfoodVariationStateCopyWith<$Res> {
  _$FlistfoodVariationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FlistfoodVariationLoadingStateImplCopyWith<$Res> {
  factory _$$FlistfoodVariationLoadingStateImplCopyWith(
          _$FlistfoodVariationLoadingStateImpl value,
          $Res Function(_$FlistfoodVariationLoadingStateImpl) then) =
      __$$FlistfoodVariationLoadingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FFProduct product});
}

/// @nodoc
class __$$FlistfoodVariationLoadingStateImplCopyWithImpl<$Res>
    extends _$FlistfoodVariationStateCopyWithImpl<$Res,
        _$FlistfoodVariationLoadingStateImpl>
    implements _$$FlistfoodVariationLoadingStateImplCopyWith<$Res> {
  __$$FlistfoodVariationLoadingStateImplCopyWithImpl(
      _$FlistfoodVariationLoadingStateImpl _value,
      $Res Function(_$FlistfoodVariationLoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$FlistfoodVariationLoadingStateImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as FFProduct,
    ));
  }
}

/// @nodoc

class _$FlistfoodVariationLoadingStateImpl
    implements _FlistfoodVariationLoadingState {
  const _$FlistfoodVariationLoadingStateImpl({required this.product});

  @override
  final FFProduct product;

  @override
  String toString() {
    return 'FlistfoodVariationState.loading(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlistfoodVariationLoadingStateImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlistfoodVariationLoadingStateImplCopyWith<
          _$FlistfoodVariationLoadingStateImpl>
      get copyWith => __$$FlistfoodVariationLoadingStateImplCopyWithImpl<
          _$FlistfoodVariationLoadingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FFProduct product) loading,
    required TResult Function() initial,
    required TResult Function(FFProduct product) success,
  }) {
    return loading(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FFProduct product)? loading,
    TResult? Function()? initial,
    TResult? Function(FFProduct product)? success,
  }) {
    return loading?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FFProduct product)? loading,
    TResult Function()? initial,
    TResult Function(FFProduct product)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlistfoodVariationLoadingState value) loading,
    required TResult Function(_FlistfoodVariationInitialState value) initial,
    required TResult Function(_FlistfoodVariationSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FlistfoodVariationLoadingState value)? loading,
    TResult? Function(_FlistfoodVariationInitialState value)? initial,
    TResult? Function(_FlistfoodVariationSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlistfoodVariationLoadingState value)? loading,
    TResult Function(_FlistfoodVariationInitialState value)? initial,
    TResult Function(_FlistfoodVariationSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FlistfoodVariationLoadingState
    implements FlistfoodVariationState {
  const factory _FlistfoodVariationLoadingState(
          {required final FFProduct product}) =
      _$FlistfoodVariationLoadingStateImpl;

  FFProduct get product;
  @JsonKey(ignore: true)
  _$$FlistfoodVariationLoadingStateImplCopyWith<
          _$FlistfoodVariationLoadingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FlistfoodVariationInitialStateImplCopyWith<$Res> {
  factory _$$FlistfoodVariationInitialStateImplCopyWith(
          _$FlistfoodVariationInitialStateImpl value,
          $Res Function(_$FlistfoodVariationInitialStateImpl) then) =
      __$$FlistfoodVariationInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FlistfoodVariationInitialStateImplCopyWithImpl<$Res>
    extends _$FlistfoodVariationStateCopyWithImpl<$Res,
        _$FlistfoodVariationInitialStateImpl>
    implements _$$FlistfoodVariationInitialStateImplCopyWith<$Res> {
  __$$FlistfoodVariationInitialStateImplCopyWithImpl(
      _$FlistfoodVariationInitialStateImpl _value,
      $Res Function(_$FlistfoodVariationInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FlistfoodVariationInitialStateImpl
    implements _FlistfoodVariationInitialState {
  const _$FlistfoodVariationInitialStateImpl();

  @override
  String toString() {
    return 'FlistfoodVariationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlistfoodVariationInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FFProduct product) loading,
    required TResult Function() initial,
    required TResult Function(FFProduct product) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FFProduct product)? loading,
    TResult? Function()? initial,
    TResult? Function(FFProduct product)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FFProduct product)? loading,
    TResult Function()? initial,
    TResult Function(FFProduct product)? success,
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
    required TResult Function(_FlistfoodVariationLoadingState value) loading,
    required TResult Function(_FlistfoodVariationInitialState value) initial,
    required TResult Function(_FlistfoodVariationSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FlistfoodVariationLoadingState value)? loading,
    TResult? Function(_FlistfoodVariationInitialState value)? initial,
    TResult? Function(_FlistfoodVariationSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlistfoodVariationLoadingState value)? loading,
    TResult Function(_FlistfoodVariationInitialState value)? initial,
    TResult Function(_FlistfoodVariationSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FlistfoodVariationInitialState
    implements FlistfoodVariationState {
  const factory _FlistfoodVariationInitialState() =
      _$FlistfoodVariationInitialStateImpl;
}

/// @nodoc
abstract class _$$FlistfoodVariationSuccessStateImplCopyWith<$Res> {
  factory _$$FlistfoodVariationSuccessStateImplCopyWith(
          _$FlistfoodVariationSuccessStateImpl value,
          $Res Function(_$FlistfoodVariationSuccessStateImpl) then) =
      __$$FlistfoodVariationSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FFProduct product});
}

/// @nodoc
class __$$FlistfoodVariationSuccessStateImplCopyWithImpl<$Res>
    extends _$FlistfoodVariationStateCopyWithImpl<$Res,
        _$FlistfoodVariationSuccessStateImpl>
    implements _$$FlistfoodVariationSuccessStateImplCopyWith<$Res> {
  __$$FlistfoodVariationSuccessStateImplCopyWithImpl(
      _$FlistfoodVariationSuccessStateImpl _value,
      $Res Function(_$FlistfoodVariationSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$FlistfoodVariationSuccessStateImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as FFProduct,
    ));
  }
}

/// @nodoc

class _$FlistfoodVariationSuccessStateImpl
    implements _FlistfoodVariationSuccessState {
  const _$FlistfoodVariationSuccessStateImpl({required this.product});

  @override
  final FFProduct product;

  @override
  String toString() {
    return 'FlistfoodVariationState.success(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlistfoodVariationSuccessStateImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlistfoodVariationSuccessStateImplCopyWith<
          _$FlistfoodVariationSuccessStateImpl>
      get copyWith => __$$FlistfoodVariationSuccessStateImplCopyWithImpl<
          _$FlistfoodVariationSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FFProduct product) loading,
    required TResult Function() initial,
    required TResult Function(FFProduct product) success,
  }) {
    return success(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FFProduct product)? loading,
    TResult? Function()? initial,
    TResult? Function(FFProduct product)? success,
  }) {
    return success?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FFProduct product)? loading,
    TResult Function()? initial,
    TResult Function(FFProduct product)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlistfoodVariationLoadingState value) loading,
    required TResult Function(_FlistfoodVariationInitialState value) initial,
    required TResult Function(_FlistfoodVariationSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FlistfoodVariationLoadingState value)? loading,
    TResult? Function(_FlistfoodVariationInitialState value)? initial,
    TResult? Function(_FlistfoodVariationSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FlistfoodVariationLoadingState value)? loading,
    TResult Function(_FlistfoodVariationInitialState value)? initial,
    TResult Function(_FlistfoodVariationSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FlistfoodVariationSuccessState
    implements FlistfoodVariationState {
  const factory _FlistfoodVariationSuccessState(
          {required final FFProduct product}) =
      _$FlistfoodVariationSuccessStateImpl;

  FFProduct get product;
  @JsonKey(ignore: true)
  _$$FlistfoodVariationSuccessStateImplCopyWith<
          _$FlistfoodVariationSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
