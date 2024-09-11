part of '../dependency_inyector.dart';

_localModulesInit() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  getIt.registerLazySingleton<LocalPreferences>(
    () => SharedPreferencesLocalPreferences(instance: sharedPreferences),
  );
}
