import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:templateapp/domain/model/object_entity.dart';
import 'package:templateapp/domain/repository_contracts/template_repository_contract.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final TemplateRepositoryContract _repository;
  HomeBloc({
    required TemplateRepositoryContract templateRepositoryContract,
  })  : _repository = templateRepositoryContract,
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
        print('${value.results?.length}');
        emit(state.copyWith(objects: value));
      },
    );
  }
}
