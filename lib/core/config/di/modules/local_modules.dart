part of '../dependency_inyector.dart';

Future<void> _localModulesInit() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  getIt.registerSingleton<SharedPreferencesService>(
    SharedPreferencesService(instance: sharedPreferences),
  );

  getIt.registerSingleton<SharedPreferencesAppService>(
    SharedPreferencesAppService(getIt<SharedPreferencesService>()),
  );
}
