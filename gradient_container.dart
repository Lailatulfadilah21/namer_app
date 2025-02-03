import 'package:flutter/material.dart';



const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  void acakdadu(){
    var activeDiceImage = 'asset/dice-2.png';
    

  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                 'asset/dice-3.png',
                 width: 200,
                 ),
             TextButton(
              onPressed: acakdadu,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
              child: const Text('Roll Dice!')
              ),
            ],
          ), 
      ), 
     ); 
  } 
} 