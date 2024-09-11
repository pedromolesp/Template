part of '../dependency_inyector.dart';

void _uiModulesInit() {
  getIt.registerFactory(
    () => HomeBloc(templateRepositoryContract: getIt()),
  );
  getIt.registerFactory(
    () => LanguageBloc(),
  );
}
