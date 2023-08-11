import 'package:dio/dio.dart';
import 'package:jobseekerapp/config/flavor_config.dart';
import 'package:jobseekerapp/config/base_url_config.dart';


abstract class {{feature.pascalCase()}}RemoteDataSource {

}

class {{feature.pascalCase()}}RemoteDataSourceImpl extends {{feature.pascalCase()}}RemoteDataSource {
  final Dio dio;
  {{feature.pascalCase()}}RemoteDataSourceImpl({
    required this.dio,
  });

  final baseUrl = FlavorConfig.instance!.values!.baseUrlEndpoint;
  
}