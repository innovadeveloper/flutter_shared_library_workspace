import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_app/src/domain/dto/user_profile_dto.dart';

part 'user_profile_state.freezed.dart';

@freezed
abstract class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = Initial;
  const factory UserProfileState.loading() = Loading;
  const factory UserProfileState.error() = Error;
  const factory UserProfileState.data(UserProfileDTO userProfileDTO) = Data;
}
