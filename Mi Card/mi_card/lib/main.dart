import 'package:flutter/material.dart';

void main() {
  runApp(
      const MyApp()
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF3D246C),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(//add colors to colors array
                    colors: [
                      Color(0xFFFFDBC3),
                      Color(0xFF5C4B99),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),// stroke
                  child: CircleAvatar(
                    backgroundImage: AssetImage('gatinha.png'),
                    radius: 50, // resize radius
                  ),
                ),
              ),
              const Text(
                'Salem',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white
                ),
              ),
              const Text(
                'Flutter Developer',
                style: TextStyle(
                  fontFamily: 'Source Sans 3", sans-serif',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFDBC3)
                ),
              ),
              const Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color(0xFF5C4B99),
                    ),
                    title: Text(
                      '+11 95815-2477',
                      style: TextStyle(
                        color: Color(0xFF5C4B99),
                        fontFamily: 'Source Sans Pro',
                        fontSize: 15.0,
                      ),
                    ),
                  )),
              const Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Color(0xFF5C4B99),
                    ),
                    title: Text(
                      'contato.salem@gmail.com',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF5C4B99),
                          fontFamily: 'Source Sans Pro'),
                    ),
                  ))
            ],
          )),
      ),
    );
  }
}



