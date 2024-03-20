import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
// import 'package:object_mapper_library/object_mapper_library.dart';
// import 'package:object_mapper_library/object_mapper_library.dart';
import 'dart:convert';

import 'package:rxdart/subjects.dart';
import 'package:simple_app/src/counter_widget.dart';
import 'package:simple_app/src/di/di.dart';
import 'package:simple_app/src/di/services/services.dart';
import 'package:simple_app/src/models/product.dart';
import 'package:simple_app/src/states/counter_bloc.dart';
import 'package:simple_app/src/states/counter_notifier.dart';
import 'package:simple_app/src/states/counter_state.dart';
import 'package:simple_app/src/states/counter_state_notifier.dart';
import 'package:intl/intl.dart';
import 'package:simple_app/src/ui/abstract_widget.dart';
import 'package:simple_app/src/ui/clock/clock_controller.dart';
import 'package:simple_app/src/ui/login/login_state.dart';
import 'package:simple_app/src/ui/login/login_view_model.dart';
import 'package:simple_app/src/ui/login/login_widget.dart';
import 'package:simple_app/src/ui/order/order_widget.dart';
import 'package:simple_app/src/ui/products/product_controller.dart';
import 'package:simple_app/src/ui/products/product_state.dart';
import 'package:simple_app/src/ui/products/product_widget.dart';
import 'package:simple_app/src/utils/isolate.dart';

// final helloWorldProvider = Provider<String>((ref) {
//   return 'Hello world 2';
// });

// final helloWorldProvider = Provider<String>((_) => 'Hello world');

// // Note: StateNotifierProvider has *two* type annotations
// final clockProvider = StateNotifierProvider<Clock, DateTime>((ref) {
//   return Clock();
// });

final clockController = StateNotifierProvider<ClockController, DateTime>((ref) {
  return ClockController();
});

final productController =
    StateNotifierProvider<ProductController, ProductState>((ref) {
  return ProductController();
});

final loginController =
    StateNotifierProvider<LoginViewModel, LoginState>((ref) {
  return LoginViewModel();
});

// [WIDGET PAGE]
class ClockWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch the StateNotifierProvider to return a DateTime (the state)
    final currentTime = ref.watch(clockController);
    // format the time as `hh:mm:ss`
    final timeFormatted = DateFormat.Hms().format(currentTime);
    // final timeFormatted = DateFormat.Hms().format(currentTime);
    return Center(child: Text(timeFormatted));
  }
}

void main() async {
  configureDependencies();
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Colors.black,
        primaryColorLight: Colors.white,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.white,
        ),
        textTheme: TextTheme(
            headlineLarge: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontFamily: 'Poppins',
            ),
            headlineMedium: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontFamily: 'Poppins',
            ),
            headlineSmall: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontFamily: 'Poppins',
            ),
            bodySmall: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              fontFamily: 'Poppins',
            ),
            bodyMedium: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontFamily: 'Poppins',
            )),
      ),
      home: MyHomePage(),
    );
  }
}

Future<String> fetchData() async {
  // Simulación de una operación asíncrona que devuelve datos después de un retraso
  await Future.delayed(Duration(seconds: 2));
  return 'Datos cargados exitosamente';
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CounterBloc _counterBloc = CounterBloc();
  var isChangeWindow = true;

  @override
  Widget build(BuildContext context) {
    var center = Center(
      child: Text(
        "library 4",
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
    return Consumer(
      builder: (context, ref, child) => Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        // body: CounterWidget(_counterBloc),
        // body: ClockWidget(),
        body: Center(
            child: (isChangeWindow)
                ? LoginWidget(
                    extraParameter: "widget child",
                  )
                // ? OrderWidget(extraParameter: "widget child")
                : Text(
                    "simple text",
                    style: TextStyle(color: Colors.red),
                  )),

        // body : ExampleWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // ################## change life cycle ##################
            // setState(() {
            //   isChangeWindow = !isChangeWindow;
            // });

            // ################## methods from DI ##################
            final service = GetIt.I<ServiceB>();
            // service.hello();
            // service.sayBye();

            final genericService = GetIt.I<Service>(instanceName: "serviceD");
            // genericService.work();

            final serviceG = GetIt.I<Service>();
            serviceG.makeNoise();

            // ################## methods from StateNotifierProvider ##################
            // ref.read(productController.notifier).incrementCounter();

            ref.read(loginController.notifier).incrementCounter();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
