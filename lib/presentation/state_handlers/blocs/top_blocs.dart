import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:templateapp/presentation/home/bloc/home_bloc.dart';
import 'package:templateapp/presentation/state_handlers/cubit/global_cubit.dart';

class TopBlocProviders extends StatelessWidget {
  final Widget child;
  final _getIt = GetIt.instance;

  TopBlocProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                _getIt<HomeBloc>()..add(const HomeEvent.getAllObjects())),
        BlocProvider(create: (context) => _getIt<GlobalCubit>()),
      ],
      child: child,
    );
  }
}
