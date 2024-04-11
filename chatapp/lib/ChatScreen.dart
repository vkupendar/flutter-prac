import 'package:flutter/material.dart';
class ChatScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ChatScreenState();



}
 class ChatScreenState extends State<ChatScreen>{
  final _textController=TextEditingController();
  void _handleSubmitted(String text){
  _textController.clear();
  }

  Widget _textComposerWidget(){
    return IconTheme(
      data: IconThemeData(
        color:Colors.green
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children:<Widget> [
            Flexible(child: TextField(
              decoration: InputDecoration.collapsed(hintText: "send a message"),
              controller: _textController,
              onSubmitted: _handleSubmitted,
            ),

            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: ( )=>_handleSubmitted(_textController.text),
              ),
            )

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _textComposerWidget();
    }
  
 }