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
  Color _color = Colors.orange;

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
               fontSize: 32.0
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
              style: TextStyle(fontSize: 60.0, 
              fontFamily: 'LobsterTwo',
              fontStyle: FontStyle.italic,
              color: Colors.blue,
              ),
              textAlign: TextAlign.center,
              ),
            ),     
        ),
      ),
    );
  }
}