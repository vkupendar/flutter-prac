import 'package:flutter/material.dart';

import 'ChatScreen.dart';
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Chat')),
      ),
      body:ChatScreen(),


    );
  }

}