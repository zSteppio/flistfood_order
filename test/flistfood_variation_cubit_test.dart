import 'package:bloc_test/bloc_test.dart';
import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:flistfood_order/flistfood_variation/flistfood_variation_cubit.dart';
import 'package:flistfood_order/product_model.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fixtures/ffalternative_fixtured_factory.dart';
import 'fixtures/ffproduct_fixtured_factory.dart';

void main() {
  late int foodId;
  late FFAlternative alternative;
  late FFProduct product;

  late FlistfoodVariationCubit flistfoodVariationCubit;

  setUp(() => {
        foodId = faker.randomGenerator.integer(9999),
        alternative = FFAlternativeFixture.factory().makeSingle(),
        product = FFProductFixture.factory().makeSingle(),
        flistfoodVariationCubit = FlistfoodVariationCubit()
      });

  group('VariationCubit', () {
    blocTest(
      'Test FlistfoodVariationCubit con evento SET Alternative',
      build: () => flistfoodVariationCubit,
      setUp: () {},
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

    blocTest(
      'Test FlistfoodVariationCubit con evento SET Alternative, e prodotto aggiornato con prezzo',
      build: () => flistfoodVariationCubit,
      setUp: () {
        if (alternative.foods != null) {
          alternative.foods!.first.isSelected = true;
          alternative.foods![2].foodId = foodId;
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
          alternative.foods!.first.price + product.price,
          reason: 'Prezzo aggiornato',
        );
      },
      expect: () => <FlistfoodVariationState>[
        FlistfoodVariationState.loading(product: product),
        FlistfoodVariationState.success(product: product),
      ],
    );
  });
}
