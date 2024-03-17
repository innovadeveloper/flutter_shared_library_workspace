import 'package:flutter/material.dart';
// import 'package:object_mapper_library/object_mapper_library.dart';
import 'dart:convert';

import 'package:rxdart/subjects.dart';
import 'package:simple_app/src/counter_widget.dart';
import 'package:simple_app/src/models/product.dart';
import 'package:simple_app/src/states/counter_bloc.dart';
import 'package:simple_app/src/states/counter_state.dart';

void main() {
  runApp(const MyApp());
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
    // Define un JSON como String
    String jsonString = '{"firstName": "John", "lastName": "Doe", "age": 30}';

    // Parsea el JSON a un mapa
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    // Usa la función `Product.fromJson` para convertir el mapa en un objeto Product
    // final person = Person.fromJson(jsonMap);
    // Person person = Person.fromJson(jsonMap);
    // final person = fromJson(jsonMap, factory: Person.fromJson);

    // Imprime el objeto Product
    // print(person);
    // var example = ExampleWidget();
    var center = Center(
      child: Text(
        "library 4",
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: CounterWidget(_counterBloc),
      // body : ExampleWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counterBloc.incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
