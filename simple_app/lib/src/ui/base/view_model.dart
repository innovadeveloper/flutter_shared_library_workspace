import 'package:flutter/material.dart';
import 'package:simple_app/src/ui/base/lce_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// abstract class ViewModel<T> {
//   // final renderState =
//   //     ValueNotifier<LCEState<T>>(LCEState.loading(isStart: true));
//   LCEState<T>? renderState;
// }

abstract class ViewModel<T> extends StateNotifier<T> {
  ViewModel(super.state);

  void sendValue(T data) {
    state = data;
  }
}
