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
class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
    title: Center(child: Text("dashboard screen")),
  ),
    body: Container(
      color: Colors.yellow,
      height: 200,
      //width: 200,

    ),
    backgroundColor: Colors.indigo,

  );
  }

}