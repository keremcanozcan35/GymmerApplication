// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'main.dart';
import 'login_page.dart';
import 'login_page2.dart';


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

              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Container(
                  padding: const EdgeInsets.only(top:40),

                  //padding: const EdgeInsets.only(left: 150),
                  child: Text(
                    'Boyun Hareketi 1',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                Text(
                  '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),

                Text(
                  '10 Tekrar 2 Set',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
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


      padding: const EdgeInsets.only(top:75),

      color:Colors.orange,
      child: Text(
        '''
        
        Omuz ağrısı ve omuz sorunları, fizik tedavi ve rehabilitasyon kliniklerine sık başvuru nedenlerinden biridir. Omuzda tendon sıkışması ve ödemi, tendon zedelenmesi veya yırtılması (rotator manşet sorunları), bursit, kireçlenme, omuzda tutulma, donuk omuz (adezif kapsülit) gibi sorunların tedavisinde omuz egzersiz programı önemli yer tutar.
        
        Bu hareketi şekilde görüldüğü gibi ellerinizi alnınıza koyup 5 saniye boyunca ittirin ve bunu 2 set boyunca tekrarlayın.

        ''',
        softWrap: true,
        textAlign: TextAlign.center,
      ),
    );

    return MaterialApp(
      color:Colors.orange,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Boyun Hareketi 1'),
        ),
        backgroundColor:Colors.orange,
        body: ListView(
          children: [
            Image.asset(
              '/Users/keremcanozcan/Desktop/hareket1.png',
              width: 150,
              height: 270,
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

