import 'package:flutter/material.dart';

import './BaseAppBar.dart';
import './Settings.dart';
import './Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _title = "PLEASE LOGIN!";
  bool auth = false;

  Widget _screen;
  Settings _settings;
  Login _login;

  _MyAppState() {
    this._settings = new Settings();
    this._login = new Login(this._clickLogin,);
    this._screen = this._login;
  }

  void setAuth() {
    setState(() {
      if (this.auth == false) {
        this._screen = this._login;
      } else {
        this._screen = this._settings;
      }
    });
  }

  void _clickLogin() {
    setState(() {
      if (Login.username == "Achintha" && Login.password == "password") {
        this.auth = true;
        this.setAuth();
      } else {
        print('Wrong Username or Password!');
        //print (this.userName);

      }
    });
  }

  void _clickHome() {
    setState(() {
      this.auth = !this.auth;
      this.setAuth();
    });
  }

  void _clickLogout() {
    setState(() {
     this.auth = false;
     this.setAuth(); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: BaseAppBar(
          title: Text(this._title),
          appBar: AppBar(),
          widgets: <Widget>[
            new IconButton(
              icon: new Icon(Icons.home),
              onPressed: () => this._clickHome(),
            ),
            new IconButton(
              icon: new Icon(Icons.exit_to_app),
              onPressed: !(this.auth) ? null : () => this._clickLogout(),
            )
          ],
        ),
        body: new Container(
          padding: EdgeInsets.all(20),
          child: new Center(
            child: this._screen,
          ),
        ),
      ),
    );
  }
}
