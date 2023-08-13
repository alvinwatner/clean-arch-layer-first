// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '{{bloc.snakeCase()}}_bloc.dart';

abstract class {{bloc.pascalCase()}}State extends Equatable {
  const {{bloc.pascalCase()}}State();

  @override
  List<Object> get props => [];
}

class {{bloc.pascalCase()}}InitialState extends {{bloc.pascalCase()}}State {}

class {{bloc.pascalCase()}}LoadingState extends {{bloc.pascalCase()}}State {}

class {{bloc.pascalCase()}}SuccessState extends {{bloc.pascalCase()}}State {
  final {{model.pascalCase()}}Response {{model.camelCase()}}Response;
  const {{bloc.pascalCase()}}SuccessState({
    required this.{{model.camelCase()}}Response,
  });

  @override
  List<Object> get props => [{{model.camelCase()}}Response];

  @override
  String toString() {
    return '{{bloc.pascalCase()}}SuccessState{{{model.camelCase()}}Response: ${{model.camelCase()}}Response}';
  }  
}

class {{bloc.pascalCase()}}FailureState extends {{bloc.pascalCase()}}State {
  final String errorMessage;
  const {{bloc.pascalCase()}}FailureState({
    required this.errorMessage,
  });

  @override
  List<Object> get props => [errorMessage];

  @override
  String toString() {
    return '{{bloc.pascalCase()}}FailureState{errorMessage: $errorMessage}';
  }
}
