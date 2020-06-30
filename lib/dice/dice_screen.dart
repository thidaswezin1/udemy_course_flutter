import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  @override
  _DiceScreenState createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Dice'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDiceFace();
                },
                child: Image.asset('assets/images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
                child: FlatButton(
                  onPressed: (){
                   changeDiceFace();
                  },
                  child: Image.asset('assets/images/dice$rightDiceNumber.png'),
            ))
          ],
        ),
      ),
    );
  }
}
