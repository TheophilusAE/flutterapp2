import'package:bloc/bloc.dart';
import'../event/event_increment.dart';
import'../state/state_increment.dart';
class Bloc_increment extends Bloc<Event_increment, State_increment> {
  int number = 0;
  void Add_Addnum_Event(EventIncrement_addnum event, Emitter<State_increment> emit){
    number++;
    emit(State_increment_updatestate(number));
  }

  Bloc_increment() : super(State_increment_initialstate()){
    on<EventIncrement_addnum>(Add_Addnum_Event);
  }
    
}