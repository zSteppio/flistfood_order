import 'package:data_fixture_dart/definitions/fixture_definition.dart';
import 'package:data_fixture_dart/factories/fixture_factory.dart';
import 'package:flistfood_order/product_model.dart';

extension FFFoodDetailFixture on FFFoodDetail {
  // ignore: library_private_types_in_public_api
  static _FFFoodDetailFixtureFactory factory() => _FFFoodDetailFixtureFactory();
}

class _FFFoodDetailFixtureFactory extends FixtureFactory<FFFoodDetail> {
  @override
  FixtureDefinition<FFFoodDetail> definition() => define(
        (faker) => FFFoodDetail(
          categoryName: faker.lorem.word(),
          allergenIds: [
            faker.randomGenerator.integer(9999),
            faker.randomGenerator.integer(9999),
          ],
          productsCounts: faker.randomGenerator.integer(9999),
          canBeDeleted: faker.randomGenerator.boolean(),
          forList: faker.randomGenerator.boolean(),
          productId: faker.randomGenerator.integer(9999),
          fromPlatForm: faker.randomGenerator.boolean(),
          translations: [],
          isFree: faker.randomGenerator.boolean(),
          selected: faker.randomGenerator.boolean(),
          hiddenPrice: faker.randomGenerator.boolean(),
          id: faker.randomGenerator.integer(9999),
          name: faker.lorem.word(),
          shortName: faker.lorem.word(),
          variationPrice: faker.randomGenerator.decimal(),
          calories: faker.randomGenerator.integer(9999),
          foodCategoryId: faker.randomGenerator.integer(9999),
          tags: faker.lorem.word(),
          hidden: faker.randomGenerator.boolean(),
        ),
      );
}
