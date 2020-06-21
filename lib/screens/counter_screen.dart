import 'package:flutter/material.dart';
import 'package:flutter_bloc/blocs/counter_bloc.dart';
import 'package:flutter_bloc/widgets/decrement.dart';
import 'package:flutter_bloc/widgets/increment.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(child: Text(counterBloc.counter.toString(),style: TextStyle(fontSize: 70),)),
          Increment(),
          Decrement(),

          

        ],
        
      ),
    );
  }
}
