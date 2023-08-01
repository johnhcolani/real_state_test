part of 'simpsons_bloc.dart';


 class SimpsonsState {
  SimpsonsStatus simpsonsStatus;

  SimpsonsState({required this.simpsonsStatus});
  SimpsonsState copyWith ({
      SimpsonsStatus? newSimpsonsStatus,
 }){
    return SimpsonsState(
      simpsonsStatus: newSimpsonsStatus ?? simpsonsStatus,
    );
  }
}


