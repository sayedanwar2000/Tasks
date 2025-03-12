import 'package:flutter/material.dart';

Widget contentCard(screenHeight)=> Card(
  elevation: 8,
  color: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Column(
    children: [
      Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: screenHeight * 0.17,
            child: Image.asset(
              'assets/images/3.jpg',
              fit: BoxFit.cover,
              gaplessPlayback: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.125,
            ),
            child: Center(
              child: CircleAvatar(
                radius: 40,
                // backgroundColor: Colors.black,
                backgroundImage: AssetImage(
                  "assets/images/download.png",
                ), // استبدلها بمسار صورتك
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 30,
        ),
        child: Column(
          children: [
            Text(
              "مدربون خبراء",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5,),
            Text(
              "انها سلسلة من الكلمات اللاتينية التي ، عند "
                  "وضعها في موضعها ، لا تشكل جملًا بمعنى كامل "
                  "، ولكنها تعطي الحياة لنص انها سلسلة "
                  "من الكلمات اللاتينية التي ، عند وضع",
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(fontSize: 20,),
            ),
          ],
        ),
      ),
    ],
  ),
);