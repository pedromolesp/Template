import 'package:templateapp/core/storage/shared_preferences/shared_preferences_service.dart';
import 'package:templateapp/core/types/result.dart';

class SharedPreferencesAppService {
  final SharedPreferencesService _preferencesServices;

  SharedPreferencesAppService(this._preferencesServices);

  Future<Result<Exception, String?>> getLocale() async {
    try {
      final result = await _preferencesServices.getString(key: 'locale');
      return result.match(onError: (error) {
        return Failure(error);
      }, onValue: (data) {
        return Success(data);
      });
    } catch (e) {
      return Failure(e as Exception);
    }
  }

  Future<Result<Exception, String?>> getTheme() async {
    try {
      final result = await _preferencesServices.getString(key: 'theme');
      return result.match(onError: (error) {
        return Failure(error);
      }, onValue: (data) {
        return Success(data);
      });
    } catch (e) {
      return Failure(e as Exception);
    }
  }

  Future<Result<Exception, bool>> setLocale({required String language}) async {
    try {
      final result = await _preferencesServices.setString(
          key: 'locale', language: language);
      return result.match(onError: (error) {
        return Failure(error);
      }, onValue: (data) {
        return Success(true);
      });
    } catch (e) {
      return Failure(e as Exception);
    }
  }

  Future<Result<Exception, bool>> setTheme({required String theme}) async {
    try {
      final result =
          await _preferencesServices.setString(key: 'theme', language: theme);
      return result.match(onError: (error) {
        return Failure(error);
      }, onValue: (data) {
        return Success(true);
      });
    } catch (e) {
      return Failure(e as Exception);
    }
  }
}
