part of '../dependency_inyector.dart';

void _remoteModulesInit() {
  getIt.registerLazySingleton<TemplateRemoteDataSourceContract>(
      () => TemplateRemoteDataSource(dio: getIt()));
}
