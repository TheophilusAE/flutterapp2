import'package:bloc/bloc.dart';
import'../event/event_decrement.dart';
import'../state/state_decrement.dart';
class Bloc_decrement extends Bloc<Event_decrement, State_decrement> {
  int number = 0;
  void Sub_Subnum_Event(EventDecrement_subnum event, Emitter<State_decrement> emit){
    number--;
    emit(State_decrement_updatestate(number));
  }

  Bloc_decrement() : super(State_decrement_initialstate()){
    on<EventDecrement_subnum>(Sub_Subnum_Event);
  }
    
}
