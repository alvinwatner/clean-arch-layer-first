// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:jobseekerapp/core/usecases/use_case.dart';
import 'package:jobseekerapp/features/data/models/{{feature.snakeCase()}}/{{model.snakeCase()}}.dart';
import 'package:jobseekerapp/features/domain/repositories/{{feature.snakeCase()}}/{{feature.snakeCase()}}_repository.dart';

import '../../../../../core/error/failure.dart';

class {{usecase.pascalCase()}} implements UseCase<{{model.pascalCase()}}, Params{{usecase.pascalCase()}}> {
  final {{feature.pascalCase()}}Repository repository;
  {{usecase.pascalCase()}}({
    required this.repository,
  });

  @override
  Future<Either<Failure, {{model.pascalCase()}}>> call(Params{{usecase.pascalCase()}} params) async {
    return repository.{{usecase.camelCase()}}(
      params.arg1 ?? '',
      params.arg2 ?? '',
    );
  }
}

class Params{{usecase.pascalCase()}} extends Equatable {
  final String? arg1;
  final String? arg2;

  const Params{{usecase.pascalCase()}}({
    this.arg1,
    this.arg2,
  });

  @override
  List<Object?> get props => [
        arg1,
        arg2,
      ];

  @override
  String toString() {
    return 'Params{{usecase.pascalCase()}}{arg1: $arg1, arg2: $arg2}';
  }
}
