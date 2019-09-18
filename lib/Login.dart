import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final Function onSubmit;
  static final TextEditingController _userName = new TextEditingController();
  static final TextEditingController _password = new TextEditingController();

  const Login(this.onSubmit);

  static get username => _userName.text;
  static get password => _password.text;
  get temp => this.onSubmit.toString();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            padding: EdgeInsets.only(bottom: 10),
            child: new TextField(
              controller: _userName,
              decoration: new InputDecoration(
                hintText: "Enter the username",
              ),
              textAlign: TextAlign.center,
            ),
          ),
          new Container(
            padding: EdgeInsets.only(bottom: 10),
            child: new TextField(
              controller: _password,
              decoration: new InputDecoration(
                hintText: "Enter the password",
              ),
              textAlign: TextAlign.center,
              obscureText: true,
            ),
          ),
          new Container(
            width: double.infinity,
            child: new RaisedButton(
              color: Colors.blueAccent,
              child: new Text(
                "SUBMIT",
                style: new TextStyle(color: Colors.white),
              ),
              onPressed: () => this.onSubmit(),
              hoverElevation: 100,
              hoverColor: Colors.black,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
            ),
          ),
        ],
      ),
    );
  }
}
