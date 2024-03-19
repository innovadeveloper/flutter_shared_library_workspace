import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:focus_detector_v2/focus_detector_v2.dart';

abstract class MyAbstractWidget extends StatefulWidget {
  final String extraParameter;
  late State state;

  MyAbstractWidget({Key? key, required this.extraParameter}) : super(key: key);

  @override
  _MyAbstractWidgetState createState() => _MyAbstractWidgetState();

  // Método abstracto para ser implementado por las subclases
  Widget buildWidget(BuildContext context, String extraParameter);

  void onResume() {}

  void onPause() {}

  void setState(VoidCallback fn) {
    state.setState(() => fn());
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
    return FocusDetector(
        onFocusLost: () => widget.onPause(),
        onFocusGained: () => widget.onResume(),
        child: widget.buildWidget(context, widget.extraParameter));
  }
}
