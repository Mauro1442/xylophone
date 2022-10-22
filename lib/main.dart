import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {

    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  playSound(1);
                },
                child: Text(""),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
              ),
              TextButton(
                onPressed: () {
                  playSound(2);
                },
                child: Text(""),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
              ),
              TextButton(
                onPressed: () {
                  playSound(3);
                },
                child: Text(""),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),
              ),
              TextButton(
                onPressed: () {
                  playSound(4);
                },
                child: Text(""),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
              ),
              TextButton(
                onPressed: () {
                  playSound(5);
                },
                child: Text(""),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal)),
              ),
              TextButton(
                onPressed: () {
                  playSound(6);
                },
                child: Text(""),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
              ),
              TextButton(
                onPressed: () {
                  playSound(7);
                },
                child: Text(""),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
