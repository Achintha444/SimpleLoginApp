import 'package:flutter/material.dart';

import './BaseAppBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _temp = "HELLO WORLD!";

  void _click(String temp) {
    setState(() {
      this._temp = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: BaseAppBar(
          title: Text('App Bar Demo'),
          appBar: AppBar(),
          widgets: <Widget>[
            new IconButton(
              icon: new Icon(Icons.home),
              onPressed: () => this._click("HELLO WORLD!"),
            ),
            new IconButton(
              icon: new Icon(Icons.school),
              onPressed: () => this._click("SCHOOL IS CLICKED!"),
            )
          ],
        ),
        body: new Container(
          padding: EdgeInsets.all(32),
          child: new Center(
            child: new Text(this._temp),
          ),
        ),
      ),
    );
  }
}
