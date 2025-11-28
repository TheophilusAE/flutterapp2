abstract class State_multiplication {}

class State_multiplication_initialstate extends State_multiplication {}
class State_multiplication_updatestate extends State_multiplication {
  final int num;
  State_multiplication_updatestate(this.num);
}
