import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:templateapp/app/l10n/context_extensions.dart';
import 'package:templateapp/presentation/blocs/language/language_bloc.dart';
import 'package:templateapp/presentation/home/bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations.appName),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return SafeArea(
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "${context.localizations.helloWorld} ${state.objects?.results?.length}"),
                ElevatedButton(
                  onPressed: () {
                    final languajeBloc = context.read<LanguageBloc>();
                    if (languajeBloc.state.locale.languageCode == "es") {
                      context.read<LanguageBloc>().add(
                          const LanguageEvent.changedLanguage(Locale("en")));
                    } else {
                      context.read<LanguageBloc>().add(
                          const LanguageEvent.changedLanguage(Locale("es")));
                    }
                  },
                  child: Text("press"),
                ),
              ],
            )),
          );
        },
      ),
    );
  }
}
