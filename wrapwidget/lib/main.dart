import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text("wrap widget"),
        ),
        body: Wrap(
          alignment: WrapAlignment.center,
          direction: Axis.horizontal,
          spacing: 11,
          runSpacing: 11,
          children: [
            Container(width: 100, height: 100, color: Colors.deepOrange,),
            Container(width: 100, height: 100, color: Colors.redAccent,),
            Container(width: 100, height: 100, color: Colors.blue,),
            Container(width: 100, height: 100, color: Colors.yellow,)
          ],
        )
    );
  }
}

