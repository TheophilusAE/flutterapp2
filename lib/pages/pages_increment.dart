import 'package:app2/bloc/bloc_increment.dart';
import 'package:app2/event/event_increment.dart';
import 'package:app2/state/state_increment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pages_increment extends StatefulWidget {
  const Pages_increment({super.key});

  @override
  State<Pages_increment> createState() => _Pages_incrementState();
}

class _Pages_incrementState extends State<Pages_increment> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Bloc_increment, State_increment>(builder: (context, state){
      if(state is State_increment_initialstate){
        return _PageIncrement(context,0);
      }else if(state is State_increment_updatestate){
        return _PageIncrement(context, state.num);
      }else{
        return Container();
      }
    });
  }
}

Widget _PageIncrement(BuildContext context, int number){
  return Scaffold(
    appBar: AppBar(
      title: Text("Increment"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            number.toString(),
          ),
          ElevatedButton(onPressed: (){
            context.read<Bloc_increment>().add(EventIncrement_addnum());
          }, child: Text("Increment")),
        ],
      ),
    ),
  );
}