import 'package:data_fixture_dart/definitions/fixture_definition.dart';
import 'package:data_fixture_dart/factories/fixture_factory.dart';
import 'package:flistfood_order/product_model.dart';

extension CookingTypeFixture on CookingType {
  // ignore: library_private_types_in_public_api
  static _CookingTypeFixtureFactory factory() => _CookingTypeFixtureFactory();
}

class _CookingTypeFixtureFactory extends FixtureFactory<CookingType> {
  @override
  FixtureDefinition<CookingType> definition() => define(
        (faker) => CookingType(
          id: faker.randomGenerator.integer(9999),
          name: faker.lorem.word(),
          priority: faker.randomGenerator.integer(9999),
          isSelected: faker.randomGenerator.boolean(),
        ),
      );
}
