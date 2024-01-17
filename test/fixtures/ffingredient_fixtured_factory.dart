import 'package:data_fixture_dart/definitions/fixture_definition.dart';
import 'package:data_fixture_dart/factories/fixture_factory.dart';
import 'package:flistfood_order/product_model.dart';

extension FFIngredientFixture on FFIngredient {
  // ignore: library_private_types_in_public_api
  static _FFIngredientFixtureFactory factory() => _FFIngredientFixtureFactory();
}

class _FFIngredientFixtureFactory extends FixtureFactory<FFIngredient> {
  @override
  FixtureDefinition<FFIngredient> definition() => define(
        (faker) => FFIngredient(
          foodId: faker.randomGenerator.integer(9999),
          food: faker.lorem.word(),
          hidden: faker.randomGenerator.boolean(),
          isMainIngredient: faker.randomGenerator.boolean(),
          selected: faker.randomGenerator.boolean(),
          variationPrice: faker.randomGenerator.decimal(),
          variationGroup: faker.lorem.word(),
          canRemove: faker.randomGenerator.boolean(),
          canDouble: faker.randomGenerator.boolean(),
          canTriple: faker.randomGenerator.boolean(),
        ),
      );
}
