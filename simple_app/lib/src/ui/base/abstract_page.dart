// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:focus_detector_v2/focus_detector_v2.dart';
import 'package:simple_app/src/ui/base/view_model.dart';

/**
 * Requiere los siguientes objetos : 
 * T : StateNotifier<DomainClass>
 * K : LCEState<DomainClass>
 * J : DomainClass
 */
abstract class AbstractPage<T extends ViewModel<K>, K> extends ConsumerWidget {
  final String extraParameter;
  // late State state;
  late WidgetRef ref;
  late K currentState;
  final StateNotifierProvider<T, K> provider;

  AbstractPage(this.provider, {Key? key, required this.extraParameter})
      : super(key: key);

  void onResume() {}

  void onPause() {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    this.ref = ref;
    this.currentState = ref.watch(provider); // cast to LCE State
    return FocusDetector(
        onFocusLost: () => onPause(),
        onFocusGained: () => onResume(),
        child: buildWidget(context, extraParameter, ref, this.currentState));
  }

  Widget buildWidget(BuildContext context, String extraParameter, WidgetRef ref,
      K renderState);

  void onLoading(bool isStarted) {}

  T get viewModel => this.ref.read(this.provider.notifier);
}
