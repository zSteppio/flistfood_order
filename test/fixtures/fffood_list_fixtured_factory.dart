import 'package:data_fixture_dart/definitions/fixture_definition.dart';
import 'package:data_fixture_dart/factories/fixture_factory.dart';
import 'package:flistfood_order/product_model.dart';

import 'fffood_detail_fixtured_factory.dart';

extension FFFoodlistFixture on FFFoodlist {
  // ignore: library_private_types_in_public_api
  static _FFFoodlistFixtureFactory factory() => _FFFoodlistFixtureFactory();
}

class _FFFoodlistFixtureFactory extends FixtureFactory<FFFoodlist> {
  @override
  FixtureDefinition<FFFoodlist> definition() => define(
        (faker) => FFFoodlist(
          foods: FFFoodDetailFixture.factory().makeMany(3),
          id: faker.randomGenerator.integer(9999),
          name: faker.lorem.word(),
          priceListIds: [
            faker.randomGenerator.integer(9999),
            faker.randomGenerator.integer(9999),
            faker.randomGenerator.integer(9999),
          ],
          foodIds: [
            faker.randomGenerator.integer(9999),
            faker.randomGenerator.integer(9999),
            faker.randomGenerator.integer(9999),
          ],
          alternative: faker.randomGenerator.boolean(),
          hidden: faker.randomGenerator.boolean(),
        ),
      );
}
