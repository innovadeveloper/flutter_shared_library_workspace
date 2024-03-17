import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_app/src/models/product.dart';

part 'product_state.freezed.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState.initial() = Initial;
  const factory ProductState.loading() = Loading;
  const factory ProductState.error() = Error;
  const factory ProductState.data(Product product) = Data;
}