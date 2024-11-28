// ignore_for_file: unused_import
import 'package:templateapp/app/config/di/dependency_inyector.dart';
import 'package:templateapp/app/config/env_base.dart';
import 'package:templateapp/app/constants/app_assets.dart';
import 'package:templateapp/app/constants/app_urls.dart';
import 'package:templateapp/app/constants/constants.dart';
import 'package:templateapp/app/constants/environment_config.dart';
import 'package:templateapp/app/l10n/context_extensions.dart';
import 'package:templateapp/app/l10n/localization_setup.dart';
import 'package:templateapp/app/routes/routes.dart';
import 'package:templateapp/app/theme/theme.dart';
import 'package:templateapp/app/types/result.dart';
import 'package:templateapp/app/utils/date_utils.dart';
import 'package:templateapp/app/utils/int_utils.dart';
import 'package:templateapp/data/data_source/template_local_data_source.dart';
import 'package:templateapp/data/data_source/template_remote_data_source.dart';
import 'package:templateapp/data/data_source_contracts/template_local_contract.dart';
import 'package:templateapp/data/data_source_contracts/template_remote_data_source_contract.dart';
import 'package:templateapp/data/network/dio_http_client.dart';
import 'package:templateapp/data/network/interceptors/curl_dio_interceptor.dart';
import 'package:templateapp/domain/model/object_entity.dart';
import 'package:templateapp/domain/repository_contracts/template_local_repository_contract.dart';
import 'package:templateapp/domain/repository_contracts/template_remote_repository_contract.dart';
import 'package:templateapp/domain/repository_implementations/template_local_repository.dart';
import 'package:templateapp/domain/repository_implementations/template_remote_repository.dart';
import 'package:templateapp/main.dart';
import 'package:templateapp/presentation/home/bloc/home_bloc.dart';
import 'package:templateapp/presentation/home/home_screen.dart';
import 'package:templateapp/presentation/state_handlers/blocs/top_blocs.dart';
import 'package:templateapp/presentation/state_handlers/cubit/global_cubit.dart';

void main() {}
