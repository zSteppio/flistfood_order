import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:flistfood_order/product_model.dart';

import 'fffoods_fixtured_factory.dart';

extension AlternativeFixture on Alternative {
  // ignore: library_private_types_in_public_api
  static _AlternativeFixtureFactory factory() => _AlternativeFixtureFactory();
}

class _AlternativeFixtureFactory extends FixtureFactory<Alternative> {
  @override
  FixtureDefinition<Alternative> definition() => define(
        (faker) => Alternative(
          foodListId: faker.randomGenerator.integer(9999),
          defaultFoodId: faker.randomGenerator.integer(9999),
          foodListName: faker.lorem.word(),
          foods: FFFoodFixture.factory().makeMany(3),
        ),
      );
}
