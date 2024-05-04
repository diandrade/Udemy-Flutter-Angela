import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        textTheme:
            const TextTheme(bodyMedium: TextStyle(color: Color(0xFFFFFFFF))),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
            color: Color(0xFF0A0E21),
            titleTextStyle: TextStyle(color: Color(0xFFFFFFFF))),
      ),
      home: const InputPage()));
}
