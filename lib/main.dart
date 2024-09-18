import 'package:flutter/material.dart';
import 'package:templateapp/app/config/di/dependency_inyector.dart';
import 'package:templateapp/app/constants/constants.dart';
import 'package:templateapp/app/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:templateapp/presentation/blocs/top_blocs.dart';

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
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: goRouter,
        title: AppConstants.appName,
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
      ),
    );
  }
}
