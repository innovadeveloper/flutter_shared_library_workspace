import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:simple_app/main.dart';
import 'package:simple_app/src/ui/products/product_state.dart';

class ProductWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.read(productController.notifier).incrementCounter();
    // watch the StateNotifierProvider to return a DateTime (the state)
    final state = ref.watch(productController);
    return Center(
      child: state.when(
        initial: () => Text("initial"),
        loading: () => CircularProgressIndicator(),
        error: () => Text("error"),
        data: (product) => Text("Product : ${product.name}"),
      ) ?? Container(),
    );
  }
}
