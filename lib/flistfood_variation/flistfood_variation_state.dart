part of 'flistfood_variation_cubit.dart';

@freezed
class FlistfoodVariationState with _$FlistfoodVariationState {
  const factory FlistfoodVariationState.loading({required FFProduct product}) =
      _FlistfoodVariationLoadingState;

  const factory FlistfoodVariationState.initial() = _FlistfoodVariationInitialState;

  const factory FlistfoodVariationState.success({required FFProduct product}) =
      _FlistfoodVariationSuccessState;
}
