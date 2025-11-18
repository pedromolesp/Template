import 'package:templateapp/core/types/result.dart';
import 'package:templateapp/features/home/data/data_source_contracts/home_remote_data_source_contract.dart';
import 'package:templateapp/features/home/domain/model/object_entity.dart';
import 'package:templateapp/features/home/domain/repository_contracts/home_remote_repository_contract.dart';

class HomeRemoteRepositoryImpl implements HomeRemoteRepositoryContract {
  final HomeRemoteDataSourceContract _templateRemoteDataSourceContract;

  HomeRemoteRepositoryImpl(this._templateRemoteDataSourceContract);

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
      return Failure(Exception('Failed to fetch objects: $e'));
    }
  }
}
