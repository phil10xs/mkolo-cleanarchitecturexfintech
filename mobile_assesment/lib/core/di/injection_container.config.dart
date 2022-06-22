// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;

import '../../features/dashboard/data/datasource/remote/remote.dart' as _i6;
import '../../features/dashboard/data/repository/repo.dart' as _i8;
import '../../features/dashboard/domain/repository/repo.dart' as _i7;
import '../../features/dashboard/domain/usecase/get_data.dart' as _i9;
import '../../features/dashboard/presentation/notifier/data.dart' as _i10;
import '../network/network_info.dart' as _i5;
import 'register_module.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.InternetConnectionChecker>(
      () => registerModule.internetConnectionChecker);
  gh.lazySingleton<_i5.NetworkInfo>(() => _i5.NetworkInfoImpl());
  gh.lazySingleton<_i6.RemoteDatasource>(
      () => _i6.RemoteDatasourceImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i7.Repository>(() => _i8.RepositoryImpl(
      networkInfo: get<_i5.NetworkInfo>(),
      remoteDatasource: get<_i6.RemoteDatasource>()));
  gh.lazySingleton<_i9.GetDataUsecase>(
      () => _i9.GetDataUsecase(repository: get<_i7.Repository>()));
  gh.factory<_i10.MyNotifier>(
      () => _i10.MyNotifier(getDataUsecase: get<_i9.GetDataUsecase>()));
  return get;
}

class _$RegisterModule extends _i11.RegisterModule {}
