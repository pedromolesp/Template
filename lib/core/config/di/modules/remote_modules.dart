part of '../dependency_inyector.dart';

void _remoteModulesInit() {
  getIt.registerLazySingleton<HomeRemoteDataSourceContract>(
      () => HomeRemoteDataSource(dio: getIt()));
}
