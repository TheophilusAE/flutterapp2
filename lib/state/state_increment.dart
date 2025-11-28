abstract class State_increment {}

class State_increment_initialstate extends State_increment {}
class State_increment_updatestate extends State_increment {
  final int num;
  State_increment_updatestate(this.num);
}