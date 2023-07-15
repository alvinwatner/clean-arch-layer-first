import 'package:flutter_test/flutter_test.dart';
import 'package:jobseekerapp/features/presentation/bloc/{{bloc.snakeCase()}}/{{bloc.snakeCase()}}_bloc.dart';

void main() {
  group('YOUR_EVENT', () {
    const tEvent = YOUR_EVENT();

    test(
      'make sure props value',
      () async {
        // assert
        expect(
          tEvent.props,
          [
            tEvent.arg1,
          ],
        );
      },
    );

    test(
      'make sure toString output',
      () async {
        // assert
        expect(
          tEvent.toString(),
          'YOUR_EVENT{arg1: ${arg1}}',
        );
      },
    );
  });
}
