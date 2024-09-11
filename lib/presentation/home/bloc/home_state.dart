part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState.initial({
    @Default([]) List<ObjectEntity> objects,
  }) = _Initial;
}
