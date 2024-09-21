import 'package:templateapp/app/types/result.dart';
import 'package:templateapp/domain/model/object_entity.dart';

abstract class TemplateRemoteRepositoryContract {
  Future<Result<Exception, ObjectEntity>> getAllObjects();
}
