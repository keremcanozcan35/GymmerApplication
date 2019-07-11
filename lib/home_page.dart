// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'main.dart';
import 'login_page.dart';

class HomePageState extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    '                        Hareket 1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Text(
                  '             2 SETS of 10 REPEATS',
                  style: TextStyle(
                    
                    color: Colors.grey[500],
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.satellite,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new InkWell(
            child: new Text("www.youtube.com"),
            onTap: () => {},
          ),
          //buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.youtube_searched_for, 'WATCH ON YOUTUBE'),
          //buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
        The bench press is an upper body strength training exercise that consists of pressing a weight upwards from a supine position. The exercise works the pectoralis major as well as supporting chest, arm, and shoulder muscles such as the anterior deltoids, serratus anterior, coracobrachialis, scapulae fixers, trapezii, and the triceps. A barbell is generally used to hold the weight, but a pair of dumbbells can also be used.
        ''',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text('hareket1'),
        ),
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
