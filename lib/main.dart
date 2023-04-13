import 'package:flutter/material.dart';

Widget user() {
  return Container(
    margin: EdgeInsets.all(20),
    height: 100,
    child: Row(children: [
      CircleAvatar(
        radius: 50,
        backgroundColor: Colors.blueAccent,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('data'),
          Text('data'),
          Text('data'),
        ],
      )
    ]),
  );
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        child: user(),
      ),
    ),
  ));
}
