// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserProfileDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfileDTOCopyWith<UserProfileDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDTOCopyWith<$Res> {
  factory $UserProfileDTOCopyWith(
          UserProfileDTO value, $Res Function(UserProfileDTO) then) =
      _$UserProfileDTOCopyWithImpl<$Res, UserProfileDTO>;
  @useResult
  $Res call({String id, String name, int age});
}

/// @nodoc
class _$UserProfileDTOCopyWithImpl<$Res, $Val extends UserProfileDTO>
    implements $UserProfileDTOCopyWith<$Res> {
  _$UserProfileDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserProfileDTOCopyWith<$Res>
    implements $UserProfileDTOCopyWith<$Res> {
  factory _$$_UserProfileDTOCopyWith(
          _$_UserProfileDTO value, $Res Function(_$_UserProfileDTO) then) =
      __$$_UserProfileDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int age});
}

/// @nodoc
class __$$_UserProfileDTOCopyWithImpl<$Res>
    extends _$UserProfileDTOCopyWithImpl<$Res, _$_UserProfileDTO>
    implements _$$_UserProfileDTOCopyWith<$Res> {
  __$$_UserProfileDTOCopyWithImpl(
      _$_UserProfileDTO _value, $Res Function(_$_UserProfileDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_$_UserProfileDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UserProfileDTO implements _UserProfileDTO {
  const _$_UserProfileDTO(
      {required this.id, required this.name, required this.age});

  @override
  final String id;
  @override
  final String name;
  @override
  final int age;

  @override
  String toString() {
    return 'UserProfileDTO(id: $id, name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProfileDTOCopyWith<_$_UserProfileDTO> get copyWith =>
      __$$_UserProfileDTOCopyWithImpl<_$_UserProfileDTO>(this, _$identity);
}

abstract class _UserProfileDTO implements UserProfileDTO {
  const factory _UserProfileDTO(
      {required final String id,
      required final String name,
      required final int age}) = _$_UserProfileDTO;

  @override
  String get id;
  @override
  String get name;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileDTOCopyWith<_$_UserProfileDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
