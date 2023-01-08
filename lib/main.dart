import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playAudio(int number) {
    AudioCache().play('note$number.wav');
  }

  Expanded buildKey(int number, Color clr){
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(
                clr)),
        onPressed: () {
          playAudio(number);
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.deepPurpleAccent),
              buildKey(2, Colors.indigoAccent),
              buildKey(3, Colors.blueAccent),
              buildKey(4, Colors.green),
              buildKey(5, Colors.yellow),
              buildKey(6, Colors.orangeAccent),
              buildKey(7, Colors.redAccent),
            ],
          ),
        ),
      ),
    );
  }
}
