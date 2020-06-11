import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnum = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Center(
          child: Text(
              "Your Questions...",
          style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.white,),),
        ),
        Center(
          child: FlatButton(
              onPressed: (){
                setState(() {
                  ballnum = Random().nextInt(5) +1;
                });
              },
              child: Image.asset('images/ball$ballnum.png'),
          ),
        ),
        Center(
          child: Text('...will be answered here.',
    style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.white,)
    ),
        ),
      ],
    );
  }
}


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}

