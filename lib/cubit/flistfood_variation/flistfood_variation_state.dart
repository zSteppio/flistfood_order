part of 'flistfood_variation_cubit.dart';

abstract class FlistfoodVariationState extends Equatable {
  const FlistfoodVariationState();

  @override
  List<Object> get props => [];
}

class FlistfoodVariationInitialState extends FlistfoodVariationState {}

class FlistfoodVariationLoadingState extends FlistfoodVariationState {
  final FFProduct product;

  const FlistfoodVariationLoadingState(this.product);

  @override
  List<Object> get props => [product];
}

class FlistfoodVariationSuccessState extends FlistfoodVariationState {
  final FFProduct product;

  const FlistfoodVariationSuccessState(this.product);

  @override
  List<Object> get props => [product];
}
