part of '{{bloc.snakeCase()}}_bloc.dart';

abstract class {{bloc.pascalCase()}}Event extends Equatable {
  const {{bloc.pascalCase()}}Event();

  @override
  List<Object> get props => [];
}

class {{bloc.pascalCase()}}GetInitialDataTriggered extends {{bloc.pascalCase()}}Event {}