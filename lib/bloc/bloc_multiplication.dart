import'package:bloc/bloc.dart';
import'../event/event_multiplication.dart';
import'../state/state_multiplication.dart';
class Bloc_multiplication extends Bloc<Event_multiplication, State_multiplication> {
  int number = 1;
  void Mul_Mulnum_Event(EventMultiplication_mulnum event, Emitter<State_multiplication> emit){
    number *= event.multiplier;
    emit(State_multiplication_updatestate(number));
  }

  Bloc_multiplication() : super(State_multiplication_initialstate()){
    on<EventMultiplication_mulnum>(Mul_Mulnum_Event);
  }
    
}
