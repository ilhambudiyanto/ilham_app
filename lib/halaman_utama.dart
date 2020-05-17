import 'package:flutter/material.dart';
import 'package:ilhamapp/halaman_get.dart';
import 'package:ilhamapp/halaman_post.dart';

class halaman extends StatefulWidget {
  @override
  _halamanState createState() => _halamanState();
}

class _halamanState extends State<halaman> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Aplikasi Data API'),),

        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text(' GET '),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return halamanget();
                  }));
                },
              ),
              RaisedButton(
                child: Text(' POST '),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return halamanpost();
                  }));
                },
              ),
          ],
        ),),
      ),
    );
  }
}
