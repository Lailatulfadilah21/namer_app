import 'package:flutter/material.dart';
import 'dart:math';




final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll1 = 2;
  var currentDiceRoll2 = 3;

  void rollDice() {
    setState(() {
      currentDiceRoll1 = randomizer.nextInt(6) + 1;
      currentDiceRoll2 = randomizer.nextInt(6) + 1;
       currentDiceRoll2 = randomizer.nextInt(6) + 1;
    });
  }

  @override
  build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Gambar dua dadu
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/dice-$currentDiceRoll1.png',
              width: 100,
            ),
            SizedBox(width: 20),
            Image.asset(
              'asset/dice-$currentDiceRoll2.png',
              width: 100,
            ),
            SizedBox(width: 20),
            Image.asset(
              'asset/dice-$currentDiceRoll2.png',
              width: 100,
            ),
            SizedBox(width: 20),
            Image.asset(
              'asset/dice-$currentDiceRoll2.png',
              width: 100,
            ),
            
          

          ],
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice!'),
        ),
      ],
    );
  }
}