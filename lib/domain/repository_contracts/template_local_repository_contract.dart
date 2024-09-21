import 'package:templateapp/app/types/result.dart';

abstract class TemplateLocalRepositoryContract {
  Future<Result<Exception, String?>> getLocale();
  Future<Result<Exception, bool>> setLocale({required String language});
  Future<Result<Exception, String?>> getTheme();
  Future<Result<Exception, bool>> setTheme({required String theme});
}
