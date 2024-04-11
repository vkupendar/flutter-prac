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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primarySwatch: Colors.cyan
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1Controller=TextEditingController();
  var no2Controller=TextEditingController();
  var result="";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
        title: Text("basic calculations"),

     ),
     body: Container(
       color: Colors.blue.shade200,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      controller:no1Controller ,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: no2Controller,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(onPressed: (){
                                var no1=int.parse(no1Controller.text.toString());
                                var no2=int.parse(no2Controller.text.toString());
                                var sum=no1+no2;
                                result="The sum of $no1 and $no2 is $sum";
                                setState(() {

                                });
                          }, child: Text("Add")),
                          ElevatedButton(onPressed: (){
                            var no1=int.parse(no1Controller.text.toString());
                            var no2=int.parse(no2Controller.text.toString());
                            var sub=no1-no2;
                            result="the sub of $no1 and $no2 is $sub";
                            setState(() {

                            });
                          }, child: Text("sub")),
                          ElevatedButton(onPressed: (){}, child: Text("mul")),
                          ElevatedButton(onPressed: (){}, child: Text("div"))
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(11),
                    child: Text(result))
                  ],
                ),
              ),
            ),
          ),
        ),
     )
   );
  }
}