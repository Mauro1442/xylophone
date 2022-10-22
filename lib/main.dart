import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {

    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({int sound, Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(sound);
        },
        child: Text(""),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(sound: 1, color: Colors.red),
              buildKey(sound: 2, color: Colors.orange),
              buildKey(sound: 3, color: Colors.yellow),
              buildKey(sound: 4, color: Colors.green),
              buildKey(sound: 5, color: Colors.teal),
              buildKey(sound: 6, color: Colors.blue),
              buildKey(sound: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
