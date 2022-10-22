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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  child: Text(""),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text(""),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  child: Text(""),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  child: Text(""),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  child: Text(""),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal)),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  child: Text(""),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  child: Text(""),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
