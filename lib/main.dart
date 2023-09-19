import 'package:flutter/material.dart';
import 'package:hello_world/presentation/screens/counters/counter_screed.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override     
  Widget build(BuildContext context) {
    return MaterialApp(
      
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.blueGrey //para establecer una paleta de colores a todo el sistema.

        ),
        home: const CounterScreen());
  }
}
