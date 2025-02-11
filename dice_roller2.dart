import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller2 extends StatefulWidget {
  const DiceRoller2({super.key});

  @override
  State<DiceRoller2> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller2> {
  var currentDiceRoll1 = 2;
  var currentDiceRoll2 = 3;

  void rollDice() {
    setState(() {
      currentDiceRoll1 = randomizer.nextInt(6) + 1;
      currentDiceRoll2 = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'asset/dice-$currentDiceRoll1.png',
          width: 200,
        ),
        Image.asset(
          'asset/dice-$currentDiceRoll2.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: const Color.fromARGB(244, 0, 0, 0),
            textStyle: TextStyle(fontSize: 28),
          ),
          child: const Text('Acakdadu!'),
        ),
      ],
    );
  }
}