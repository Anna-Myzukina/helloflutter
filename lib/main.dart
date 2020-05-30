import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyPageState createState() => new _MyPageState();
}

class _MyPageState extends State<MyApp> {
  final Random _random = Random();
  Color _color = Color.fromARGB(255,7,78,154);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Tapp anywhere on the screen",
               style: new TextStyle(fontFamily: 'Lato-Regular',
               fontSize: 22.0
               ),
        ),
      ),
      body: InkWell(
        onTap: changeColor,
        child: Container(
          color: _color,
          child: Center(
            child: Text(
              "Hey There",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60.0, 
                fontFamily: 'LobsterTwo',
                fontStyle: FontStyle.italic,
                color: Colors.blue,
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.blue,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
               ),
              ),
            ),     
        ),
      ),
    );
  }
}