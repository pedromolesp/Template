import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_event.dart';
part 'language_state.dart';
part 'language_bloc.freezed.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc()
      : super(
          const LanguageState(
            locale: Locale.fromSubtags(languageCode: 'es'),
          ),
        ) {
    on<LanguageEvent>(
      (event, emit) async {
        event.when(changedLanguage: (locale) {
          emit(
            state.copyWith(locale: locale),
          );
        });
      },
    );
  }
}
