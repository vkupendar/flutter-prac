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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(


          title: Text("hello"),
        ),
        body:Container(
        height: 300,
       color: Colors.indigo,
       child: Column(
          mainAxisAlignment:MainAxisAlignment.start ,
          crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("a", style: TextStyle(fontSize: 30, color: Colors.deepOrange),),
                Text("b",style: TextStyle(fontSize: 30, color: Colors.deepOrange),),
                Text("c",style: TextStyle(fontSize: 30, color: Colors.deepOrange),),
                Text("d",style: TextStyle(fontSize: 30, color: Colors.deepOrange),),
                ElevatedButton(onPressed: (){
                  },
                child: Text("click"))
              ],
            )
        )



    );
  }
}
