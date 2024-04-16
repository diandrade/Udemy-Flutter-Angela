import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const PianoKeyPage(),
      ),
    );
  }
}

class PianoKeyPage extends StatefulWidget {
  const PianoKeyPage({super.key});

  @override
  State<PianoKeyPage> createState() => _PianoKeyPageState();
}

class _PianoKeyPageState extends State<PianoKeyPage> {

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(int soundNumber, MaterialColor btnColor) {
    return Expanded(
      child: TextButton(
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: btnColor,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(1, Colors.red),
          buildKey(2, Colors.orange),
          buildKey(3, Colors.yellow),
          buildKey(4, Colors.green),
          buildKey(5, Colors.teal),
          buildKey(6, Colors.blue),
          buildKey(7, Colors.purple),
        ],
      ),
    );
  }
}

