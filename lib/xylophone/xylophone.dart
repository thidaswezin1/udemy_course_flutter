import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xylophone'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                color: Colors.redAccent,
                onPressed: (){
                  playSound(1);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.white,
                onPressed: (){
                  playSound(2);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.blue,
                onPressed: (){
                  playSound(3);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.amber,
                onPressed: (){
                  playSound(4);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.black,
                onPressed: (){
                  playSound(5);
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.pink,
                onPressed: (){
                  playSound(6);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
