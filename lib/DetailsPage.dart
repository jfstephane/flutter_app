import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class DetailsPage extends StatefulWidget {

  DocumentSnapshot snapshot;
  DetailsPage({this.snapshot});


  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        
        title: new Text("Details"),
        backgroundColor: Colors.purple,

      ),

      body: new ListView(
        children: <Widget>[

          new Container(
            margin: EdgeInsets.all(10.0),
            child: new Card(
              elevation: 9.0,
              child: new Container(
                padding: EdgeInsets.all(10.0),

                child: new Row(

                  children: <Widget>[

                    new CircleAvatar(
                      child: new Text(widget.snapshot.data["Title"][0]),
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                    ),
                    new SizedBox(width: 10.0,),
                    new Text(widget.snapshot.data["title"],
                      style: TextStyle(fontSize: 21.0, color: Colors.purple),

                    )
                  ],
                ),

              ),




            ),
            
          ),

          new Container(
            margin: EdgeInsets.all(10.0),
            child: new ClipRRect(
            borderRadius: new BorderRadius.circular(10.0),
              child: new Image.network(widget.snapshot.data["url"],
              height: 200.0,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,

              ),


            ),


            

          )

        ],

      ),


    );
  }
}
