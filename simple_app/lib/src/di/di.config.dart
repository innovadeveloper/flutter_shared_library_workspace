// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'services/services.dart' as _i3;

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
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.Service>(
      () => _i3.ServiceDImpl(),
      instanceName: 'serviceD',
    );
    gh.singleton<_i3.Service>(
      () => _i3.ServiceEImpl(),
      instanceName: 'serviceE',
    );
    gh.factory<_i3.Service>(() => registerModule.serviceG);
    gh.factory<_i3.ServiceA>(() => _i3.ServiceA());
    gh.factory<_i3.ServiceB>(() => _i3.ServiceB(gh<_i3.ServiceA>()));
    gh.factory<_i3.ServiceC>(() => _i3.ServiceC());
    gh.singleton<_i3.ServiceF>(() => registerModule.serviceF);
    return this;
  }
}

class _$RegisterModule extends _i3.RegisterModule {
  @override
  _i3.ServiceGImpl get serviceG => _i3.ServiceGImpl();

  @override
  _i3.ServiceF get serviceF => _i3.ServiceF();
}
