import 'package:acakdadu/dice_roller1.dart';
import 'package:acakdadu/dice_roller2.dart';
import 'package:acakdadu/dice_roller3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
         child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(child: Text("1")),
                Tab(child: Text("2")),
                Tab(child: Text("3")),
              ],
              ),
              title: const Text('Acakdadu')
          ),
              body: const TabBarView(
                children: [
                  (DiceRoller1()),
                  (DiceRoller2()),
                  (DiceRoller3()),
                ],
                ),
          ),
         ),
         );
  }
}