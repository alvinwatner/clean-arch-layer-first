import 'package:dio/dio.dart';
import 'package:jobseekerapp/core/error/failure.dart';
import 'package:jobseekerapp/core/service/network_info.dart';
import '../../../domain/repositories/{{feature.snakeCase()}}/{{feature.snakeCase()}}_repository.dart';
import '../../../../core/util/util.dart';
import '../../datasources/{{feature.snakeCase()}}_remote_datasources.dart';

class {{feature.pascalCase()}}RepositoryImpl extends {{feature.pascalCase()}}Repository {
  final {{feature.pascalCase()}}RemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  {{feature.pascalCase()}}RepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

}

