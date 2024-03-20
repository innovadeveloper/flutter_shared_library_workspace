import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_app/src/models/product.dart';
import 'package:simple_app/src/ui/login/login_dto.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.error() = Error;
  const factory LoginState.data(LoginDTO loginDTO) = Data;
}
