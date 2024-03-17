// import 'package:object_mapper_library/object_mapper_library.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';
import 'package:simple_app/src/models/product.dart';
import 'package:simple_app/src/states/counter_bloc.dart';
import 'package:simple_app/src/states/counter_state.dart';
import 'dart:async';

// ---------

class CounterWidget extends StatelessWidget {
  final CounterBloc _counterBloc;

  CounterWidget(this._counterBloc);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CounterState>(
      stream: _counterBloc.counterStream,
      builder: (context, snapshot) {
        final state = snapshot.data;
        // Verificar el estado actual y construir la interfaz de usuario en consecuencia
        if (state is Initial) {
          return Text(
            'Initial State',
            style: TextStyle(fontSize: 24),
          );
        } else if (state is Loading) {
          return CircularProgressIndicator();
        } else if (state is Error) {
          return Text(
            'Error State',
            style: TextStyle(fontSize: 24),
          );
        } else if (state is Data) {
          return Text(
            'Product name: ${state.product.name}',
            style: TextStyle(fontSize: 24),
          );
        } else {
          return Text(
            'Unknown State',
            style: TextStyle(fontSize: 24),
          );
        }
      },
    );
  }
}


