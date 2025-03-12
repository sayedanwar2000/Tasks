import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget containerOfSection()=> Container(
  width: double.infinity,
  padding: const EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Colors.brown,
    borderRadius: BorderRadius.circular(15),
  ),
  child: Row(
    textDirection: TextDirection.rtl,
    children: [
      CircleAvatar(
        radius: 40,
        // backgroundColor: Colors.black,
        backgroundImage: AssetImage("assets/images/download.png"), // استبدلها بمسار صورتك
      ),
      SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          Text(
            "التطوير",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text("50 دورة", style: TextStyle(fontSize: 14)),
        ],
      ),
    ],
  ),
);