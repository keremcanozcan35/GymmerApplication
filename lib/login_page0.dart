import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';

class LoginPage0 extends StatefulWidget {
  static String tag = 'login-page0';

  @override
  LoginPage0State createState() {
    return new LoginPage0State();
  }
}

class LoginPage0State extends State<LoginPage0> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.blue,
      title: 'Gymmer',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
          backgroundColor: Colors.orange,
          appBar: new AppBar(
            backgroundColor: Colors.black,
            title: new Text(
              "Gymmer",
              style: new TextStyle(fontSize: 25.0, color: Colors.orange),
            ),
            actions: <Widget>[
              //TODO Implement an PopupMenuButton... (Erkin)
            ],
          ),
          body: new Material(
            //color: Colors.blue,
            child: new Container(
              color: Colors.orange,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                    child: const Text('CHEST AND TRICEPS'),
                    textColor: Colors.white,
                    color: Colors.black,
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginPage.tag);
                    },
                    padding: EdgeInsets.all(20.0),
                  ),
                  new RaisedButton(
                    child: const Text('BACK AND TRICEPS'),
                    textColor: Colors.white,
                    color: Colors.black,
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginPage.tag);
                    },
                    padding: EdgeInsets.all(20.0),
                  ),
                  new RaisedButton(
                    child: const Text('LEG AND SHOULDER'),
                    textColor: Colors.white,
                    color: Colors.black,
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginPage.tag);
                    },
                    padding: EdgeInsets.all(20.0),
                  ),
                ],
              ),
            ),
          )),
      routes: <String, WidgetBuilder>{
        '/Loginpage': (BuildContext context) => new LoginPage(),
      },
    );
  }
}
