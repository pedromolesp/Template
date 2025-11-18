import 'package:templateapp/core/types/result.dart';

abstract class HomeRemoteDataSourceContract {
  Future<Result<Exception, Map<String, dynamic>>> getAllObjects();
}
