import 'package:riverpod/riverpod.dart';
import 'package:simple_app/src/models/product.dart';
import 'package:simple_app/src/states/counter_state.dart';

// Definir un StateNotifier que actualiza el estado del contador
class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier() : super(const CounterState.initial());

  // Método para incrementar el contador
  Future<void> incrementCounter() async {
    try {
      // Indicar que se está cargando
      state = const CounterState.loading();

      // Simular una operación asíncrona
      await Future.delayed(Duration(seconds: 2));

      // Establecer un producto en el estado de datos
      state = CounterState.data(Product.phone(id: "10", name: "name"));
    } catch (e) {
      // Manejar errores
      state = const CounterState.error();
    }
  }
}