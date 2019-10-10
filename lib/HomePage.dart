import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(

        title: new Text("Flutter Firebase"),
        backgroundColor: Colors.purple,
        actions: <Widget>[

          new IconButton(icon: new Icon(Icons.search),

              onPressed: ()=> debugPrint("Search")),

          new IconButton(icon: new Icon(Icons.add),

              onPressed: ()=> debugPrint("add")),



        ],
      ),

    );
  }
}
