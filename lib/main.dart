import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiceGameApp());
}

class DiceGameApp extends StatelessWidget {
  const DiceGameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DiceGameScreen(),
    );
  }
}

class DiceGameScreen extends StatefulWidget {
  const DiceGameScreen({super.key});

  @override
  State<DiceGameScreen> createState() => _DiceGameScreenState();
}

class _DiceGameScreenState extends State<DiceGameScreen> {
  int dice1 = 1;
  int dice2 = 1;

  void rollDice() {
    setState(() {
      dice1 = Random().nextInt(6) + 1; 
      dice2 = Random().nextInt(6) + 1; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Dice 1: $dice1',
              style: Theme.of(context).textTheme.displayLarge, // Updated to displayLarge
            ),
            Text(
              'Dice 2: $dice2',
              style: Theme.of(context).textTheme.displayLarge, // Updated to displayLarge
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: rollDice,
              child: const Text('Roll Dice'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Replaced primary with backgroundColor
                foregroundColor: Colors.white, // Replaced onPrimary with foregroundColor
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
