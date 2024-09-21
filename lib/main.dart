import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:templateapp/app/config/di/dependency_inyector.dart';
import 'package:templateapp/app/constants/constants.dart';
import 'package:templateapp/app/l10n/localization_setup.dart';
import 'package:templateapp/app/routes/routes.dart';
import 'package:templateapp/app/theme/theme.dart';
import 'package:templateapp/presentation/state_handlers/blocs/top_blocs.dart';
import 'package:templateapp/presentation/state_handlers/cubit/global_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TopBlocProviders(
      child: BlocBuilder<GlobalCubit, GlobalState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: goRouter,
            title: AppConstants.appName,
            theme: state.themeMode == GlobalThemeMode.light
                ? ThemeData.light()
                : ThemeData.dark(),
            darkTheme: AppTheme.darkTheme,
            locale: state.locale,
            localizationsDelegates: LocalizationSetup.localizationsDelegates,
            supportedLocales: LocalizationSetup.supportedLocales,
          );
        },
      ),
    );
  }
}
