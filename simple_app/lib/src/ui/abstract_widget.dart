import 'package:flutter/material.dart';

abstract class MyAbstractWidget extends StatefulWidget {
  final String extraParameter;
  late State state;

  MyAbstractWidget({Key? key, required this.extraParameter}) : super(key: key);

  @override
  _MyAbstractWidgetState createState() => _MyAbstractWidgetState();

  // Método abstracto para ser implementado por las subclases
  Widget buildWidget(BuildContext context, String extraParameter);

  void setState(VoidCallback fn) {
    setState(() => fn());
  }
}

class _MyAbstractWidgetState extends State<MyAbstractWidget> {
  @override
  void initState() {
    super.initState();
    widget.state = this;
  }

  @override
  Widget build(BuildContext context) {
    // Llama al método buildWidget de la subclase con el parámetro extra
    return widget.buildWidget(context, widget.extraParameter);
  }
}
