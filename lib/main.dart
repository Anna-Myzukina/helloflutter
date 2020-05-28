import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello flutter',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Annas first project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Color> manyColors = [
      Colors.red,
      Colors.green, 
      Colors.blue, 
      Colors.yellow,
      Colors.brown,
      Colors.indigo,
      Colors.orange,
      Colors.purple,
      Colors.pink
       ];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Container(
          color: Colors.red,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          width: 200,
          height: 200,
          child: Center(
            child: Text(
              "My Text",
              style: TextStyle(fontSize: 60.0, 
              fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
              ),
            ),
          
        )
        
      
      ),
    );
  }
}
