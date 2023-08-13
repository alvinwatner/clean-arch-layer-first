// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '{{bloc.snakeCase()}}_bloc.dart';

abstract class {{bloc.pascalCase()}}State extends Equatable {
  const {{bloc.pascalCase()}}State();

  @override
  List<Object> get props => [];
}

class {{bloc.pascalCase()}}InitialState extends {{bloc.pascalCase()}}State {}

class {{bloc.pascalCase()}}LoadInProgress extends {{bloc.pascalCase()}}State {}

class {{bloc.pascalCase()}}LoadSuccess extends {{bloc.pascalCase()}}State {
  final {{model.pascalCase()}}Response {{model.camelCase()}}Response;
  const {{bloc.pascalCase()}}LoadSuccess({
    required this.{{model.camelCase()}}Response,
  });

  @override
  List<Object> get props => [{{model.camelCase()}}Response];

  @override
  String toString() {
    return '{{bloc.pascalCase()}}LoadSuccess{{{model.camelCase()}}Response: ${{model.camelCase()}}Response}';
  }  
}

class {{bloc.pascalCase()}}LoadFailure extends {{bloc.pascalCase()}}State {
  final String errorMessage;
  const {{bloc.pascalCase()}}LoadFailure({
    required this.errorMessage,
  });

  @override
  List<Object> get props => [errorMessage];

  @override
  String toString() {
    return '{{bloc.pascalCase()}}LoadFailure{errorMessage: $errorMessage}';
  }
}
