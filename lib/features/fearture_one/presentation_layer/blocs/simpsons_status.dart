import 'package:flutter/cupertino.dart';
import 'package:real_state_app/features/fearture_one/domain_layer/entities/simpsons_entity.dart';

@immutable
abstract class SimpsonsStatus{}

  class SimpsonsLoading extends SimpsonsStatus{}

class SimpsonsCompleted extends SimpsonsStatus{
  final SimpsonsEntity simpsonsEntity;

  SimpsonsCompleted(this.simpsonsEntity);
}

class SimpsonsError extends SimpsonsStatus{
  final String message;

  SimpsonsError(this.message);
}
