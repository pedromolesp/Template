part of '../dependency_inyector.dart';

void _uiModulesInit() {
  getIt.registerFactory(
    () => HomeBloc(templateRemoteRepositoryContract: getIt()),
  );

  getIt.registerFactory(
    () => GlobalCubit(templateLocalRepositoryContract: getIt()),
  );
}
