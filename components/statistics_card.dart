import 'package:flutter/material.dart';

Widget statisticsCard()=> Card(
  elevation: 8,
  color: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Padding(
    padding: const EdgeInsets.all(30.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 40,
          // backgroundColor: Colors.black,
          backgroundImage: AssetImage(
            "assets/images/download.png",
          ),
        ),
        Text(
          '300 الف',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'الطالب المسجل',
          style: TextStyle(fontSize: 18),
        ),
      ],
    ),
  ),
);