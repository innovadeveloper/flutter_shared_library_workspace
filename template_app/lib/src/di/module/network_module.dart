import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:template_app/src/data/network/fake_store_api.dart';
import 'package:template_app/src/data/network/task_api.dart';
import 'package:template_app/src/di/qualifiers/annotations_di.dart';

/**
 * módulo proveedor de drivers de red...
 */
@module
abstract class NetworkModule {

  @Named(GENERIC_DIO_ANNOTATION)
  @singleton
  Dio get provideClassicDio {
    final dio = Dio();
    dio.options.headers['app-name'] = 'flutter-app';
    return dio;
  }

  @lazySingleton
  TaskApi provideTaskRestClient(@Named(GENERIC_DIO_ANNOTATION) Dio dio) =>
      TaskApi(dio);


  @Named(FAKE_STORE_API_ANNOTATION)
  @lazySingleton
  StoreApi provideFakeStoreApi(@Named(GENERIC_DIO_ANNOTATION) Dio dio) => FakeStoreApi(dio);
    
  @Named(OFICIAL_STORE_API_ANNOTATION)
  @lazySingleton
  StoreApi provideOficialtoreApi(@Named(GENERIC_DIO_ANNOTATION) Dio dio) => OficialStoreApi(dio);
}
