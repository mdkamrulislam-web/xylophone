import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildButton({Color color, int soundNumber}) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Xylophone',
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(color: Colors.red, soundNumber: 1),
              buildButton(color: Colors.orange, soundNumber: 2),
              buildButton(color: Colors.yellow, soundNumber: 3),
              buildButton(color: Colors.green, soundNumber: 4),
              buildButton(color: Colors.teal, soundNumber: 5),
              buildButton(color: Colors.blue, soundNumber: 6),
              buildButton(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
