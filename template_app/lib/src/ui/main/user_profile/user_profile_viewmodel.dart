import 'package:shared_library/shared_library.dart';
import 'package:template_app/src/domain/dto/user_profile_dto.dart';
import 'package:template_app/src/ui/main/user_profile/user_profile_state.dart';

/**
 * Requiere los siguientes objetos : 
 * ViewModel<T> : ViewModel<DomainState>
 */
class UserProfileViewModel extends ViewModel<UserProfileState> {
  UserProfileViewModel() : super(UserProfileState.initial());

  /**
   * simulate fetch data
   */
  Future<void> fetchData() async {
    try {
      print("fetchin profile data from some server...");
      sendValue(UserProfileState.loading());
      await Future.delayed(Duration(seconds: 1));
      sendValue(UserProfileState.data(
          const UserProfileDTO(id: "xyz", name: "Kane", age: 31)));
    } catch (e) {
      state = const UserProfileState.error();
    }
  }
}
