import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void Playsound(String string) {
    final player = AudioCache();
    player.play('note$string.wav');
  }

  Expanded buidlkey({Color color, String string}) => Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          Playsound(string);
        },
      ),
    );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buidlkey(color: Colors.indigo, string: "1"),
              buidlkey(color: Colors.red, string: "2"),
              buidlkey(color: Colors.greenAccent, string: "3"),
              buidlkey(color: Colors.pinkAccent, string: "4"),
              buidlkey(color: Colors.purple, string: "5"),
              buidlkey(color: Colors.orange, string: "6"),
              buidlkey(color: Colors.lightBlue, string: "7"),
            ],
          ),
        ),
      ),
    );
  }
}
