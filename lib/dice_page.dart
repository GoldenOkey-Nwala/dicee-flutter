import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;

  //To create a function, we have this format
  // void functionName (){ The function to be executed }
 void diceFace() => setState(() {
   leftDiceNumber = Random().nextInt(6) + 1;
   rightDiceNumber = Random().nextInt(6) + 1;
 });

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.teal[700],
    appBar: AppBar(
      backgroundColor: Colors.teal[900],
      centerTitle: true,
      title: const Text('Dice App'),
    ),
    body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: GestureDetector(
                  onTap: () => diceFace(),
                  child: Image.asset('images/new/dice$leftDiceNumber.png')
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: GestureDetector(
                  onTap: () => diceFace(),
                  child: Image.asset('images/new/dice$rightDiceNumber.png')
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

