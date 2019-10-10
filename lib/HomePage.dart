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


      drawer: new Drawer(

        child: new ListView(

          children: <Widget>[

            new UserAccountsDrawerHeader(
                accountName: new Text("Jules Frantz Stephane Loubeau"),
                accountEmail: new Text("hey@jfsl.me"),
              decoration: new BoxDecoration(
                color: Colors.purple

              ),

            ), 
            
            new ListTile(
              title: new Text("Home"),
              leading: new Icon(Icons.add, color: Colors.purple),
              trailing: new Icon(Icons.search, color: Colors.purple),
              
            ),

            new ListTile(
              title: new Text("Home"),
              leading: new Icon(Icons.add, color: Colors.purple),
              trailing: new Icon(Icons.search, color: Colors.purple),

            ),

            new ListTile(
              title: new Text("Home"),
              leading: new Icon(Icons.add, color: Colors.purple),
              trailing: new Icon(Icons.search, color: Colors.purple),

            ),

            new ListTile(
              title: new Text("Home"),
              leading: new Icon(Icons.add, color: Colors.purple),
              trailing: new Icon(Icons.search, color: Colors.purple),

            ),

            new Divider(
              height: 10.0,
              color: Colors.purple,
            ),

            new ListTile(
              title: new Text("Close"),
              leading: new Icon(Icons.add, color: Colors.purple),
              trailing: new Icon(Icons.close, color: Colors.purple),
              onTap: (){

                Navigator.of(context).pop(); 

              },

            )


          ],
        ),
      ),

    );
  }
}
