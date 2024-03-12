import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:flistfood_order/product_model.dart';

import 'Alternative_fixtured_factory.dart';
import 'ffcoocking_types_fixtured_factory.dart';
import 'fffood_list_fixtured_factory.dart';
import 'fffood_lists_definition_fixtured_factory.dart';
import 'ffformat_fixtured_factory.dart';
import 'Ingredient_fixtured_factory.dart';

extension ProductFixture on Product {
  // ignore: library_private_types_in_public_api
  static _ProductFixtureFactory factory() => _ProductFixtureFactory();
}

class _ProductFixtureFactory extends FixtureFactory<Product> {
  @override
  FixtureDefinition<Product> definition() => define(
        (faker) => Product(
          id: faker.randomGenerator.integer(9999),
          preferredCookingTypeId: faker.randomGenerator.integer(9999),
          minOrdinableQuantity: faker.randomGenerator.integer(9999),
          newPrice: faker.randomGenerator.decimal(),
          price: faker.randomGenerator.decimal(),
          sectionId: faker.randomGenerator.integer(9999),
          //formats: FFFormatFixture.factory().makeMany(3),
          ingredients: IngredientFixture.factory().makeMany(3),
          alternatives: AlternativeFixture.factory().makeMany(3),
          cookingTypes: CookingTypeFixture.factory().makeMany(3),
          foodListsDefinition: FoodlistsDefinitionFixture.factory().makeMany(3),
          foodlists: FoodlistFixture.factory().makeMany(3),
          name: faker.lorem.word(),
        ),
      );
}
