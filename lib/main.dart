import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Widget buildKey(int num, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(num);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildKey(1, Colors.yellow),
              buildKey(2, Colors.blue),
              buildKey(3, Colors.pink),
              buildKey(4, Colors.green),
              buildKey(5, Colors.orange),
              buildKey(6, Colors.teal)
            ],
          ),
        ),
      ),
    );
  }
}
