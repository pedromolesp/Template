import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:templateapp/features/home/domain/model/object_entity.dart';
import 'package:templateapp/features/home/domain/repository_contracts/home_remote_repository_contract.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRemoteRepositoryContract _repository;
  HomeBloc({
    required HomeRemoteRepositoryContract templateRemoteRepositoryContract,
  })  : _repository = templateRemoteRepositoryContract,
        super(const _Initial()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        getAllObjects: () => _getAllObjects(event, emit),
      );
    });
  }

  Future<void> _getAllObjects(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    final response = await _repository.getAllObjects();
    response.match(
      onError: (error) {},
      onValue: (value) {
        emit(state.copyWith(objects: value));
      },
    );
  }
}
