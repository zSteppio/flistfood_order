import 'package:data_fixture_dart/definitions/fixture_definition.dart';
import 'package:data_fixture_dart/factories/fixture_factory.dart';
import 'package:flistfood_order/product_model.dart';

extension IngredientFixture on Ingredient {
  // ignore: library_private_types_in_public_api
  static _IngredientFixtureFactory factory() => _IngredientFixtureFactory();
}

class _IngredientFixtureFactory extends FixtureFactory<Ingredient> {
  @override
  FixtureDefinition<Ingredient> definition() => define(
        (faker) => Ingredient(
          foodId: faker.randomGenerator.integer(9999),
          name: faker.lorem.word(),
          isMain: faker.randomGenerator.boolean(),
          selected: faker.randomGenerator.boolean(),
          price: faker.randomGenerator.decimal(),
          canRemove: faker.randomGenerator.boolean(),
          canAddQuantity: faker.randomGenerator.integer(9999),
        ),
      );
}
