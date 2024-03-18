import 'dart:async';
import 'dart:isolate';

class ExecutorTopic<R> {
  R executeFunction(R Function() function) {
    // Ejecutar la función con el argumento proporcionado
    return function();
  }
}

class ExecutorIsolate<R> {
  late R Function() function;
  late R response;
  late Completer<R> _completer = Completer<R>();

  Future<R> executeFunction(R Function() function) async {
    this.function = function;
    ReceivePort receivePort = ReceivePort();
    await Isolate.spawn(_isolateEntry, receivePort.sendPort);
    receivePort.listen((dynamic message) {
      print("RESULTADO FINAL $message");
      response = message;
      _completer.complete(message);
    });
    return _completer.future;
  }

  // ejecuta la funciòn pesada y notifica por el sendport
  void _isolateEntry(SendPort sendPort) {
    R result = function();
    sendPort.send(result);
  }
}

// class ExecutorIsolate<R> {
//   late R Function() function;

//   Future<R> executeFunction(R Function() function) async {
//     Completer<R> completer = Completer<R>();
//     ReceivePort receivePort = ReceivePort();
//     late SendPort sendPort;

//     // Establece el handler para recibir el resultado del aislado
//     receivePort.listen((dynamic message) {
//       completer.complete(message as R);
//       receivePort.close();
//     });

//     // Crea el aislado y envía el sendPort
//     await Isolate.spawn(_isolateEntry, receivePort.sendPort)
//         .then((isolate) => sendPort = isolate);

//     // Envía la función para ejecutar en el aislado
//     sendPort.send(function);

//     return completer.future;
//   }

//   // Función que se ejecutará en el aislado
//   static void _isolateEntry(SendPort sendPort) {
//     ReceivePort receivePort = ReceivePort();
//     sendPort.send(receivePort.sendPort);

//     receivePort.listen((dynamic message) {
//       final Function() function = message as Function();
//       final R result = function();
//       sendPort.send(result);
//     });
//   }
// }

class IsolateExecutor<T, R> {
  // int _result = 0;

  // heavy method
  void calculateSum() async {
    // Crear un ReceivePort para recibir el resultado del Isolate
    ReceivePort receivePort = ReceivePort();

    // Configurar el Isolate para que escuche en el ReceivePort
    await Isolate.spawn(_isolateEntry, receivePort.sendPort);

    // Esperar el resultado del Isolate
    receivePort.listen((dynamic message) {
      print("RESULTADO FINAL $message");
      // setState(() {
      //   // Actualizar el estado con el resultado recibido del Isolate
      //   _result = message;
      // });
    });
  }

  static int _calculateSumInIsolate(int a, int b) {
    // Cálculo en el Isolate
    return a + b;
  }

  static void _isolateEntry(SendPort sendPort) {
    // Función de cálculo en el Isolate
    int result = _calculateSumInIsolate(10, 20);
    // Enviar el resultado de vuelta al hilo principal a través del SendPort
    sendPort.send(result);
  }
}
