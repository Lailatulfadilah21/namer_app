import 'package:flutter/material.dart';
import 'package:acakdadu/gradient_container.dart';
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
        Color.fromARGB(19, 235, 121, 187), Color.fromARGB(80, 216, 65, 183),
        ),
      ),
    ),
  );
}