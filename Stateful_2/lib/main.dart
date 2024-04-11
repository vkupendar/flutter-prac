import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "My App",
        home: new HomePage()
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  String mytext="hello world";
  void _changeText(){
    setState(() {
      mytext="welcome to my app";
    });
  }
  Widget _bodyWidget(){
    return new Container(
      padding: EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(mytext),
            new RaisedButton(
              child:new Text("Click"),
              onPressed: _changText()
            )
          ],
        ),
      ) ,
    );
  }