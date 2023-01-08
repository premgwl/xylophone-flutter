import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playAudio(int number){
    AudioCache().play('note$number.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
              child: Column(
            children: [
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.deepPurpleAccent)),
                onPressed: () {
                  playAudio(1);
                },
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.indigoAccent)),
                onPressed: () {
                  playAudio(2);
                },
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.blueAccent)),
                onPressed: () {
                playAudio(3);
                  },
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.greenAccent)),
                onPressed: () {
                  playAudio(4);
                },
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.yellowAccent)),
                onPressed: () {
                  playAudio(5);
                },
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.orangeAccent)),
                onPressed: () {
                  playAudio(6);
                },
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.redAccent)),
                onPressed: () {
                  playAudio(7);
                },
              ),
            ],
          )),
        ),
      ),
    );
  }
}
