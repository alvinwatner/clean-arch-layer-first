// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jobseekerapp/core/error/data_api_failure.dart';
import 'package:jobseekerapp/core/error/failure.dart';
import 'package:jobseekerapp/core/service/network_info.dart';


abstract class {{feature.pascalCase()}}RemoteDataSource {

}

class {{feature.pascalCase()}}RemoteDataSourceImpl extends {{feature.pascalCase()}}RemoteDataSource {
  {{feature.pascalCase()}}RemoteDataSourceImpl();
}