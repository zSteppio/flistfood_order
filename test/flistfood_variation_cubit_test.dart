import 'package:bloc_test/bloc_test.dart';
import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:flistfood_order/flistfood_variation/flistfood_variation_cubit.dart';
import 'package:flistfood_order/product_model.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fixtures/ffalternative_fixtured_factory.dart';
import 'fixtures/fffood_list_fixtured_factory.dart';
import 'fixtures/ffingredient_fixtured_factory.dart';
import 'fixtures/ffproduct_fixtured_factory.dart';

void main() {
  late int foodId;
  late FFAlternative alternative;
  late FFIngredient ingredient;
  late FFFoodlist foodList;
  late FFProduct product;
  late int cookingTypeID;

  late FlistfoodVariationCubit flistfoodVariationCubit;

  setUp(() => {
        foodId = faker.randomGenerator.integer(9999),
        cookingTypeID = faker.randomGenerator.integer(9999),
        alternative = FFAlternativeFixture.factory().makeSingle(),
        ingredient = FFIngredientFixture.factory().makeSingle(),
        foodList = FFFoodlistFixture.factory().makeSingle(),
        product = FFProductFixture.factory().makeSingle(),
        flistfoodVariationCubit = FlistfoodVariationCubit(),
        product.price = product.newPrice,
      });

  group('VariationCubit', () {
    blocTest(
      'Test FlistfoodVariationCubit con evento SET Alternative',
      build: () => flistfoodVariationCubit,
      act: (bloc) => bloc.setAlternative(
        foodId: foodId,
        alternative: alternative,
        product: product,
      ),
      expect: () => <FlistfoodVariationState>[
        FlistfoodVariationState.loading(product: product),
        FlistfoodVariationState.success(product: product),
      ],
    );

    //TODO implementare altri test su tutti gli if
    blocTest(
      'Test FlistfoodVariationCubit con evento SET Alternative, e prodotto aggiornato con prezzo',
      build: () => flistfoodVariationCubit,
      setUp: () {
        if (alternative.foods.isNotEmpty) {
          alternative.foods.first.isSelected = true;
          alternative.foods[2].foodId = foodId;
        }
      },
      act: (bloc) => bloc.setAlternative(
        foodId: foodId,
        alternative: alternative,
        product: product,
      ),
      verify: (bloc) {
        expect(
          product.newPrice,
          product.price - alternative.foods.first.price + alternative.foods[2].price,
          reason: 'Prezzo aggiornato',
        );
      },
      expect: () => <FlistfoodVariationState>[
        FlistfoodVariationState.loading(product: product),
        FlistfoodVariationState.success(product: product),
      ],
    );

    blocTest(
      'Test FlistfoodVariationCubit con evento SET CookingType',
      build: () => flistfoodVariationCubit,
      act: (bloc) => bloc.setCookingType(
        cookingTypeId: cookingTypeID,
        product: product,
      ),
      expect: () => <FlistfoodVariationState>[
        FlistfoodVariationState.loading(product: product),
        FlistfoodVariationState.success(product: product),
      ],
    );

    blocTest(
      'Test FlistfoodVariationCubit con evento SET Ingredient con ingrediente id trovato',
      build: () => flistfoodVariationCubit,
      setUp: () {
        ingredient.canRemove = true;
        ingredient.foodId = 1;
        foodId = 1;
      },
      act: (bloc) => bloc.setIngredient(
        ingredient: ingredient,
        product: product,
        selected: faker.randomGenerator.boolean(),
      ),
      expect: () => <FlistfoodVariationState>[
        FlistfoodVariationState.loading(product: product),
        FlistfoodVariationState.success(product: product),
      ],
    );

    blocTest(
      'Test FlistfoodVariationCubit con evento SET Ingredient con ingredienti vuoti',
      build: () => flistfoodVariationCubit,
      setUp: () {
        product.ingredients = [];
        ingredient.canRemove = true;
      },
      act: (bloc) => bloc.setIngredient(
        ingredient: ingredient,
        product: product,
        selected: faker.randomGenerator.boolean(),
      ),
      expect: () => <FlistfoodVariationState>[
        FlistfoodVariationState.loading(product: product),
        FlistfoodVariationState.success(product: product),
      ],
    );

    blocTest(
      'Test FlistfoodVariationCubit con evento SET FoodList con ID lista trovato',
      build: () => flistfoodVariationCubit,
      setUp: () {
        foodList.id = 1;
        product.foodListsDefinition.first.foodListId = 1;
      },
      act: (bloc) => bloc.setFoodList(
        foodId: foodId,
        foodList: foodList,
        product: product,
        selected: faker.randomGenerator.boolean(),
      ),
      expect: () => <FlistfoodVariationState>[
        FlistfoodVariationState.loading(product: product),
        FlistfoodVariationState.success(product: product),
      ],
    );
  });
}
