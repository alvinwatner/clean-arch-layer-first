import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:jobseekerapp/features/data/models/{{feature.snakeCase()}}/{{model.snakeCase()}}_response.dart';
import 'package:jobseekerapp/features/domain/usecases/{{usecase.snakeCase()}}/{{usecase.snakeCase()}}.dart';

import '../../../../core/error/failure.dart';

part '{{bloc.snakeCase()}}_event.dart';
part '{{bloc.snakeCase()}}_state.dart';

class {{bloc.pascalCase()}}Bloc extends Bloc<{{bloc.pascalCase()}}Event, {{bloc.pascalCase()}}State> {
  final {{usecase.pascalCase()}} {{usecase.camelCase()}};
   {{bloc.pascalCase()}}Bloc({required this.{{usecase.camelCase()}}})
      : super({{bloc.pascalCase()}}InitialState()) {
    on<{{bloc.pascalCase()}}GetInitialDataTriggered>(_onGetInitialDataTriggered);
  }

  void _onGetInitialDataTriggered(
    {{bloc.pascalCase()}}GetInitialDataTriggered event,
    Emitter<{{bloc.pascalCase()}}State> emit,
  ) async {
    emit({{bloc.pascalCase()}}LoadInProgress());
    final result = await {{usecase.camelCase()}}(const Params{{usecase.pascalCase()}}());

    emit(
      result.fold(
        (failure) {
          var errorMessage = '';
          if (failure is ServerFailure) {
            errorMessage = failure.dataApiFailure.message ?? errorMessage;
          } else if (failure is ConnectionFailure) {
            errorMessage = failure.errorMessage;
          } else if (failure is ParsingFailure) {
            errorMessage = failure.errorMessage;
          }
          return {{bloc.pascalCase()}}LoadFailure(
            errorMessage: errorMessage,
          );
        },
        (response) => {{bloc.pascalCase()}}LoadSuccess(
          {{model.camelCase()}}Response: response,
        ),
      ),
    );
  }
}
