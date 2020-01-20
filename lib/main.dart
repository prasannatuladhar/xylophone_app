import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(child: MainApp()),
      ),
    ),
  );
}



class MainApp extends StatelessWidget {

  void playAudio(int audioNumber) {
    final player = AudioCache();
    player.play('note$audioNumber.wav');
  }

  Expanded buildKey({Color color,int audioNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playAudio(audioNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildKey(color: Colors.white,audioNumber: 1),
        buildKey(color: Colors.black87,audioNumber: 2),
        buildKey(color: Colors.white,audioNumber: 3),
        buildKey(color: Colors.black87,audioNumber: 4),
        buildKey(color: Colors.white,audioNumber: 5),
        buildKey(color: Colors.black87,audioNumber: 6),
        buildKey(color: Colors.white,audioNumber: 7),
   ] );
  }
}
