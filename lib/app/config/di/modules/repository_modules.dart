part of '../dependency_inyector.dart';

void _repositoryModulesInit() {
  getIt.registerLazySingleton<TemplateRemoteRepositoryContract>(
    () => TemplateRemoteRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<TemplateLocalRepositoryContract>(
    () => TemplateLocalRepositoryImpl(getIt()),
  );
}
