// ignore: depend_on_referenced_packages

import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int contadorClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('TechSoft Functions',
              style: TextStyle(fontSize: 14), textAlign: TextAlign.center),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  contadorClicks = 0;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .center, //para centrar todo el contenido al centro de toda la pantalla
              children: [
                const Text('Counter application\nby: Neysser TL',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(13, 27, 42, 0.7))),
                Text(
                  '$contadorClicks',
                  style: const TextStyle(
                      fontSize: 120,
                      fontWeight: FontWeight.w100,
                      color: Color.fromRGBO(65, 90, 119, 0.5)),
                ),
                Text(contadorClicks == 1 ? 'Click' : 'Clicks',
                    style:
                        //  Text(validaClicks(contadorClicks),style:
                        const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w900)),
                //const SizedBox(width: 60,),
              ],
            ),
          ),
        ),
        floatingActionButton: Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          
         mainAxisAlignment: MainAxisAlignment.start,
          children: [
            customButton(
              
              icon: Icons.exposure_minus_1,
              onPressed: () {
                if (contadorClicks == 0) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          const Text('no se admite el contador menores a cero'),
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
                  if (contadorClicks > 0) {
                    contadorClicks -= 1;
                  }
                });
              },
            ),
            // const SizedBox(
            //   width: 15,
            // ),
            customButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  contadorClicks = 0;
                });
              },
            ),

            customButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  contadorClicks += 1;
                });
              },
            ),
          ],
        ));
  }
}

// ignore: camel_case_types
class customButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const customButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

String validaClicks(int contador) => (contador == 1 ? 'Clickaaaa' : 'Clicks');

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
