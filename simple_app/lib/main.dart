import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:object_mapper_library/object_mapper_library.dart';
import 'dart:convert';

import 'package:rxdart/subjects.dart';
import 'package:simple_app/src/counter_widget.dart';
import 'package:simple_app/src/models/product.dart';
import 'package:simple_app/src/states/counter_bloc.dart';
import 'package:simple_app/src/states/counter_notifier.dart';
import 'package:simple_app/src/states/counter_state.dart';
import 'package:simple_app/src/states/counter_state_notifier.dart';
import 'package:intl/intl.dart';


// final helloWorldProvider = Provider<String>((ref) {
//   return 'Hello world 2';
// });

final helloWorldProvider = Provider<String>((_) => 'Hello world');

// Note: StateNotifierProvider has *two* type annotations
final clockProvider = StateNotifierProvider<Clock, DateTime>((ref) {
  return Clock();
});

class HelloWorldWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 3. use ref.watch() to get the value of the provider
    final helloWorld = ref.watch(helloWorldProvider);
    return Text(helloWorld);
  }
}

class ClockWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch the StateNotifierProvider to return a DateTime (the state)
    final currentTime = ref.watch(clockProvider);
    // format the time as `hh:mm:ss`
    final timeFormatted = DateFormat.Hms().format(currentTime);
    // final timeFormatted = DateFormat.Hms().format(currentTime);
    return Text(timeFormatted);
  }
}


void main() {
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

class MyHomePage extends StatelessWidget {
  final CounterBloc _counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    var center = Center(
      child: Text(
        "library 4",
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      // body: CounterWidget(_counterBloc),
      body: ClockWidget(),
      // body : ExampleWidget(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     _counterBloc.incrementCounter();
      //   },
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
