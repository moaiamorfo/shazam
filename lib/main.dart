// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shazam',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 53, 121, 246),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(children: [
              Icon(Icons.library_music),
              Text("Library",
                  style: TextStyle(color: Colors.white, fontSize: 12.0))
            ]),
            Icon(Icons.more_horiz),
            Column(children: [
              Icon(Icons.analytics),
              Text("Charts",
                  style: TextStyle(color: Colors.white, fontSize: 12.0))
            ]),
          ]),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Auto Shazam is on",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0),
            ),
            SizedBox(
              height: 75.0,
            ),
            Container(
              width: 200.0,
              child: Image(image: AssetImage("asset/img/logoshazam.png")),
            ),
            SizedBox(
              height: 75.0,
            ),
            Container(
              width: 50.0,
              height: 50.0,
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 25.0,
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 138, 186, 248),
                shape: BoxShape.circle,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
