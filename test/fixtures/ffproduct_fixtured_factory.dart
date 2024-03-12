import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:flistfood_order/product_model.dart';

import 'ffalternative_fixtured_factory.dart';
import 'ffcoocking_types_fixtured_factory.dart';
import 'fffood_list_fixtured_factory.dart';
import 'fffood_lists_definition_fixtured_factory.dart';
import 'ffformat_fixtured_factory.dart';
import 'ffingredient_fixtured_factory.dart';

extension FFProductFixture on FFProduct {
  // ignore: library_private_types_in_public_api
  static _FFProductFixtureFactory factory() => _FFProductFixtureFactory();
}

class _FFProductFixtureFactory extends FixtureFactory<FFProduct> {
  @override
  FixtureDefinition<FFProduct> definition() => define(
        (faker) => FFProduct(
          id: faker.randomGenerator.integer(9999),
          preferredCookingTypeId: faker.randomGenerator.integer(9999),
          minOrdinableQuantity: faker.randomGenerator.integer(9999),
          newPrice: faker.randomGenerator.decimal(),
          price: faker.randomGenerator.decimal(),
          sectionId: faker.randomGenerator.integer(9999),
          //formats: FFFormatFixture.factory().makeMany(3),
          ingredients: FFIngredientFixture.factory().makeMany(3),
          alternatives: FFAlternativeFixture.factory().makeMany(3),
          cookingTypes: FFCookingTypeFixture.factory().makeMany(3),
          foodListsDefinition: FFFoodListsDefinitionFixture.factory().makeMany(3),
          foodlists: FFFoodlistFixture.factory().makeMany(3),
          name: faker.lorem.word(),
        ),
      );
}
