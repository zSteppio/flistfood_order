import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:flistfood_order/product_model.dart';

extension FFFoodFixture on FFFood {
  // ignore: library_private_types_in_public_api
  static _FFFoodFixtureFactory factory() => _FFFoodFixtureFactory();
}

class _FFFoodFixtureFactory extends FixtureFactory<FFFood> {
  @override
  FixtureDefinition<FFFood> definition() => define(
        (faker) => FFFood(
          foodId: faker.randomGenerator.integer(9999),
          name: faker.lorem.word(),
          price: faker.randomGenerator.decimal(),
          isSelected: faker.randomGenerator.boolean(),
        ),
      );
}
