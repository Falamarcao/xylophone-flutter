import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void musicalNote(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildKey({Color color, int keyNote}) {
    return Expanded(
      child: Card(
        child: FlatButton(
          color: color,
          onPressed: () {
            musicalNote(keyNote);
          },
          child: null,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.teal[600], keyNote: 1),
                buildKey(color: Colors.teal[500], keyNote: 2),
                buildKey(color: Colors.teal[400], keyNote: 3),
                buildKey(color: Colors.teal[300], keyNote: 4),
                buildKey(color: Colors.teal[200], keyNote: 5),
                buildKey(color: Colors.teal[100], keyNote: 6),
                buildKey(color: Colors.teal[50], keyNote: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
