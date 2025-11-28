import 'package:bloc/bloc.dart';
import '../event/calculator_event.dart';
import '../state/calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  int currentValue = 0;

  CalculatorBloc() : super(CalculatorInitial()) {
    on<AddEvent>((event, emit) {
      currentValue += event.value;
      emit(CalculatorUpdated(currentValue));
    });

    on<SubtractEvent>((event, emit) {
      currentValue -= event.value;
      emit(CalculatorUpdated(currentValue));
    });

    on<MultiplyEvent>((event, emit) {
      currentValue *= event.value;
      emit(CalculatorUpdated(currentValue));
    });
  }
}
