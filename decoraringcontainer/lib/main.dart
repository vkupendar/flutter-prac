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
        
        primarySwatch: Colors.lightBlue
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
       title: Text("dojdi"),
     ),
     body: Container(
width: double.infinity,
       height: double.infinity,
       color: Colors.blue.shade50,
       child: Center(
         child: Container(
           height: 150,
           width: 150,
          // color:Colors.blueGrey,
           decoration: BoxDecoration(
            color: Colors.blueGrey,
            // borderRadius: BorderRadius.all(Radius.circular(21)),
             border: Border.all(
               width: 2,
               color: Colors.yellow
             ),
             boxShadow:[
               BoxShadow(
                 blurRadius: 11,
                 spreadRadius: 21,
                 color: Colors.orange
               )
             ],
               shape: BoxShape.circle
           ),
         ),
       ),
     ),
   );
  }
 
  }


  

 


 

  

