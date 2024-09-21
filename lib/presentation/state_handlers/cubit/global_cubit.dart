import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:templateapp/app/l10n/localization_setup.dart';
import 'package:templateapp/domain/repository_contracts/template_local_repository_contract.dart';

part 'global_state.dart';
part 'global_cubit.freezed.dart';

enum GlobalThemeMode { light, dark }

class GlobalCubit extends Cubit<GlobalState> {
  final TemplateLocalRepositoryContract _repository;
  GlobalCubit(
      {required TemplateLocalRepositoryContract
          templateLocalRepositoryContract})
      : _repository = templateLocalRepositoryContract,
        super(const GlobalState(
            themeMode: GlobalThemeMode.light, locale: Locale('en')));

  void initGlobalCubit() async {
    final themeResponse = await _repository.getTheme();
    themeResponse.match(
      onError: (error) {},
      onValue: (value) {
        emit(state.copyWith(
            themeMode: value == 'light'
                ? GlobalThemeMode.light
                : GlobalThemeMode.dark));
      },
    );
    final localeResponse = await _repository.getTheme();
    localeResponse.match(
      onError: (error) {},
      onValue: (value) {
        emit(state.copyWith(
            locale: Locale(value ?? LocalizationSetup.defaultLanguage)));
      },
    );

    emit(state);
  }

  void toggleTheme() async {
    final theme = state.themeMode == GlobalThemeMode.light ? 'dark' : 'light';
    final globalThemeMode = state.themeMode == GlobalThemeMode.light
        ? GlobalThemeMode.dark
        : GlobalThemeMode.light;
    await _repository.setTheme(theme: theme);
    emit(state.copyWith(themeMode: globalThemeMode));
  }

  void changeLocale(Locale locale) async {
    final localeString = locale.languageCode;
    await _repository.setLocale(language: localeString);
    emit(state.copyWith(locale: locale));
  }
}
