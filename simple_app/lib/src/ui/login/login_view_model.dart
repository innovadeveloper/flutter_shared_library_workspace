import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_app/src/ui/base/view_model.dart';
import 'package:simple_app/src/ui/login/login_dto.dart';
import 'package:simple_app/src/ui/login/login_state.dart';

/**
 abstract class ViewModel<T extends StateNotifier<K>, K> {
  LCEState<K>? renderState;
}
 */
/**
 * Requiere los siguientes objetos : 
 * T : StateNotifier<DomainClass>
 * K : LCEState<DomainClass>
 * J : DomainClass
 */
class LoginViewModel extends ViewModel<LoginState> {
  LoginViewModel() : super(LoginState.initial());

  Future<void> incrementCounter() async {
    try {
      print("incrementnaod...");
      sendValue(LoginState.initial());
      await Future.delayed(Duration(seconds: 1));
      state = LoginState.data(LoginDTO("kenny", "123"));
    } catch (e) {
      state = const LoginState.error();
    }
  }
}
