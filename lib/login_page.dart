import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page2.dart';
import 'login_page3.dart';
import 'login_page4.dart';


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
          tooltip: 'BOYUN ',
          color:Colors.black ,
          iconSize: 100.0,
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(
              builder: (context)=>
                  new LoginPage2()
            ));
            //Navigator.of(context).pushNamed(LoginPage2.tag);
          },
          ),
          const Text.rich(
            TextSpan(
                text: 'BOYUN',
                style: TextStyle(fontSize:25)
            ),
          ),
          IconButton(
            icon:Icon(Icons.directions_run),
            tooltip: 'HAreket 2',
            color: Colors.black,
            iconSize: 100.0,
            onPressed: (){
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context)=>
                  new LoginPage3()
              ));
              //Navigator.of(context).pushNamed(LoginPage2.tag);
            },
          ),
          const Text.rich(
            TextSpan(
              text: 'OMUZ',
              style: TextStyle(fontSize:25)
            ),
          ),
          IconButton(
            icon:Icon(Icons.directions_run),
            tooltip: 'HAreket 3',
            color: Colors.black,
            iconSize: 100.0,
            onPressed: (){
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context)=>
              new LoginPage4()));
             //Navigator.of(context).pushNamed(LoginPage4.tag);
            },
          ),
          const Text.rich(
            TextSpan(
              text: 'BEL',
              style: TextStyle(fontSize:25)
            ),
          ),

            ],
              ),
    ),
    );
  }
}
