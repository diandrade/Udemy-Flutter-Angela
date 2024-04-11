import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color(0xff0095FB),
      appBar: AppBar(
          backgroundColor: const Color(0xff0044A7),
          title: Text('Ask Me Anything')),
      body: const BallPage(),
    ),
  ));
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var ballNumber = 1;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('assets/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
