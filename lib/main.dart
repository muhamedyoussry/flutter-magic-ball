import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade700,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text(
            'Ask Me Anything',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballFace = 1;

  void ballChange() {
    setState(() {
      ballFace = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              ballChange();
            },
            child: Image.asset('images/ball$ballFace.png'),
          ),
        ),
      ],
    ));
  }
}
