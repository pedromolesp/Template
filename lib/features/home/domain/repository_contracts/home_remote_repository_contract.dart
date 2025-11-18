import 'package:templateapp/core/types/result.dart';
import 'package:templateapp/features/home/domain/model/object_entity.dart';

abstract class HomeRemoteRepositoryContract {
  Future<Result<Exception, ObjectEntity>> getAllObjects();
}
