abstract class CalculatorEvent {}

class AddEvent extends CalculatorEvent {
  final int value;
  AddEvent(this.value);
}

class SubtractEvent extends CalculatorEvent {
  final int value;
  SubtractEvent(this.value);
}

class MultiplyEvent extends CalculatorEvent {
  final int value;
  MultiplyEvent(this.value);
}
