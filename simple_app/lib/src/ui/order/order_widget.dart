// Definición de una subclase que extiende de MyAbstractWidget
import 'package:flutter/material.dart';
import 'package:simple_app/src/ui/abstract_widget.dart';
import 'package:focus_detector_v2/focus_detector_v2.dart';

/**
 * creación de un widget que extiende de MyAbstractWidget (StatefulWidget)
 */
class OrderWidget extends MyAbstractWidget {
  OrderWidget({Key? key, required String extraParameter})
      : super(key: key, extraParameter: extraParameter);

  @override
  void onResume(){
    super.onResume();
    print("onFocusLost - onResume");
  }

  @override
  void onPause(){
    super.onPause();
    print("onFocusGained - onPause");
  }

  @override
  Widget buildWidget(BuildContext context, String extraParameter) {
    print("the extra param is $extraParameter");
    return InkWell(
      onTap: () => {
        setState(() {
          print("set state locally");
        })
      },
      child: Container(
        child: Text(extraParameter),
      ),
    );
  }
}
