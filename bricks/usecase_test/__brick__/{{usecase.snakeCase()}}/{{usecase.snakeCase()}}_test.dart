import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{#isJobseekerApp}}jobseekerapp{{/isJobseekerApp}}{{#isJobseekerPartner}}jobseekerpartner{{/isJobseekerPartner}}/features/data/models/{{feature.snakeCase()}}/{{model.snakeCase()}}_response.dart';
import 'package:jobseekerapp/features/data/models/{{feature.snakeCase()}}/{{model.snakeCase()}}_response.dart';
import 'package:jobseekerapp/features/domain/usecases/{{usecase.snakeCase()}}/{{usecase.snakeCase()}}.dart';
import 'package:mockito/mockito.dart';

import '../../../../helper/mock_helper.mocks.dart';

void main() {
  late {{usecase.pascalCase()}} usecase;
  late Mock{{feature.pascalCase()}}Repository mock{{feature.pascalCase()}}Repository;

  const tParams = Params{{usecase.pascalCase()}}(arg1: '');

  setUp(() {
    mock{{feature.pascalCase()}}Repository = Mock{{feature.pascalCase()}}Repository();
    usecase = {{usecase.pascalCase()}}(
      repository: mock{{feature.pascalCase()}}Repository,
    );
  });

  test(
    'make sure usecase sucessful receive response from endpoint',
    () async {
      // arrange
      const tResponse = {{model.pascalCase()}}Response();
      when(mock{{feature.pascalCase()}}Repository.{{usecase.camelCase()}}(any)).thenAnswer(
        (_) async => const Right(tResponse),
      );

      // act
      final result = await usecase(tParams);

      // assert
      expect(result, const Right(tResponse));
      verify(mock{{feature.pascalCase()}}Repository.{{usecase.camelCase()}}(any));
      verifyNoMoreInteractions(mock{{feature.pascalCase()}}Repository);
    },
  );

  test(
    'make sure props value',
    () async {
      // assert
      expect(
        tParams.props,
        [
          tParams.email,
        ],
      );
    },
  );

  test(
    'make sure toString function',
    () async {
      // assert
      expect(
        tParams.toString(),
        'Params{{usecase.pascalCase()}}{arg1: ${tParams.arg1}}',
      );
    },
  );
}
