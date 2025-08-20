import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:templateapp/app/extension/build_context_extension.dart';
import 'package:templateapp/presentation/home/bloc/home_bloc.dart';
import 'package:templateapp/presentation/state_handlers/cubit/global_cubit.dart';

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
                    '${context.localizations.helloWorld} ${state.objects?.results?.length}'),
                ElevatedButton(
                  onPressed: () {
                    final bloc = context.read<GlobalCubit>();
                    if (bloc.state.locale.languageCode == 'es') {
                      context
                          .read<GlobalCubit>()
                          .changeLocale(const Locale('en'));
                    } else {
                      context
                          .read<GlobalCubit>()
                          .changeLocale(const Locale('es'));
                    }

                    context.read<GlobalCubit>().toggleTheme();
                  },
                  child: const Text('press'),
                ),
              ],
            )),
          );
        },
      ),
    );
  }
}
