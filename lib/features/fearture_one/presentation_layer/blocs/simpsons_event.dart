part of 'simpsons_bloc.dart';

@immutable
abstract class SimpsonsEvent {}
class LoadSimpsonsEvent extends SimpsonsEvent{
final String simpsonsCharacter;

LoadSimpsonsEvent(this.simpsonsCharacter);
}