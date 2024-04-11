import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue

      ),
      home: HomePage(),
    );
  }


}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }

}
class _HomePage extends State<HomePage>{
  String? studentName, studentID, Branch;
  double? studentGPA;
  getStudentName(String name){
    this.studentName=name;
  }
  getStudentId(id){
    this.studentID=id;
  }
  getBranch(branch){
    this.Branch=branch;
  }
  getStudentGPA(gpa){
    this.studentGPA=double.parse(gpa);
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
    title: Text("My Flutter College"),
     ),
     body: Column(
       children: [
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: TextFormField(
             decoration: InputDecoration(
               labelText: "Name",
               fillColor: Colors.white,
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color:Colors.blue,width: 2.0),

               )
             ),
             onChanged: (String name){
              getStudentName(name);
             },
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: TextFormField(
             decoration: InputDecoration(
                 labelText: "Student ID",
                 fillColor: Colors.white,
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color:Colors.blue,width: 2.0),

                 )
             ),
             onChanged: (String id){
                      getStudentId(id);
             },
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: TextFormField(
             decoration: InputDecoration(
                 labelText: "Branch",
                 fillColor: Colors.white,
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color:Colors.blue,width: 2.0),

                 )
             ),
             onChanged: (String branch) {
                getBranch(branch);
                },
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(16.0),
           child: TextFormField(
             decoration: InputDecoration(
                 labelText: "GPA",
                 fillColor: Colors.white,
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color:Colors.blue,width: 2.0),

                 )
             ),
             onChanged: (String gpa){
                getStudentGPA(gpa);
             },
           ),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             ElevatedButton(onPressed: (){
               createData(),
             }, child: Text('create'),
               style: ElevatedButton.styleFrom(
                 primary: Colors.lightGreen,
               ),
             ),
             ElevatedButton(onPressed: (){
               readData(),
             }, child: Text('Read'),
             ),
             ElevatedButton(onPressed: (){
              updateData(),
             }, child: Text('Update'),
    style: ElevatedButton.styleFrom(
    primary: Colors.amber,)
             ),
             ElevatedButton(onPressed: (){
               deleteData(),
             }, child: Text('Delete'),
    style: ElevatedButton.styleFrom(
    primary: Colors.red,)
             ),
           ],
         )

       ],
     ),
   );
  }

}