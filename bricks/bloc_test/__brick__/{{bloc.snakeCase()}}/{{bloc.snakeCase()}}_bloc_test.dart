import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jobseekerapp/features/data/models/{{feature.snakeCase()}}/{{model.snakeCase()}}_response.dart';
import 'package:jobseekerapp/features/presentation/bloc/{{bloc.snakeCase()}}/{{bloc.snakeCase()}}_bloc.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixture/fixture_reader.dart';
import '../../../../helper/mock_helper.mocks.dart';

void main() {
  late Mock{{usecase.pascalCase()}} mock{{usecase.pascalCase()}};
  late {{bloc.pascalCase()}}Bloc bloc;

  setUp(() {
    mock{{usecase.pascalCase()}} = Mock{{usecase.pascalCase()}}();
    bloc = {{bloc.pascalCase()}}Bloc({{usecase.camelCase()}}: mock{{usecase.pascalCase()}});
  });

  tearDown(() {
    bloc.close();
  });

  test(
    'make sure iniitialState is [INITIAL_STATE]',
    () async {
      // assert
      expect(
        bloc.state,
        INITAL_STATE(),
      );
    },
  );

  group('YOUR_EVENT', () {
    const t{{model.snakeCase()}}Response = {{model.pascalCase()}}Response(data: arg1);  

    blocTest(
      'make sure emit [LOADING STATE, SUCCESS STATE] when receive YOUR EVENT with success response',
      build: () {
        when(mock{{usecase.pascalCase()}}(any))
            .thenAnswer((_) async => const Right(t{{model.snakeCase()}}Response));
        return bloc;
      },
      act: ({{bloc.pascalCase()}}Bloc bloc) =>
          bloc.add(const YOUR EVENT()),
      expect: () => [
        LOADING_STATE(),
        SUCCESS_STATE(data),
      ],
    );
});

}