import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playNote(int index) {
    player.play('note$index.wav');
  }

  Expanded buildKey({int keyNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(keyNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyNumber: 1, color: Colors.red),
              buildKey(keyNumber: 2, color: Colors.orange),
              buildKey(keyNumber: 3, color: Colors.yellow),
              buildKey(keyNumber: 4, color: Colors.green),
              buildKey(keyNumber: 5, color: Colors.teal),
              buildKey(keyNumber: 6, color: Colors.blue),
              buildKey(keyNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
