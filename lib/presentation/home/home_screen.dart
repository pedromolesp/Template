import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:templateapp/app/l10n/context_extensions.dart';
import 'package:templateapp/presentation/home/bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Center(
              child: Text(
                  "${context.localizations.helloWorld} ${state.objects?.results?.length}"));
        },
      ),
    );
  }
}
