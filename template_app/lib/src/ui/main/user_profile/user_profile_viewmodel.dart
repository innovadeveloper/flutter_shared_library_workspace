import 'package:shared_library/shared_library.dart';
import 'package:template_app/main.dart';
import 'package:template_app/src/data/network/fake_store_api.dart';
import 'package:template_app/src/data/network/task_api.dart';
import 'package:template_app/src/di/di.dart';
import 'package:template_app/src/domain/dto/user_profile_dto.dart';
import 'package:template_app/src/ui/main/user_profile/user_profile_state.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

/**
 * Requiere los siguientes objetos : 
 * ViewModel<T> : ViewModel<DomainState>
 */
class UserProfileViewModel extends ViewModel<UserProfileState> {
  final TaskApi taskApi;
  final StoreApi storeApi;

  UserProfileViewModel({required this.taskApi, required this.storeApi})
      : super(UserProfileState.initial());

  Future<void> fetchData() async {
    try {
      sendValue(UserProfileState.loading());
      final product = await this.storeApi.getProducts();
      logger.i(product);
      await Future.delayed(Duration(seconds: 1));
      sendValue(UserProfileState.data(
          const UserProfileDTO(id: "xyz", name: "Kane", age: 31)));
    } catch (e) {
      print("error => $e");
      state = const UserProfileState.error();
    }
  }
}
