import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final title = "Horizontal ListView";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(100, (index) {
                return Container(
                  color: Color.fromRGBO(Random().nextInt(256),Random().nextInt(256) , Random().nextInt(256), 1.0),
                  width: 160,
                );
              }),
            )),
      ),
    );
  }
}
