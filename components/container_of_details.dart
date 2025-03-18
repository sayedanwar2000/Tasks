import 'package:flutter/material.dart';

Widget containerOfDetails(screenWidth, screenHeight)=> Container(
  width: double.infinity,
  padding: const EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Colors.brown,
    borderRadius: BorderRadius.circular(15),
  ),
  child: Row(
    textDirection: TextDirection.rtl,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: screenWidth * 0.27,
          height: screenHeight * 0.12,
          child: Image.asset(
            'assets/images/2.jpg',
            fit: BoxFit.cover,
          ),
        ),
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