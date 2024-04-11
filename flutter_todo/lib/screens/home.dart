import 'package:flutter/material.dart';
import 'package:flutter_todo/widgets/ToDoItem.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(


        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Icon(Icons.menu),
            CircleAvatar(),

          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15
        ),
        child: Column(
          children: [
            searchBox(),
            ListView(
              children: [
                // Container(
                //   margin: EdgeInsets.only(
                //     top: 50,
                //     bottom: 20
                //   ),
                //   child: Text(
                //     "All ToDocs",
                //     style: TextStyle(
                //       fontSize: 30,
                //       fontWeight: FontWeight.w500
                //     ),
                //   ),
                // ),
                Text("ToDo docs",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                ToDoItem(),

              ],
            ),

          ],
        ),
      ),
    );
  }
  Widget searchBox(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15 ),
      child: Container(
        decoration:BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              border: InputBorder.none,
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey),
              prefixIconConstraints: BoxConstraints(
                maxHeight: 20,
                maxWidth: 25,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
                size: 20,
              )

          ),
        ),
      ),
    );
  }

}