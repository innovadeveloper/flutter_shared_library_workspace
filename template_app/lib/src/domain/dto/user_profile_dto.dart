import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_dto.freezed.dart';

@freezed
abstract class UserProfileDTO with _$UserProfileDTO {
  const factory UserProfileDTO(
      {required String id,
      required String name,
      required int age}) = _UserProfileDTO;
}
