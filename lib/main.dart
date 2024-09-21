import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:templateapp/app/config/di/dependency_inyector.dart';
import 'package:templateapp/app/constants/constants.dart';
import 'package:templateapp/app/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:templateapp/app/theme/theme.dart';
import 'package:templateapp/presentation/state_handlers/blocs/top_blocs.dart';
import 'package:templateapp/presentation/state_handlers/cubit/global_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initDi();
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
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en'),
              Locale('es'),
            ],
          );
        },
      ),
    );
  }
}
