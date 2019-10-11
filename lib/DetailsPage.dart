import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
        
        title: new Text("Details"),
        backgroundColor: Colors.purple,

      ),


    );
  }
}
