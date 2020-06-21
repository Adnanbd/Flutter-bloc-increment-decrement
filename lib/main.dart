import 'package:flutter/material.dart';
import 'package:flutter_bloc/blocs/counter_bloc.dart';
import 'package:flutter_bloc/screens/counter_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterBloc>.value(value: CounterBloc()),
      ],
          child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: CounterScreen(),
      ),
    );
  }
}

