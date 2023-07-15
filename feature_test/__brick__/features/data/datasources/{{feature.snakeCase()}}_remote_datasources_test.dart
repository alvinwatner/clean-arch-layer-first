import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jobseekerapp/config/flavor_config.dart';
import 'package:jobseekerapp/features/data/datasources/{{feature.snakeCase()}}_remote_datasources.dart';

import 'package:mockito/mockito.dart';

import '../../../fixture/fixture_reader.dart';
import '../../../helper/mock_helper.mocks.dart';

void main() {
  late {{feature.pascalCase()}}RemoteDataSource remoteDataSource;
  late MockDio mockDio;
  late MockHttpClientAdapter mockDioAdapter;

  dotenv.testLoad(fileInput: File('test/.env').readAsStringSync());
  final String? baseUrl = dotenv.env['BASE_URL'];

  setUp(
    () {
      FlavorConfig(
        flavor: Flavor.development,
        values: FlavorValues(
          baseUrlEndpoint: '',
          baseUrlRootWeb: '',
        ),
      );
      FlavorConfig.instance!.values!.baseUrlEndpoint = baseUrl ?? '';
      mockDio = MockDio();
      mockDioAdapter = MockHttpClientAdapter();
      mockDio.httpClientAdapter = mockDioAdapter;
      remoteDataSource = {{feature.pascalCase()}}RemoteDataSourceImpl(
        dio: mockDio,
      );
    },
  );

  final tRequestOptions = RequestOptions(path: '');

}
