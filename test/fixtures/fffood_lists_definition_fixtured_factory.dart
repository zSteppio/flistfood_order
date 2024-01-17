import 'package:data_fixture_dart/definitions/fixture_definition.dart';
import 'package:data_fixture_dart/factories/fixture_factory.dart';
import 'package:flistfood_order/product_model.dart';

extension FFFoodListsDefinitionFixture on FFFoodListsDefinition {
  // ignore: library_private_types_in_public_api
  static _FFFoodListsDefinitionFixtureFactory factory() => _FFFoodListsDefinitionFixtureFactory();
}

class _FFFoodListsDefinitionFixtureFactory extends FixtureFactory<FFFoodListsDefinition> {
  @override
  FixtureDefinition<FFFoodListsDefinition> definition() => define(
        (faker) => FFFoodListsDefinition(
          foodListId: faker.randomGenerator.integer(9999),
          maxQty: faker.randomGenerator.integer(9999),
          minQty: faker.randomGenerator.integer(9999),
          mode: faker.randomGenerator.integer(9999),
          x2: faker.randomGenerator.boolean(),
          x3: faker.randomGenerator.boolean(),
        ),
      );
}
