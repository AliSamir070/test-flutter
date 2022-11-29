import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/modules/counter/cubit/cubit.dart';
import 'package:test_flutter/modules/counter/cubit/states.dart';

class CounterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CounterCubit(),
      child: BlocConsumer<CounterCubit , CounterStates>(
        listener: (context , states){
          if(states is CounterPlusState){
            print(states.counter);
          }
          if(states is CounterMinusState){
            print(states.counter);
          }
        },
        builder: (context , states){
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Counter",
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                      CounterCubit.get(context).minus();
                    },
                    child: Text(
                        "MINUS"
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "${CounterCubit.get(context).counter}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      CounterCubit.get(context).plus();
                    },
                    child: Text(
                        "Plus"
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

}
