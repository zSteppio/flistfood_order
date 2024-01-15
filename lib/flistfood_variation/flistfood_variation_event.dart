part of 'flistfood_variation_bloc.dart';

sealed class FlistfoodVariationEvent extends Equatable {
  const FlistfoodVariationEvent();

  @override
  List<Object?> get props => [];
}

class InitialConfiguration extends FlistfoodVariationEvent {
  final String productJson;
  final String? formatJson;
  final String foodListJson;
  const InitialConfiguration({
    required this.productJson,
    required this.formatJson,
    required this.foodListJson,
  });

  @override
  List<Object?> get props => [productJson, formatJson, foodListJson];
}

class SetAlternative extends FlistfoodVariationEvent {
  final int foodId;
  final FFAlternative alternative;
  final FFProduct product;
  const SetAlternative({
    required this.foodId,
    required this.alternative,
    required this.product,
  });

  @override
  List<Object?> get props => [foodId, alternative, product];
}

class SetCoockingType extends FlistfoodVariationEvent {
  final int cookingTypeId;
  final FFProduct product;
  const SetCoockingType({
    required this.cookingTypeId,
    required this.product,
  });

  @override
  List<Object?> get props => [cookingTypeId, product];
}

class SetIngredient extends FlistfoodVariationEvent {
  final FFIngredient ingredient;
  final bool selected;
  final FFProduct product;
  const SetIngredient({
    required this.ingredient,
    required this.selected,
    required this.product,
  });

  @override
  List<Object?> get props => [ingredient, selected, product];
}

class SetFoodList extends FlistfoodVariationEvent {
  final int foodId;
  final FFFoodlist foodList;
  final bool selected;
  final FFProduct product;
  const SetFoodList({
    required this.foodId,
    required this.foodList,
    required this.selected,
    required this.product,
  });

  @override
  List<Object?> get props => [foodId, foodList, selected, product];
}
