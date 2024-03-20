import 'package:freezed_annotation/freezed_annotation.dart';

part 'lce_state.freezed.dart';

@freezed
abstract class LCEState<T> with _$LCEState<T> {
  const factory LCEState.loading({required bool isStart}) = Loading<T>;
  const factory LCEState.content({required T data}) = Content<T>;
  const factory LCEState.error({required T data}) = Error<T>;
}

enum LoadingType {
  start,
  finish,
}
