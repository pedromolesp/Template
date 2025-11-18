import 'package:dio/dio.dart';
import 'package:templateapp/core/constants/app_urls.dart';
import 'package:templateapp/core/constants/constants.dart';
import 'package:templateapp/core/types/result.dart';
import 'package:templateapp/core/utils/int_utils.dart';
import 'package:templateapp/features/home/data/data_source_contracts/home_remote_data_source_contract.dart';

class HomeRemoteDataSource implements HomeRemoteDataSourceContract {
  HomeRemoteDataSource({required Dio dio}) : _dio = dio;

  final Dio _dio;
  final apiUrl = AppUrls.getApiUrl();

  @override
  Future<Result<Exception, Map<String, dynamic>>> getAllObjects() async {
    try {
      var headers = {
        'Content-Type': 'application/xml',
        'Authorization': 'Bearer ${AppConstants.token}',
      };
      final response = await _dio.request(
        '$apiUrl${AppUrls.getAllObject}',
        options: Options(
          headers: headers,
          method: 'GET',
        ),
      );

      final code = response.statusCode ?? 0;

      if (code.isFailCode() || response.data == null) {
        return Failure(response.data);
      }
      final data = response.data;

      return Success(data);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
