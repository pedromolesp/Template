part of '../dependency_inyector.dart';

void _remoteModulesInit() {
  // Data sources

  getIt.registerLazySingleton<TemplateRemoteDataSourceContract>(
    () {
      return TemplateRemoteDataSource(dio: getIt());
    },
  );
}
