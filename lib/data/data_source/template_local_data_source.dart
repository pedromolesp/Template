import 'package:shared_preferences/shared_preferences.dart';
import 'package:templateapp/app/types/result.dart';
import 'package:templateapp/data/data_source_contracts/template_local_contract.dart';

class TemplateLocalDataSource implements TemplateLocalDataSourceContract {
  TemplateLocalDataSource({
    required SharedPreferences instance,
  }) : _instance = instance;

  final SharedPreferences _instance;

  @override
  Future<Result<Exception, Unit>> setBool({
    required String key,
    required bool value,
  }) async {
    try {
      await _instance.setBool(key, value);
      return Success(unit);
    } catch (e) {
      return Failure(e as Exception);
    }
  }

  @override
  Future<Result<Exception, bool?>> getBool({required String key}) async {
    try {
      final result = _instance.getBool(key);
      return Success(result);
    } catch (e) {
      return Failure(e as Exception);
    }
  }

  @override
  Future<Result<Exception, String?>> getString({required String key}) async {
    try {
      final result = _instance.getString(key);
      return Success(result);
    } catch (e) {
      return Failure(e as Exception);
    }
  }

  @override
  Future<Result<Exception, Unit>> setString({
    required String key,
    required String language,
  }) async {
    try {
      await _instance.setString(key, language);
      return Success(unit);
    } catch (e) {
      return Failure(e as Exception);
    }
  }
}
