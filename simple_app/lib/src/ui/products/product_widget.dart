import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:simple_app/main.dart';
import 'package:simple_app/src/ui/products/product_state.dart';
import 'dart:isolate';

import 'package:simple_app/src/utils/isolate_util.dart';

class ProductWidget extends ConsumerWidget {
  final ExecutorIsolate<String> executor = ExecutorIsolate<String>();
  //
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // _executor.execute(10);
    // _calculateSum(); // llamado al isolate
    final selected = 1;
    final isOne = ExecutorTopic<bool>().executeFunction(() {
      return selected == 1;
    });
    print("is One $isOne");

    IsolateExecutor<int, int>().calculateSum();
    executor.executeFunction(() {
      // lògica pesadaaaaaa
      return "Resultado de la función pesada";
    }).then((value) {
      print("then value => $value");
    }).catchError((error) {
      print("error => $error");
    });

    // ref.read(productController.notifier).incrementCounter();

    // watch the StateNotifierProvider to return a DateTime (the state)
    final state = ref.watch(productController);
    return Center(
      child: state.when(
            initial: () => Text("initial"),
            loading: () => CircularProgressIndicator(),
            error: () => Text("error"),
            data: (product) => Text("Product : ${product.name}"),
          ) ??
          Container(),
    );
  }
}
