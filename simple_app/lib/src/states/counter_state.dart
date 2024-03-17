import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_app/src/models/product.dart';

part 'counter_state.freezed.dart';


@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState.initial() = Initial;
  const factory CounterState.loading() = Loading;
  const factory CounterState.error() = Error;
  const factory CounterState.data(Product product) = Data;
}