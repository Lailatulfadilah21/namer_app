import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller1 extends StatefulWidget {
  const DiceRoller1({super.key});

  @override
  State<DiceRoller1> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller1> {
  var currentDiceRoll1 = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll1 = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'asset/dice-$currentDiceRoll1.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: const Color.fromARGB(244, 0, 0, 0),
            textStyle: TextStyle(fontSize: 28),
          ),
          child: const Text('Acakdadu!'),
        ),
      ],
    );
  }
}