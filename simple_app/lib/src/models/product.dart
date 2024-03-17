import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required String id,
    required String name,
    required Color color,
  }) = _Product;

  const factory Product.phone({
    required String id,
    required String name,
    @Default(Colors.red) Color color,
  }) = _Phone;

  const factory Product.insurance({
    required String id,
    required String name,
    required double quote,
  }) = _Insurance;
}
