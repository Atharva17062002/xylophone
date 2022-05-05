import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundnumber){
    final player = AudioCache();
    player.play('assets_note$soundnumber.wav');
  }
  Expanded buildbutton({required Color color,required int soundNumber}){
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: (){
          playSound(soundNumber);
        }, child: null,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildbutton(color: Colors.red, soundNumber: 1),
              buildbutton(color: Colors.orange, soundNumber: 2),
              buildbutton(color: Colors.yellow, soundNumber: 3),
              buildbutton(color: Colors.green, soundNumber: 4),
              buildbutton(color: Colors.teal, soundNumber: 5),
              buildbutton(color: Colors.blue, soundNumber: 6),
              buildbutton(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}