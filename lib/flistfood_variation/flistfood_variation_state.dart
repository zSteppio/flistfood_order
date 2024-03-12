part of 'flistfood_variation_cubit.dart';

@freezed
class FlistfoodVariationState with _$FlistfoodVariationState {
  const factory FlistfoodVariationState.loading({required Product product}) =
      _FlistfoodVariationLoadingState;

  const factory FlistfoodVariationState.initial() = _FlistfoodVariationInitialState;

  const factory FlistfoodVariationState.success({required Product product}) =
      _FlistfoodVariationSuccessState;
}
