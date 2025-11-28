import 'package:app2/bloc/bloc_decrement.dart';
import 'package:app2/event/event_decrement.dart';
import 'package:app2/state/state_decrement.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pages_decrement extends StatefulWidget {
  const Pages_decrement({super.key});

  @override
  State<Pages_decrement> createState() => _Pages_decrementState();
}

class _Pages_decrementState extends State<Pages_decrement> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Bloc_decrement, State_decrement>(builder: (context, state){
      if(state is State_decrement_initialstate){
        return _PageDecrement(context,0);
      }else if(state is State_decrement_updatestate){
        return _PageDecrement(context, state.num);
      }else{
        return Container();
      }
    });
  }
}

Widget _PageDecrement(BuildContext context, int number){
  return Scaffold(
    appBar: AppBar(
      title: Text("Decrement"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            number.toString(),
            style: TextStyle(fontSize: 48),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: (){
            context.read<Bloc_decrement>().add(EventDecrement_subnum());
          }, child: Text("Decrement")),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/');
                },
                child: Text("Increment Page")
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/multiplication');
                },
                child: Text("Multiplication Page")
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
