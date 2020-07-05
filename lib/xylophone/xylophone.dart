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
  Widget buildWidget({Color color,int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);
        },
      ),
    );
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
            buildWidget(color: Colors.redAccent,soundNumber: 1),
            buildWidget(color: Colors.white,soundNumber: 2),
            buildWidget(color: Colors.blue,soundNumber: 3),
            buildWidget(color: Colors.amber,soundNumber: 4),
            buildWidget(color: Colors.green,soundNumber: 5),
            buildWidget(color: Colors.orange,soundNumber: 6),
            buildWidget(color: Colors.black,soundNumber: 7)
          ],
        ),
      ),
    );
  }
}
