import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:real_state_app/core/resources/data_state.dart';
import 'package:real_state_app/features/fearture_one/presentation_layer/blocs/simpsons_status.dart';

import '../../domain_layer/usecases/get_sympsons_usecase.dart';

part 'simpsons_event.dart';
part 'simpsons_state.dart';

class SimpsonsBloc extends Bloc<SimpsonsEvent, SimpsonsState> {
  final GetSimpsonsUseCase getSimpsonsUseCase;

  SimpsonsBloc(this.getSimpsonsUseCase) : super(SimpsonsState(simpsonsStatus: SimpsonsLoading())) {
    on<LoadSimpsonsEvent>((event, emit) async {
      emit(state.copyWith(newSimpsonsStatus: SimpsonsLoading()));

      DataState dataState = await getSimpsonsUseCase(event.toString());
      if (dataState is DataSuccess) {
        emit(state.copyWith(newSimpsonsStatus: SimpsonsCompleted(dataState.data)));
      }
      if (dataState is DataFailed) {
        emit(state.copyWith(newSimpsonsStatus: SimpsonsError(dataState.error!)));
      }
    });
  }
}
