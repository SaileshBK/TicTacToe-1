import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String msg = 'Do you want to play?';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tik Tak Toe'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  msg,
                  style: TextStyle(fontSize: 30, fontStyle: FontStyle.normal),
                ),
                RaisedButton(
                  child: Text(
                    "New Game",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: _changeText,
                  color: Color.fromARGB(255, 102, 0, 218),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.grey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _changeText() {
    setState(() {
      if (msg == 'Do you want to play?') {
        msg = 'You chose to play?';
      } else {
        msg = 'Do you want to play?';
      }
    });
  }
}
