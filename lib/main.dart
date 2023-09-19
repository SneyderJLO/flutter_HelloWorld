import 'package:flutter/material.dart';
import 'package:hello_world/presentation/screens/counters/counter_screed.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override   
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterScreen());
  }
}
