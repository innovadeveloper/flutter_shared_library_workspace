import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:template_app/src/domain/dto/product_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'fake_store_api.g.dart';

// @lazySingleton
abstract class StoreApi{

  
  Future<Product> getProducts();
}

@RestApi(baseUrl: 'https://fakestoreapi.com/')
abstract class FakeStoreApi implements StoreApi {
  // final String name = "FAKE";
  factory FakeStoreApi(Dio dio, {String baseUrl}) = _FakeStoreApi;

  @GET('/products/1')
  Future<Product> getProducts();  // text 
}

@RestApi(baseUrl: 'https://dummyjson.com/')
abstract class OficialStoreApi implements StoreApi {
  // final String name = "OFICIAL";
  factory OficialStoreApi(Dio dio, {String baseUrl}) = _OficialStoreApi;
  

  @GET('/products/1')
  Future<Product> getProducts();  // iphone 9
}