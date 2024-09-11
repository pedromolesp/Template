part of '../dependency_inyector.dart';

void _remoteModulesInit() {
  getIt.registerLazySingleton<TemplateRemoteDataSourceContract>(
    () {
      return TemplateRemoteDataSource(dio: getIt());
    },
  );
}
