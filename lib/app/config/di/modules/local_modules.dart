part of '../dependency_inyector.dart';

Future<void> _localModulesInit() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  getIt.registerLazySingleton<TemplateLocalDataSourceContract>(
    () => TemplateLocalDataSource(instance: sharedPreferences),
  );
}
