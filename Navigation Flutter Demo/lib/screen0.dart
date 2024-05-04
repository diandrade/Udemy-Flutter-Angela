import 'package:flutter/material.dart';

class Screen0 extends StatelessWidget {
  const Screen0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Screen 0'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            const SizedBox(
              height: 20.0,
            ),

             ElevatedButton(
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(
                      Colors.black
                  ),
                  backgroundColor: MaterialStateProperty.all(
                      Colors.blue
                  ),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.all(50)
                  ),
                  textStyle: MaterialStateProperty.all(
                      const TextStyle(
                          fontSize: 30
                      )
                    )
                  ),
               onPressed: () {
                Navigator.pushNamed(context, '/first');
                },
              child: const Text('Go To Screen 1'),
            ),

            const SizedBox(
              height: 20.0,
            ),

             ElevatedButton(
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
                          fontSize: 30
                      )
                  )
              ), onPressed: () {
               Navigator.pushNamed(context, '/second');
             },
              child: const Text('Go To Screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}