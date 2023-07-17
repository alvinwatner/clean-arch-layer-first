import 'package:dio/dio.dart';
import 'package:jobseekerapp/config/flavor_config.dart';


abstract class {{feature.pascalCase()}}RemoteDataSource {

}

class {{feature.pascalCase()}}RemoteDataSourceImpl extends {{feature.pascalCase()}}RemoteDataSource {
  final Dio dio;
  {{feature.pascalCase()}}RemoteDataSourceImpl(
    this.dio,
  );

  final baseUrl = FlavorConfig.instance!.values!.baseUrlEndpoint;
  
}