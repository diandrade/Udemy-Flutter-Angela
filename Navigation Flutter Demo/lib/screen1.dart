import 'package:flutter/material.dart';
import 'package:navigation_flutter_demo/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(
                  Colors.black
              ),
              backgroundColor: MaterialStateProperty.all(
                  Colors.blue),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.all(50)),
              textStyle:
                  MaterialStateProperty.all(
                      const TextStyle(fontSize: 30))),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) {
                      return const Screen2();
                    }
                  )
                );
              },
          child: const Text('Go Forwards To Screen 2'),
        ),
      ),
    );
  }
}
