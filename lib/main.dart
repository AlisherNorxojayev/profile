import 'package:flutter/material.dart';

Widget user({
  required String img,
  required String fullname,
  required String job,
}) {
  return Container(
    margin: EdgeInsets.all(20),
    height: 100,
    child: Row(children: [
      CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage(img),
        backgroundColor: Colors.blueAccent,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              fullname,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              job,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            const Text(
              'change profile',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      )
    ]),
  );
}

Widget strong(List skills) {
  return Column(children: [
    const Text('Strong Side:'),
    Wrap(
        children: skills.map((index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(8),
          child: Text(index),
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
    }).toList())
  ]);
}

void main() {
  List skills = [
    'Education',
    'Communication',
    'Teamwork',
    'Leadership',
    'Problem Solving',
    'Creativity',
    'Time Management',
    'Decision Making',
    
  ];
  runApp(MaterialApp(
    home: Scaffold(
      body: Column(
        children: [
          user(
            img: 'img/avatar_f.png',
            fullname: 'Azim Azim',
            job: 'Student',
          ),
          strong(skills),
        ],
      ),
    ),
  ));
}
