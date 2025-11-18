import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:templateapp/core/constants/environment_config.dart';
import 'package:templateapp/core/network/dio_http_client.dart';
import 'package:templateapp/core/network/interceptors/curl_dio_interceptor.dart';
import 'package:templateapp/core/state_handlers/cubit/global_cubit.dart';
import 'package:templateapp/core/storage/shared_preferences/shared_preferences_app_service.dart';
import 'package:templateapp/core/storage/shared_preferences/shared_preferences_service.dart';
import 'package:templateapp/features/home/data/data_source/home_remote_data_source.dart';
import 'package:templateapp/features/home/data/data_source_contracts/home_remote_data_source_contract.dart';
import 'package:templateapp/features/home/domain/repository_contracts/home_remote_repository_contract.dart';
import 'package:templateapp/features/home/domain/repository_implementations/home_remote_repository.dart';
import 'package:templateapp/features/home/presentation/bloc/home_bloc.dart';

part 'modules/api_modules.dart';
part 'modules/local_modules.dart';
part 'modules/remote_modules.dart';
part 'modules/repository_modules.dart';
part 'modules/ui_modules.dart';

final getIt = GetIt.instance;

Future<void> initDi() async {
  await _localModulesInit();
  _remoteModulesInit();
  _apiModulesInit();
  _repositoryModulesInit();
  _uiModulesInit();
}
