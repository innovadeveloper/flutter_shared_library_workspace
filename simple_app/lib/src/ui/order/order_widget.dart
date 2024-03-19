// Definición de una subclase que extiende de MyAbstractWidget
import 'package:flutter/material.dart';
import 'package:simple_app/src/ui/abstract_widget.dart';

/**
 * creación de un widget que extiende de MyAbstractWidget (StatefulWidget)
 */
class OrderWidget extends MyAbstractWidget {
  OrderWidget({Key? key, required String extraParameter})
      : super(key: key, extraParameter: extraParameter);

  @override
  Widget buildWidget(BuildContext context, String extraParameter) {
    print("the extra param is $extraParameter");
    return Container(
      child: Text(extraParameter),
    );
  }
  
}