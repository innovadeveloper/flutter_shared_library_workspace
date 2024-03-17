import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClockController extends StateNotifier<DateTime> {
  // 1. initialize with current time
  ClockController() : super(DateTime.now()) {
    // 2. create a timer that fires every second
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      // 3. update the state with the current time
      state = DateTime.now();
    });
  }

  late final Timer _timer;

  // 4. cancel the timer when finished
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
