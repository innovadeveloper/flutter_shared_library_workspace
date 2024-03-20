// Definición de una subclase que extiende de MyAbstractWidget
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:simple_app/main.dart';
import 'package:simple_app/src/ui/base/abstract_page.dart';
import 'package:simple_app/src/ui/login/login_dto.dart';
import 'package:simple_app/src/ui/login/login_state.dart';
import 'package:simple_app/src/ui/login/login_view_model.dart';

/**
 * creación de un widget que extiende de MyAbstractWidget (StatefulWidget)
 */
class LoginWidget extends AbstractPage<LoginViewModel, LoginState> {
  LoginWidget({Key? key, required String extraParameter})
      : super(loginController, key: key, extraParameter: extraParameter) {
    super.currentState = LoginState.initial();
  }

  @override
  void onResume() {
    super.onResume();
    print("onFocusLost - onResume");
  }

  @override
  void onPause() {
    super.onPause();
    print("onFocusGained - onPause");
  }

  @override
  Widget buildWidget(BuildContext context, String extraParameter, WidgetRef ref,
      LoginState renderState) {
    return renderState.when(
      initial: () => Text("initial"),
      loading: () => Text("loading"),
      error: () => Text("error"),
      data: (LoginDTO content) => InkWell(
          onTap: () => {viewModel.incrementCounter()},
          child: Text("content ... ${content.username}")),
    );
  }
}
