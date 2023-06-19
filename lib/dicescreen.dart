import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  var roll = 0;
  void _rollD() {
    setState(() {
      roll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var top = "Dice roller";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(50),
          height: 100,
          width: 250,
          child: Center(
            child: Text(
              top,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(40),
            height: 300,
            width: 300,
            child: Image.asset('image/dice$roll.png'),
          ),
        ),
        Container(
          margin: EdgeInsets.zero,
          height: 50,
          width: 100,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: _rollD,
              child: const Text(
                'Roll dice',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ),
      ],
    );
  }
}
