import 'package:flutter/material.dart';
import 'login_page.dart';

class WelcomePage extends StatefulWidget{
  static String tag = 'welcomepage';

  @override
  WelcomePageState createState(){
    return new WelcomePageState();
  }

}


class WelcomePageState extends State<WelcomePage> {
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
              icon:Icon(Icons.accessibility),
              tooltip: 'Hadi Gymmer a başlayalım! ',
              color:Colors.black ,
              iconSize: 150.0,
              onPressed: (){
                Navigator.of(context).pushNamed(LoginPage.tag);
              },
            ),
            const Text.rich(
              TextSpan(
                text: 'Hadi Gymmer ile başlayalım!',
                style: TextStyle(fontSize: 25)
             ),
            ),
          ],
        ),
      ),
    );
  }
}
