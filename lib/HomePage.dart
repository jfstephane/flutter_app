import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  StreamSubscription<QuerySnapshot>subscription;

  List<DocumentSnapshot>snapshot;

  CollectionReference collectionReference=Firestore.instance.collection("TopPosts");

  @override
  void initState() {

    subscription=collectionReference.snapshots().listen((datasnapshot){
      setState(() {

        snapshot=datasnapshot.documents;

      });

    });


    super.initState();
  }


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


      body: new ListView(

        children: <Widget>[

          new Container(

            height: 250,
            child: new ListView.builder(

                itemCount: snapshot.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){

                  return Card(
                  elevation: 10.0,
                    child: new Column(

                      children: <Widget>[

                        new ClipRRect(

                          borderRadius: new BorderRadius.circular(10.0),
                          child: new Image.network(snapshot[index].data["url"],
                          height: 180.0,
                            width: 180.0,
                            fit: BoxFit.cover,


                          ),


                        ),

                        new SizedBox( height: 10.0,),
                        new Text(snapshot[index].data["title"]),



                      ],
                    ),

                  );
                }

            ),

          )


        ],


      ),

    );
  }
}
