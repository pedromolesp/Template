// ignore_for_file: unused_import
import 'package:templateapp/core/config/di/dependency_inyector.dart';
import 'package:templateapp/core/config/env_base.dart';
import 'package:templateapp/core/config/l10n/localization_setup.dart';
import 'package:templateapp/core/constants/app_assets.dart';
import 'package:templateapp/core/constants/app_urls.dart';
import 'package:templateapp/core/constants/constants.dart';
import 'package:templateapp/core/constants/environment_config.dart';
import 'package:templateapp/core/network/dio_http_client.dart';
import 'package:templateapp/core/network/interceptors/curl_dio_interceptor.dart';
import 'package:templateapp/core/routes/routes.dart';
import 'package:templateapp/core/state_handlers/blocs/top_blocs.dart';
import 'package:templateapp/core/state_handlers/cubit/global_cubit.dart';
import 'package:templateapp/core/storage/shared_preferences/shared_preferences_service.dart';
import 'package:templateapp/core/theme/theme.dart';
import 'package:templateapp/core/types/result.dart';
import 'package:templateapp/core/utils/date_utils.dart';
import 'package:templateapp/core/utils/int_utils.dart';
import 'package:templateapp/features/home/data/data_source/home_remote_data_source.dart';
import 'package:templateapp/features/home/domain/repository_contracts/home_remote_repository_contract.dart';
import 'package:templateapp/features/home/domain/repository_implementations/home_remote_repository.dart';
import 'package:templateapp/features/home/presentation/bloc/home_bloc.dart';
import 'package:templateapp/features/home/presentation/home_screen.dart';
import 'package:templateapp/main.dart';

void main() {}
