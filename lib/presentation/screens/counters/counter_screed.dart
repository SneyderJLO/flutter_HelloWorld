// ignore: depend_on_referenced_packages

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
   int contadorClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('TechSoft Systems',  style: TextStyle(fontSize: 14),textAlign: TextAlign.center),
      ),
      
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //para centrar todo el contenido al centro de toda la pantalla
            children: [
             const Text('Counter application\nby: Neysser TL',textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromRGBO(13, 27, 42,0.7))),
              Text('$contadorClicks', style: 
               const TextStyle(fontSize: 120, fontWeight: FontWeight.w100, color: Color.fromRGBO(65, 90, 119, 0.5)),), 
              const Text('Presiona el botón para incrementar el contador\n\n',style: 
                TextStyle(fontSize: 12, fontWeight: FontWeight.w900)),
],
                  
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        
        children: [
          FloatingActionButton(
            
            onPressed: () {
             if (contadorClicks == 0)
                {
                    ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('no se admite el contador menores a cero'),
            action: SnackBarAction(
              label: 'OK',
              onPressed: () {
                // Code to execute.
              },
            ),
          ),
        );
                  } 
              setState(() {
                 if (contadorClicks > 0)  {
                      contadorClicks -= 1;
                    }
                    
               
              });
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
         // SnackBarExample(),
            const SizedBox(height: 15,),
          FloatingActionButton(
            onPressed: () {
              
              setState(() {



                contadorClicks = 0;

              });
            },
            child: const Icon(Icons.replay_outlined),
          ),
          const SizedBox(height: 15,),
          FloatingActionButton(
            onPressed: () {
              
              setState(() {
              contadorClicks += 1;  
              });
            },
            child: const Icon(Icons.plus_one),
          ),
        ],
      )
      
    );
  }
}
class SnackBarExample extends StatelessWidget {
  const SnackBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Show Snackbar'),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('no se admite el contador menores a cero'),
            action: SnackBarAction(
              label: 'OK',
              onPressed: () {
                // Code to execute.
              },
            ),
          ),
        );
      },
    );
  }
}