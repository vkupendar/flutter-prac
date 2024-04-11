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
        //useMaterial3: true,
        primarySwatch: Colors.cyan
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
    var names=["raman","ramnujan","rajesh","james"];
    return Scaffold(
        appBar: AppBar(


          title: Text("HELLO"),
        ),
        body:ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            leading: Text('$index'),
            title: Text("names[index]"),
            subtitle:Text("number") ,
            trailing: Icon(Icons.add),
          );
        },
          itemCount: names.length,
          separatorBuilder: (context,index){
            return Divider(height: 100,thickness: 10,);
          },

        )
    );
  }
}

