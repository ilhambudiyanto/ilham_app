import 'package:flutter/material.dart';
import 'package:ilhamapp/postmodel.dart';

class halamanpost extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<halamanpost> {
  PostResult postResult;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Aplikasi Data API"),),

        body: Center (child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text((postResult != null)
                ? postResult.name +
                " | " +
                postResult.job
                :"Tidak Ada Data"),

            RaisedButton(onPressed: () {
              PostResult.connectToAPI ("Ilham Budiyanto", "mahasiswa").then((value){
                postResult = value;
                setState(() {

                });
              });
            },
              child: Text("POST DATA"),
            ),

            Text("Ilham Budiyanto")

          ],
        ),
        ),
      ),
    );
  }
}