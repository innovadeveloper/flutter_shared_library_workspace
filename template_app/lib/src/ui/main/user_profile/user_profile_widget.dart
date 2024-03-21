// Definición de una subclase que extiende de MyAbstractWidget
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:shared_library/shared_library.dart';
import 'package:template_app/main.dart';
import 'package:template_app/src/domain/dto/user_profile_dto.dart';
import 'package:template_app/src/ui/main/user_profile/user_profile_state.dart';
import 'package:template_app/src/ui/main/user_profile/user_profile_viewmodel.dart';
import 'package:get_it/get_it.dart';

/**
 * creación de un widget que extiende de MyAbstractWidget (StatefulWidget)
 */
class UserProfileWidget
    extends BaseWidget<UserProfileViewModel, UserProfileState> {
  UserProfileWidget({Key? key, required String extraParameter})
      : super(key: key, extraParameter: extraParameter) {
    super.currentState = UserProfileState.initial();
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
      UserProfileState renderState) {
    return renderState.when(
      initial: () => Text("initial"),
      loading: () => CircularProgressIndicator(),
      error: () => Text("error"),
      data: (UserProfileDTO content) => InkWell(
          onTap: () => {viewModel.fetchData()},
          child: Text("content ... ${content.name}")),
    );
  }
}
