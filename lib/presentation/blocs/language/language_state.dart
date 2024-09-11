part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({
    required Locale locale,
  }) = _LanguageBlocState;
}

extension LanguageStateExtension on LanguageState {
  bool isSelected(Locale localePassed) => localePassed == locale;
}
