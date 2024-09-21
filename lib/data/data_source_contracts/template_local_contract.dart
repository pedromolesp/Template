import 'package:templateapp/app/types/result.dart';

abstract interface class TemplateLocalDataSourceContract {
  Future<Result<Exception, void>> setBool({
    required String key,
    required bool value,
  });
  Future<Result<Exception, bool?>> getBool({required String key});
  Future<Result<Exception, String?>> getString({required String key});
  Future<Result<Exception, void>> setString({
    required String key,
    required String language,
  });
}
