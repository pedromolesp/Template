import 'package:templateapp/app/types/result.dart';

abstract class TemplateRemoteDataSourceContract {
  Future<Result<Exception, Map<String, dynamic>>> getAllObjects();
}
