// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String name, Color color) $default, {
    required TResult Function(String id, String name, Color color) phone,
    required TResult Function(String id, String name, double quote) insurance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String name, Color color)? $default, {
    TResult? Function(String id, String name, Color color)? phone,
    TResult? Function(String id, String name, double quote)? insurance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String name, Color color)? $default, {
    TResult Function(String id, String name, Color color)? phone,
    TResult Function(String id, String name, double quote)? insurance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Product value) $default, {
    required TResult Function(_Phone value) phone,
    required TResult Function(_Insurance value) insurance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Product value)? $default, {
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Insurance value)? insurance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Product value)? $default, {
    TResult Function(_Phone value)? phone,
    TResult Function(_Insurance value)? insurance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, Color color});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
  }) {
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_Product implements _Product {
  const _$_Product({required this.id, required this.name, required this.color});

  @override
  final String id;
  @override
  final String name;
  @override
  final Color color;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String name, Color color) $default, {
    required TResult Function(String id, String name, Color color) phone,
    required TResult Function(String id, String name, double quote) insurance,
  }) {
    return $default(id, name, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String name, Color color)? $default, {
    TResult? Function(String id, String name, Color color)? phone,
    TResult? Function(String id, String name, double quote)? insurance,
  }) {
    return $default?.call(id, name, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String name, Color color)? $default, {
    TResult Function(String id, String name, Color color)? phone,
    TResult Function(String id, String name, double quote)? insurance,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, name, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Product value) $default, {
    required TResult Function(_Phone value) phone,
    required TResult Function(_Insurance value) insurance,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Product value)? $default, {
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Insurance value)? insurance,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Product value)? $default, {
    TResult Function(_Phone value)? phone,
    TResult Function(_Insurance value)? insurance,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String id,
      required final String name,
      required final Color color}) = _$_Product;

  @override
  String get id;
  @override
  String get name;
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhoneCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_PhoneCopyWith(_$_Phone value, $Res Function(_$_Phone) then) =
      __$$_PhoneCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, Color color});
}

/// @nodoc
class __$$_PhoneCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res, _$_Phone>
    implements _$$_PhoneCopyWith<$Res> {
  __$$_PhoneCopyWithImpl(_$_Phone _value, $Res Function(_$_Phone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
  }) {
    return _then(_$_Phone(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_Phone implements _Phone {
  const _$_Phone(
      {required this.id, required this.name, this.color = Colors.red});

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final Color color;

  @override
  String toString() {
    return 'Product.phone(id: $id, name: $name, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Phone &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneCopyWith<_$_Phone> get copyWith =>
      __$$_PhoneCopyWithImpl<_$_Phone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String name, Color color) $default, {
    required TResult Function(String id, String name, Color color) phone,
    required TResult Function(String id, String name, double quote) insurance,
  }) {
    return phone(id, name, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String name, Color color)? $default, {
    TResult? Function(String id, String name, Color color)? phone,
    TResult? Function(String id, String name, double quote)? insurance,
  }) {
    return phone?.call(id, name, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String name, Color color)? $default, {
    TResult Function(String id, String name, Color color)? phone,
    TResult Function(String id, String name, double quote)? insurance,
    required TResult orElse(),
  }) {
    if (phone != null) {
      return phone(id, name, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Product value) $default, {
    required TResult Function(_Phone value) phone,
    required TResult Function(_Insurance value) insurance,
  }) {
    return phone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Product value)? $default, {
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Insurance value)? insurance,
  }) {
    return phone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Product value)? $default, {
    TResult Function(_Phone value)? phone,
    TResult Function(_Insurance value)? insurance,
    required TResult orElse(),
  }) {
    if (phone != null) {
      return phone(this);
    }
    return orElse();
  }
}

abstract class _Phone implements Product {
  const factory _Phone(
      {required final String id,
      required final String name,
      final Color color}) = _$_Phone;

  @override
  String get id;
  @override
  String get name;
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneCopyWith<_$_Phone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InsuranceCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_InsuranceCopyWith(
          _$_Insurance value, $Res Function(_$_Insurance) then) =
      __$$_InsuranceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, double quote});
}

/// @nodoc
class __$$_InsuranceCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Insurance>
    implements _$$_InsuranceCopyWith<$Res> {
  __$$_InsuranceCopyWithImpl(
      _$_Insurance _value, $Res Function(_$_Insurance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? quote = null,
  }) {
    return _then(_$_Insurance(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quote: null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Insurance implements _Insurance {
  const _$_Insurance(
      {required this.id, required this.name, required this.quote});

  @override
  final String id;
  @override
  final String name;
  @override
  final double quote;

  @override
  String toString() {
    return 'Product.insurance(id: $id, name: $name, quote: $quote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Insurance &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quote, quote) || other.quote == quote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, quote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsuranceCopyWith<_$_Insurance> get copyWith =>
      __$$_InsuranceCopyWithImpl<_$_Insurance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String name, Color color) $default, {
    required TResult Function(String id, String name, Color color) phone,
    required TResult Function(String id, String name, double quote) insurance,
  }) {
    return insurance(id, name, quote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String name, Color color)? $default, {
    TResult? Function(String id, String name, Color color)? phone,
    TResult? Function(String id, String name, double quote)? insurance,
  }) {
    return insurance?.call(id, name, quote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String name, Color color)? $default, {
    TResult Function(String id, String name, Color color)? phone,
    TResult Function(String id, String name, double quote)? insurance,
    required TResult orElse(),
  }) {
    if (insurance != null) {
      return insurance(id, name, quote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Product value) $default, {
    required TResult Function(_Phone value) phone,
    required TResult Function(_Insurance value) insurance,
  }) {
    return insurance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Product value)? $default, {
    TResult? Function(_Phone value)? phone,
    TResult? Function(_Insurance value)? insurance,
  }) {
    return insurance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Product value)? $default, {
    TResult Function(_Phone value)? phone,
    TResult Function(_Insurance value)? insurance,
    required TResult orElse(),
  }) {
    if (insurance != null) {
      return insurance(this);
    }
    return orElse();
  }
}

abstract class _Insurance implements Product {
  const factory _Insurance(
      {required final String id,
      required final String name,
      required final double quote}) = _$_Insurance;

  @override
  String get id;
  @override
  String get name;
  double get quote;
  @override
  @JsonKey(ignore: true)
  _$$_InsuranceCopyWith<_$_Insurance> get copyWith =>
      throw _privateConstructorUsedError;
}
