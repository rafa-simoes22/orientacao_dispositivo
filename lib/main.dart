import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    Color backgroundColor = isPortrait ? Colors.green : Colors.red;
    String text = isPortrait ? 'Verticallllllllll' : 'Horizontalllllllll';

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          alignment: Alignment.center,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              text,
              style: TextStyle(fontSize: 200, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
