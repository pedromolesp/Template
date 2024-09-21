import 'package:templateapp/app/types/result.dart';
import 'package:templateapp/data/data_source_contracts/template_local_contract.dart';
import 'package:templateapp/domain/repository_contracts/template_local_repository_contract.dart';

class TemplateLocalRepositoryImpl implements TemplateLocalRepositoryContract {
  final TemplateLocalDataSourceContract _templateLocalDataSourceContract;

  TemplateLocalRepositoryImpl(this._templateLocalDataSourceContract);

  @override
  Future<Result<Exception, String?>> getLocale() async {
    try {
      final result =
          await _templateLocalDataSourceContract.getString(key: 'locale');
      return result.match(onError: (error) {
        return Failure(error);
      }, onValue: (data) {
        return Success(data);
      });
    } catch (e) {
      return Failure(e as Exception);
    }
  }

  @override
  Future<Result<Exception, String?>> getTheme() async {
    try {
      final result =
          await _templateLocalDataSourceContract.getString(key: 'theme');
      return result.match(onError: (error) {
        return Failure(error);
      }, onValue: (data) {
        return Success(data);
      });
    } catch (e) {
      return Failure(e as Exception);
    }
  }

  @override
  Future<Result<Exception, bool>> setLocale({required String language}) async {
    try {
      final result = await _templateLocalDataSourceContract.setString(
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

  @override
  Future<Result<Exception, bool>> setTheme({required String theme}) async {
    try {
      final result = await _templateLocalDataSourceContract.setString(
          key: 'theme', language: theme);
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
