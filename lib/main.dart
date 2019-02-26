import 'package:flutter/material.dart';

void main(){
  runApp(new FriendlychatApp());
}

class FriendlychatApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "FriendlyChatApp",
      home: new ChatScreen(),
    );
  }

}

class ChatScreen extends StatefulWidget {
  @override
  State createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen>{
  final TextEditingController _textController = new  TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(title: new Text("FriendlyChat")),
      body: _buildTextComposer(), //new
    );
  }

  Widget _buildTextComposer(){
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new Row(
      children: <Widget>[
        new Flexible(
          child: new TextField(
          controller: _textController,
          onSubmitted: _handleSubmitted,
          decoration: new InputDecoration.collapsed(
              hintText: "Send a Message"),
        ),
        ),
        new Container(
          margin: new EdgeInsets.symmetric(horizontal: 4.0),
          child: new IconButton(
              icon: new Icon(Icons.send),
              onPressed: () => _handleSubmitted(_textController.text)),
        ),
      ],
    ),
    );
  }
}
