import 'package:templateapp/app/types/result.dart';
import 'package:templateapp/data/data_source_contracts/template_remote_data_source_contract.dart';
import 'package:templateapp/domain/model/object_entity.dart';
import 'package:templateapp/domain/repository_contracts/template_repository_contract.dart';

class TemplateRepositoryImpl implements TemplateRepositoryContract {
  final TemplateRemoteDataSourceContract _templateRemoteDataSourceContract;

  TemplateRepositoryImpl(this._templateRemoteDataSourceContract);

  @override
  Future<Result<Exception, ObjectEntity>> getAllObjects() async {
    try {
      final response = await _templateRemoteDataSourceContract.getAllObjects();
      return response.match(onError: (error) {
        return Failure(error);
      }, onValue: (data) {
        return Success(ObjectEntity.fromJson(data));
      });
    } catch (e) {
      return Failure(Exception("Failed to fetch objects: $e"));
    }
  }
}
