import 'package:flutter/material.dart';


class WeatherScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Weather App',style: TextStyle(fontWeight: FontWeight.w500),),
        centerTitle: true,
        actions: [
          
          IconButton(onPressed: (){}, icon: const Icon(Icons.refresh))
        ],
      ),

      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          SizedBox(
             width: double.infinity,
             child: Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(16)
               ),
               child: Padding(
                 padding:  EdgeInsets.all(16.0),
                 child: Column(
                   children: [
                     Text("300 °F",style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 32),

                     ),

                     SizedBox(height: 16,),
                     Icon(Icons.cloud,
                     size: 70,),
                     SizedBox(height: 16,),
                     Text("Rain",style: TextStyle(fontSize: 20),)

                   ],
                 ),
               ),
             ),
           ),
            SizedBox(height: 20,),
             Text("Weather forecast",
               style: TextStyle(fontWeight: FontWeight.bold,
                   fontSize: 24),),
            Row(
              children: [
                SizedBox(width: 100,
                  child: Card(
                   child: Column(
                     children: [
                       Text('03:00',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                       SizedBox(height: 8,),
                       Icon(Icons.cloud,size: 32,),
                       SizedBox(height: 8,),
                       Text("320")
                       
                     ],
                   )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
  
}