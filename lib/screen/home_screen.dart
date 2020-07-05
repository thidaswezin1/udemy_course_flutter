import 'package:flutter/material.dart';
import 'package:udemyflutter/Quiz/quizer.dart';
import 'package:udemyflutter/dice/dice_screen.dart';
import 'package:udemyflutter/xylophone/xylophone.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              color: Colors.greenAccent,
              child: Text('Dice Screen'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>DiceScreen()));
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.blueAccent,
              child: Text('Xylophone'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Xylophone()));
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.redAccent,
              child: Text('Quiz'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>QuizPage()));
              },
            ),
          )
        ],
      ),
    );
  }
}
