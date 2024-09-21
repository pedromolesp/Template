part of 'global_cubit.dart';

@freezed
class GlobalState with _$GlobalState {
  const factory GlobalState({
    required GlobalThemeMode themeMode,
    required Locale locale,
  }) = _GlobalState;
}
