import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: (){},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),

        ),
        tileColor: Colors.redAccent,

      ),
    );
  }

}