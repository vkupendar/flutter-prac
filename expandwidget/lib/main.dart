import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp());
}
class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter app",
      theme: ThemeData(
          primarySwatch: Colors.indigo
      ),
      home: DashboardScreen(),
    );
  }




}
class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("dashboard screen")),
      ),
      body: Row(
       
        children: [
          Container(
            width: 50,
            height: 100,
            color:Colors.blueGrey
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 100,
              color: Colors.yellow,
            ),

          ),
          Container(
            width:50,
            height: 100,
            color: Colors.cyan,
          )
        ],
      ),

    );
  }

}