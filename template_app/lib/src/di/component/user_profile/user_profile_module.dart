import 'package:injectable/injectable.dart';
import 'package:template_app/src/data/network/fake_store_api.dart';
import 'package:template_app/src/data/network/task_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_app/src/di/qualifiers/annotations_di.dart';
import 'package:template_app/src/ui/main/user_profile/user_profile_state.dart';
import 'package:template_app/src/ui/main/user_profile/user_profile_viewmodel.dart';

@module
abstract class UserProfileModule {
  /**
   * provide state notifier with view model and state
   */
  // OFICIAL => "title": "iPhone 9",
  // FAKE => "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
  @lazySingleton
  StateNotifierProvider<UserProfileViewModel, UserProfileState>
      provideStateNotifier(TaskApi taskApi, @Named(OFICIAL_STORE_API_ANNOTATION) StoreApi storeApi) {
    return StateNotifierProvider<UserProfileViewModel, UserProfileState>((ref) {
      return UserProfileViewModel(taskApi: taskApi, storeApi: storeApi);
    });
  }

}
