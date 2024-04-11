import 'package:flutter/material.dart';
void main()=>runApp(new MaterialApp(
  theme:ThemeData(
    primarySwatch: Colors.green,

  ) ,
  home: HomePage(),
));

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }


}
class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("load json app")
      ),
      body:Container(
        child: Center(
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context).lo
          ),
        ),
      ) ,
    );
  }

}