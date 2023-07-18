// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '{{bloc.snakeCase()}}_bloc.dart';

abstract class {{bloc.pascalCase()}}State extends Equatable {
  const {{bloc.pascalCase()}}State();

  @override
  List<Object> get props => [];
}

class {{bloc.pascalCase()}}InitialState extends {{bloc.pascalCase()}}State {}

class {{bloc.pascalCase()}}State extends {{bloc.pascalCase()}}State {}

class {{bloc.pascalCase()}}SuccessState extends {{bloc.pascalCase()}}State {
  final {{model.pascalCase()}}Reponse {{model.camelCase()}}Reponse;
  const {{bloc.pascalCase()}}SuccessState({
    required this.{{model.pascalCase()}}Reponse,
  });

  @override
  List<Object> get props => [{{model.camelCase()}}Reponse];

  @override
  String toString() {
    return '{{bloc.pascalCase()}}SuccessState{{{model.camelCase()}}Reponse: ${{model.camelCase()}}Reponse}';
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
