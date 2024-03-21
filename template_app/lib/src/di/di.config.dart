// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_riverpod/flutter_riverpod.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/network/fake_store_api.dart' as _i4;
import '../data/network/task_api.dart' as _i5;
import '../ui/main/user_profile/user_profile_state.dart' as _i8;
import '../ui/main/user_profile/user_profile_viewmodel.dart' as _i7;
import 'component/user_profile/user_profile_module.dart' as _i10;
import 'module/network_module.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkModule = _$NetworkModule();
    final userProfileModule = _$UserProfileModule();
    gh.singleton<_i3.Dio>(
      () => networkModule.provideClassicDio,
      instanceName: 'generic_dio',
    );
    gh.lazySingleton<_i4.StoreApi>(
      () => networkModule
          .provideFakeStoreApi(gh<_i3.Dio>(instanceName: 'generic_dio')),
      instanceName: 'fake_store_api',
    );
    gh.lazySingleton<_i4.StoreApi>(
      () => networkModule
          .provideOficialtoreApi(gh<_i3.Dio>(instanceName: 'generic_dio')),
      instanceName: 'oficial_store_api',
    );
    gh.lazySingleton<_i5.TaskApi>(() => networkModule
        .provideTaskRestClient(gh<_i3.Dio>(instanceName: 'generic_dio')));
    gh.lazySingleton<
        _i6.StateNotifierProvider<_i7.UserProfileViewModel,
            _i8.UserProfileState>>(() => userProfileModule.provideStateNotifier(
          gh<_i5.TaskApi>(),
          gh<_i4.StoreApi>(instanceName: 'oficial_store_api'),
        ));
    return this;
  }
}

class _$NetworkModule extends _i9.NetworkModule {}

class _$UserProfileModule extends _i10.UserProfileModule {}
