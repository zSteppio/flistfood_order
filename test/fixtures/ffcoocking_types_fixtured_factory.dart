import 'package:data_fixture_dart/definitions/fixture_definition.dart';
import 'package:data_fixture_dart/factories/fixture_factory.dart';
import 'package:flistfood_order/product_model.dart';

extension FFCookingTypeFixture on FFCookingType {
  // ignore: library_private_types_in_public_api
  static _FFCookingTypeFixtureFactory factory() => _FFCookingTypeFixtureFactory();
}

class _FFCookingTypeFixtureFactory extends FixtureFactory<FFCookingType> {
  @override
  FixtureDefinition<FFCookingType> definition() => define(
        (faker) => FFCookingType(
          id: faker.randomGenerator.integer(9999),
          name: faker.lorem.word(),
          priority: faker.randomGenerator.integer(9999),
          isSelected: faker.randomGenerator.boolean(),
        ),
      );
}
