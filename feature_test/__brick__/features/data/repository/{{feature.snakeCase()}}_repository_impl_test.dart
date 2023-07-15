import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jobseekerapp/core/error/data_api_failure.dart';
import 'package:jobseekerapp/core/error/failure.dart';
import 'package:jobseekerapp/features/data/repositories/{{feature.snakeCase()}}/{{feature.snakeCase()}}_repository_impl.dart';
import 'package:mockito/mockito.dart';
import '../../../fixture/fixture_reader.dart';
import '../../../helper/mock_helper.mocks.dart';

void main() {
  late {{feature.pascalCase()}}RepositoryImpl repositoryImpl;
  late Mock{{feature.pascalCase()}}RemoteDataSource mockRemoteDataSource;
  late Mock{{feature.pascalCase()}}LocalDataSource mockLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = Mock{{feature.pascalCase()}}RemoteDataSource();
    mockLocalDataSource = Mock{{feature.pascalCase()}}LocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repositoryImpl = {{feature.pascalCase()}}RepositoryImpl(
      localDataSource: mockLocalDataSource,
      remoteDataSource: mockRemoteDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  final tRequestOptions = RequestOptions(path: '');

  void setUpMockNetworkConnected() {
    when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
  }

  void setUpMockNetworkDisconnected() {
    when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
  }

  void testDisconnected(Function endpointInvoke) {
    test(
      'make sure return ConnectionFailure when device is not connected to internet',
      () async {
        // arrange
        setUpMockNetworkDisconnected();

        // act
        final result = await endpointInvoke.call();

        // assert
        verify(mockNetworkInfo.isConnected);
        expect(result, Left(ConnectionFailure()));
      },
    );
  }

  void testServerFailureString(
      Function whenInvoke, Function actInvoke, Function verifyInvoke) {
    test(
      'make sure return ServerFailure when Repository receives failed response from endpoint',
      () async {
        // arrange
        setUpMockNetworkConnected();
        when(whenInvoke.call()).thenThrow(
          DioError(
            requestOptions: tRequestOptions,
            error: 'testError',
            response: Response(
              requestOptions: tRequestOptions,
              data: 'testDataError',
              statusCode: 400,
            ),
          ),
        );

        // act
        final result = await actInvoke.call();

        // assert
        verify(verifyInvoke.call());
        expect(
            result,
            Left(ServerFailure(const DataApiFailure(
              message: 'testError',
              httpMessage: 'testError',
              statusCode: 400,
            ))));
      },
    );
  }

  void testParsingFailure(
      Function whenInvoke, Function actInvoke, Function verifyInvoke) {
    test(
      'make sure return ParsingFailure when RemoteDataSource receives not valid response from endpoint',
      () async {
        // arrange
        setUpMockNetworkConnected();
        when(whenInvoke.call()).thenThrow(TypeError());

        // act
        final result = await actInvoke.call();

        // assert
        verify(verifyInvoke.call());
        expect(result, Left(ParsingFailure(TypeError().toString())));
      },
    );
  }

}
