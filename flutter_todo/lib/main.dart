import 'package:flutter/material.dart';
import 'package:flutter_todo/screens/home.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title:"todo",
     home: Home(),

   );
  }

}

