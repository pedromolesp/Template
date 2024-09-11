import 'package:templateapp/app/types/result.dart';

abstract class TemplateRemoteDataSourceContract {
  Future<Result<Exception, List<Map<String, dynamic>>>> getAllObjects();
}
