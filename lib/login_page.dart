import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page0.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  // This widget is the root of your application.
  @override
  LoginPageState createState() {
    return new LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  // static String get tag => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        body: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
          IconButton(
          icon:Icon(Icons.directions_run),
          tooltip: 'hareket 1 ',
          color:Colors.black ,
          iconSize: 75.0,
          onPressed: (){
            Navigator.of(context).pushNamed(HomePageState.tag);
          },
          ),
          const Text.rich(
            TextSpan(
                text: 'hareket1',
                style: TextStyle(fontSize:25)
            ),
          ),
          IconButton(
            icon:Icon(Icons.directions_run),
            tooltip: 'HAreket 2',
            color: Colors.black,
            iconSize: 75.0,
            onPressed: (){
              Navigator.of(context).pushNamed(LoginPage.tag);
            },
          )
          const Text.rich(
            TextSpan(
              text: 'hareket2',
              style: TextStyle(fontSize:25)
            ),
          ),
          IconButton(
            icon:Icon(Icons.directions_run),
            tooltip: 'HAreket 3',
            color: Colors.black,
            iconSize: 75.0,
            onPressed: (){
              Navigator.of(context).pushNamed(LoginPage.tag);
            },
          )
          const Text.rich(
            TextSpan(
              text: 'hareket3',
              style: TextStyle(fontSize:25)
            ),
          ),
          IconButton(
            icon:Icon(Icons.directions_run),
            tooltip: 'HAreket 4',
            color: Colors.black,
            iconSize: 75.0,
            onPressed: (){
             Navigator.of(context).pushNamed(LoginPage.tag);
            },
          )
          const Text.rich(
            TextSpan(
              text: 'hareket4',
              style: TextStyle(fontSize:25)
            ),
          ),
            ],
              ),
    ),
    );
  }
}
