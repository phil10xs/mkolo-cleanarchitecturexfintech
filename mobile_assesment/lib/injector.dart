// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';
// import 'package:mobile_assesment/core/network/network_info.dart';
// import 'package:mobile_assesment/features/dashboard/data/datasource/remote/remote.dart';
// import 'package:mobile_assesment/features/dashboard/data/repository/repo.dart';
// import 'package:mobile_assesment/features/dashboard/domain/repository/repo.dart';
// import 'package:mobile_assesment/features/dashboard/domain/usecase/get_data.dart';
// import 'package:mobile_assesment/features/dashboard/presentation/notifier/data.dart';

// var getIt = GetIt.instance;

// Future<void> setUp() async {
//   getIt.registerFactory(() => MyNotifier(getDataUsecase: getIt()));

//   var dio = Dio();
//   getIt.registerLazySingleton<Dio>(() => dio);

//   getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

//   getIt.registerLazySingleton(
//     () => GetDataUsecase(repository: getIt()),
//   );

//   getIt.registerLazySingleton<Repository>(
//     () => RepositoryImpl(
//       networkInfo: getIt(),
//       remoteDatasource: getIt(),
//     ),
//   );

//   getIt.registerLazySingleton<RemoteDatasource>(
//       () => RemoteDatasourceImpl(dio: getIt()));
// }
