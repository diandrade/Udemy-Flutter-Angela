import 'package:flutter/material.dart';
import 'package:navigation_flutter_demo/screen1.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Screen 2'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(
                  Colors.black
              ),
              backgroundColor: MaterialStateProperty.all(
                  Colors.red
              ),
              padding: MaterialStateProperty.all(
                  const EdgeInsets.all(50)
              ),
              textStyle: MaterialStateProperty.all(
                  const TextStyle(
                      fontSize: 30,
                  )
              )
          ), onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) {
                        return const Screen1();
                      }
                    )
                  );
                },
          child: const Text('Go Back To Screen 1'),
        ),
      )
    );
  }
}