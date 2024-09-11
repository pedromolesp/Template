part of '../dependency_inyector.dart';

void _uiModulesInit() {
  getIt.registerFactory(
    () => HomeBloc(),
  );
  getIt.registerFactory(
    () => LanguageBloc(),
  );
}
