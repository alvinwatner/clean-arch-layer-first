import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:jobseekerapp/features/presentation/bloc/{{bloc.snakeCase()}}/{{bloc.snakeCase()}}_bloc.dart';

import '../../../../fixture/fixture_reader.dart';

void main() {
  group('INITIAL_STATE', () {
    final tInitial = INITIAL_STATE();

    test(
      'make sure props value',
      () async {
        // assert
        expect(
          tInitial.props,
          [],
        );
      },
    );

    test(
      'make sure toString value',
      () async {
        // assert
        expect(
          tInitial.toString(),
          'INITIAL_STATE()',
        );
      },
    );
  });
}
