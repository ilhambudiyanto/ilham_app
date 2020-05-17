import 'package:flutter/material.dart';
import 'package:ilhamapp/usermodel.dart';
import 'dart:ui';


class halamanget extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<halamanget> {
  User user = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Aplikasi Data API"),),

        body: Center (child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text((user != null)
                ? user.id + " | " + user.name
                :"Tidak Ada Data", style: TextStyle(fontSize: 25,
              fontFeatures: [FontFeature.enable('frac'), FontFeature.enable('smcp'), ], ),),

            RaisedButton(onPressed: () {
              User.connectToAPI("5ec07f385a13ef001708ddac").then((value){
                user = value;
                setState(() {

                });
              });
            },
              child: Text("GET DATA"),
            ),



            Text("Ilham Budiyanto")

          ],
        ),
        ),
      ),
    );
  }
}