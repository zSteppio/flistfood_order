import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:flistfood_order/product_model.dart';

import 'fffoods_fixtured_factory.dart';

extension FFAlternativeFixture on FFAlternative {
  // ignore: library_private_types_in_public_api
  static _FFAlternativeFixtureFactory factory() => _FFAlternativeFixtureFactory();
}

class _FFAlternativeFixtureFactory extends FixtureFactory<FFAlternative> {
  @override
  FixtureDefinition<FFAlternative> definition() => define(
        (faker) => FFAlternative(
          foodListId: faker.randomGenerator.integer(9999),
          defaultFoodId: faker.randomGenerator.integer(9999),
          foodListName: faker.lorem.word(),
          foods: FFFoodFixture.factory().makeMany(3),
        ),
      );
}
