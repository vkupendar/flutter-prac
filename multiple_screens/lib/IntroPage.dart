import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiple_screens/main.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("intro"),
      ),
      body: Column(
        children: [
          Text("welcome"),
          SizedBox(
            height: 11,
          ),
          ElevatedButton(onPressed:(){
           Navigator.push(
               context,
               MaterialPageRoute(builder: (Context){return MyHomePage();}));
          }, child: Text("next"))
        ],
      ),
    );
  }

}