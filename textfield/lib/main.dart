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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
        primarySwatch: Colors.cyan,

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    var names=["raman","ramnujan","rajesh","james"];
    return Scaffold(
        appBar: AppBar(


          title: Text("textfield"),
        ),



       body: Center(child: Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               TextField(
                 decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          width: 2,
        color: Colors.black
    )
),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20),
                       borderSide: BorderSide(
                         color: Colors.black
                       )

                     )
                 ),
               ),
               Container(height: 11,),
               TextField(
                 decoration: InputDecoration(

                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                         borderSide: BorderSide(
                             color: Colors.black
                         )

                     )
                 ),
               ),
             ],
           ),
         width: 300,

       )),
    );
  }
}

