abstract class State_decrement {}

class State_decrement_initialstate extends State_decrement {}
class State_decrement_updatestate extends State_decrement {
  final int num;
  State_decrement_updatestate(this.num);
}
