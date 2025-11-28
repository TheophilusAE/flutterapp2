abstract class CalculatorState {}

class CalculatorInitial extends CalculatorState {
  final int value = 0;
}

class CalculatorUpdated extends CalculatorState {
  final int value;
  CalculatorUpdated(this.value);
}
