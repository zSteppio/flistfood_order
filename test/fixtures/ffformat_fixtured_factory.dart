import 'package:data_fixture_dart/definitions/fixture_definition.dart';
import 'package:data_fixture_dart/factories/fixture_factory.dart';
import 'package:flistfood_order/product_model.dart';

extension FFFormatFixture on FFFormat {
  // ignore: library_private_types_in_public_api
  static _FFFormatFixtureFactory factory() => _FFFormatFixtureFactory();
}

class _FFFormatFixtureFactory extends FixtureFactory<FFFormat> {
  @override
  FixtureDefinition<FFFormat> definition() => define(
        (faker) => FFFormat(
          price: faker.randomGenerator.decimal(),
          format: faker.lorem.word(),
        ),
      );
}
