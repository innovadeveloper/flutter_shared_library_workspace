import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_app/src/models/product.dart';
import 'package:simple_app/src/ui/products/product_state.dart';

class ProductController extends StateNotifier<ProductState> {
  // 1. initialize with current time
  ProductController() : super(ProductState.initial()) {}

  // Método para incrementar el contador
  Future<void> incrementCounter() async {
    try {
      print("incrementnaod...");
      // Indicar que se está cargando
      state = const ProductState.loading();
      // Simular una operación asíncrona
      await Future.delayed(Duration(seconds: 2));
      // Establecer un producto en el estado de datos
      state = ProductState.data(Product.phone(id: "xyz", name: "Iphone "));
    } catch (e) {
      // Manejar errores
      state = const ProductState.error();
    }
  }

  // 4. cancel the timer when finished
  @override
  void dispose() {
    super.dispose();
  }
}
