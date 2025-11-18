part of '../dependency_inyector.dart';

void _repositoryModulesInit() {
  getIt.registerLazySingleton<HomeRemoteRepositoryContract>(
    () => HomeRemoteRepositoryImpl(getIt()),
  );
}
