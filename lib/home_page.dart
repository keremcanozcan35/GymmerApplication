// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'main.dart';
import 'login_page.dart';


/*class HomePage extends StatefulWidget{
  static String tag = 'home-page';

  @override
  HomePageState createState(){
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}*/








class HomePageState extends StatelessWidget {

  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      color:Colors.orange,
      //padding: const EdgeInsets.all(32.0),
      child: Row(

        children: [

          Expanded(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(

                  //padding: const EdgeInsets.only(left: 150),
                  child: Text(
                    'dsdfsdfafsd',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0,
                    ),
                  ),
                ),
                Text(
                  '             2 SETS of 10 REPEATS',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                  ),
                ),

                Text(
                  '             2 SETS of 10 REPEATS',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        //mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            //margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colors.orange,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      color:Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          /*new InkWell(
            child: new Text("www.youtube.com"),
            onTap: () => {},
          ),*/
          //buildButtonColumn(Icons.call, 'CALL'),
          //buildButtonColumn(Icons.youtube_searched_for, 'WATCH ON YOUTUBE'),
          //buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(

      padding: const EdgeInsets.all(120.0),
      color:Colors.orange,
      child: Text(
        '''
        Bu hareket boyun hareketlerini güçlendirecek.
        ''',
        //softWrap: true,
        textAlign: TextAlign.center,
      ),
    );

    return MaterialApp(
      color:Colors.orange,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('hareket1'),
        ),
        backgroundColor:Colors.orange,
        body: ListView(
          children: [
            Image.asset(
              '/Users/keremcanozcan/Desktop/hareket1.png',
              width: 241,
              height: 137,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

