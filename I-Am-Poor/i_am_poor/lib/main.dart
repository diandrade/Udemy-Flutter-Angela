import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color(0xff07b4d2),
      appBar: AppBar(
        backgroundColor: const Color(0xff00555a),
        centerTitle: true,
        title: const Text('I Am Poor')

      ),
      body: const Center(
        child: Image(
          image: AssetImage('handy-line-trash-can-with-paper-bag.png'),
        ),
      ),
    ),
  ));
}


