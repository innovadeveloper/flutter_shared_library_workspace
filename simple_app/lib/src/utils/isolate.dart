import 'dart:async';
import 'dart:isolate';

class IsolateRunner<T> {
  late final ReceivePort _receivePort;
  late final Completer<T> _completer;

  IsolateRunner();

  Future<T> run(Function function) async {
    _receivePort = ReceivePort();
    _completer = Completer<T>();

    // Crea un nuevo aislamiento (Isolate) y pasa el puerto de recepción como argumento
    await Isolate.spawn<CustomIsolateData<T>>(
        _isolateEntry, CustomIsolateData<T>(function, _receivePort.sendPort));
    print("future run doneee");
    // Devuelve el futuro para esperar el resultado
    return _completer.future;
  }

  static void _isolateEntry<T>(dynamic data) {
    if (data is! CustomIsolateData<T>) {
      throw ArgumentError('Invalid data type for IsolateRunner');
    }

    // Ahora Dart sabe que data es de tipo CustomIsolateData<T>
    final isolateData = data as CustomIsolateData<T>;
    final Function? function = isolateData.function;
    final SendPort? sendPort = isolateData.sendPort;

    if (function != null && sendPort != null) {
      // Ejecuta la función y obtiene el resultado
      final result = function();

      // Envía el resultado al hilo principal a través del puerto de envío
      sendPort.send(result);
    } else {
      throw ArgumentError('Function or SendPort is null');
    }
  }

  void _handleResult(dynamic result) {
    // Completa el futuro con el resultado recibido del aislamiento
    _completer.complete(result as T);
    print("THIS REUSLT ${result}");
    // Cierra el puerto de recepción
    _receivePort.close();
  }

  void dispose() {
    // Cierra el puerto de recepción si no se ha completado
    if (!_completer.isCompleted) {
      _completer.completeError('Isolate execution cancelled.');
      _receivePort.close();
    }
  }
}

// class _IsolateData<T> {
//   final Function function;
//   final SendPort sendPort;

//   _IsolateData(this.function, this.sendPort);
// }

class CustomIsolateData<T> {
  final Function function;
  final SendPort sendPort;

  CustomIsolateData(this.function, this.sendPort);
}
