import 'package:app2/bloc/bloc_multiplication.dart';
import 'package:app2/event/event_multiplication.dart';
import 'package:app2/state/state_multiplication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pages_multiplication extends StatefulWidget {
  const Pages_multiplication({super.key});

  @override
  State<Pages_multiplication> createState() => _Pages_multiplicationState();
}

class _Pages_multiplicationState extends State<Pages_multiplication> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Bloc_multiplication, State_multiplication>(builder: (context, state){
      if(state is State_multiplication_initialstate){
        return _PageMultiplication(context,1);
      }else if(state is State_multiplication_updatestate){
        return _PageMultiplication(context, state.num);
      }else{
        return Container();
      }
    });
  }
}

Widget _PageMultiplication(BuildContext context, int number){
  return Scaffold(
    appBar: AppBar(
      title: Text("Multiplication"),
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
            context.read<Bloc_multiplication>().add(EventMultiplication_mulnum());
          }, child: Text("Multiply by 2")),
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
                  Navigator.pushNamed(context, '/decrement');
                },
                child: Text("Decrement Page")
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
