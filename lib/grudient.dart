import 'package:flutter/material.dart';
import 'package:my_app/rollind_dice.dart';

var startAlignment = Alignment.topLeft; // assign value to var
var endAlignment = Alignment.bottomRight;

class GraidentContainer extends StatelessWidget {
  const GraidentContainer({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Rolling Dice',
        style: TextStyle(color: Color.fromARGB(255, 235, 235, 235)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
              Color.fromARGB(223, 75, 11, 144),
              Color.fromARGB(255, 83, 8, 194),
            ],
            begin: startAlignment, // use value in var
            end: endAlignment,
          ),
          
        ),
        child: const Center(child: Rollingdice()),
      ),
    );
  }
}
