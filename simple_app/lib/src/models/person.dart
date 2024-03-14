// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';

part 'person.freezed.dart';
part 'person.g.dart';

abstract class FromJson<T> {
  T fromJson(Map<String, dynamic> json);
}

@freezed
class Person with _$Person {
  const factory Person({
    required String firstName,
    required String lastName,
    required int age,
  }) = _Person;

  // Agrega el método factory para la conversión de JSON
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}

// Define una función genérica para convertir el JSON en una instancia de la clase especificada
T fromJson<T>(Map<String, dynamic> json, {required FromJson<T> factory}) {
  return factory.fromJson(json);
}
