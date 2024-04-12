import 'dart:math';
import 'package:flutter/material.dart';

class Rollingdice extends StatefulWidget {
  // in statefulwidget we create two classes
  const Rollingdice({super.key});

  @override
  State<Rollingdice> createState() {
    return _Rollingdicestate();
  }
}

class _Rollingdicestate extends State<Rollingdice> {
  // _ is use to make the class private
  final randomMiser = Random();
  var currentdiceroll = 6;
  void rolldice() {
    setState(
      () {
        currentdiceroll = randomMiser.nextInt(6) + 1; // gives value 1 to 6
      },
    );
  } // button function

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, // to center the butten alignment
        children: [
          Image.asset(
            'assets/images/dice-$currentdiceroll.png',
            width: 200,
          ),
          const SizedBox(
              height:
                  28), // anothe option to add spaces between button and image
          ElevatedButton(
            onPressed: rolldice,
            style: ElevatedButton.styleFrom(
              // padding: const EdgeInsets.only(top:28), // to add spaces between button and image
              foregroundColor: const Color.fromARGB(255, 17, 17, 17),
              textStyle: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text('roll dice'),
          ),
        ],
      ),
    );
  }
}
