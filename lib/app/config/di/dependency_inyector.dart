import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:templateapp/app/constants/environment_config.dart';
import 'package:templateapp/data/data_source/local_preferences/local_preferences.dart';
import 'package:templateapp/data/data_source/local_preferences/shared_preferences_local_preferences.dart';
import 'package:templateapp/data/data_source/template_remote_data_source.dart';
import 'package:templateapp/data/data_source_contracts/template_remote_data_source_contract.dart';
import 'package:templateapp/data/network/dio_http_client.dart';
import 'package:templateapp/data/network/interceptors/curl_dio_interceptor.dart';
import 'package:templateapp/domain/repository_contracts/template_repository_contract.dart';
import 'package:templateapp/domain/repository_implementations/template_repository.dart';
import 'package:templateapp/presentation/home/bloc/home_bloc.dart';
import 'package:templateapp/presentation/state_handlers/cubit/global_cubit.dart';

part 'modules/api_modules.dart';
part 'modules/local_modules.dart';
part 'modules/remote_modules.dart';
part 'modules/repository_modules.dart';
part 'modules/ui_modules.dart';

final getIt = GetIt.instance;

void initDi() {
  _localModulesInit();
  _remoteModulesInit();
  _apiModulesInit();
  _repositoryModulesInit();
  _uiModulesInit();
}
