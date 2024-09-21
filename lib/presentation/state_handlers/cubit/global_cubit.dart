import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_state.dart';
part 'global_cubit.freezed.dart';

enum GlobalThemeMode { light, dark }

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit()
      : super(const GlobalState(
            themeMode: GlobalThemeMode.light, locale: Locale('en')));

  void toggleTheme() {
    emit(state.copyWith(
        themeMode: state.themeMode == GlobalThemeMode.light
            ? GlobalThemeMode.dark
            : GlobalThemeMode.light));
  }

  void changeLocale(Locale locale) {
    emit(state.copyWith(locale: locale));
  }
}
