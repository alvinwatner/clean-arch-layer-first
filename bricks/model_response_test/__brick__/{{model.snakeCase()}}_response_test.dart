import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:jobseekerapp/features/data/models/{{feature.snakeCase()}}/{{model.snakeCase()}}_response.dart';

import '../../../../fixture/fixture_reader.dart';

void main() {
  final jsonData = json.decode(fixture('{{model.snakeCase()}}_response.json'));

  group('{{model.pascalCase()}}Response', () {
    final tModel = {{model.pascalCase()}}Response.fromJson(jsonData);

    test(
      'make sure props value',
      () async {
        // assert
        expect(
          tModel.props,
          [
            tModel.message,
            tModel.data,
          ],
        );
      },
    );

    test(
      'make sure toString output',
      () async {
        // assert
        expect(
          tModel.toString(),
          '{{model.pascalCase()}}Response{message: ${tModel.message}, data: ${tModel.data}}',
        );
      },
    );

    test(
      'make sure fromJson function return {{model.pascalCase()}}',
      () async {
        // act
        final actualModel = {{model.pascalCase()}}Response.fromJson(jsonData);

        // assert
        expect(actualModel, tModel);
      },
    );

    test(
      'make sure toJson function return Map object',
      () async {
        // arrange
        final model = {{model.pascalCase()}}Response.fromJson(jsonData);

        // act
        final actualMap = json.encode(model.toJson());

        // assert
        expect(actualMap, json.encode(tModel.toJson()));
      },
    );
  });
}
