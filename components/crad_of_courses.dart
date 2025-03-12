import 'package:flutter/material.dart';

Widget cardOfCourses(screenHeight, String imgPath) =>
    Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(
            width: double.infinity,
            height: screenHeight * 0.17,
            child: Image.asset(
              imgPath,
              fit: BoxFit.cover,
              gaplessPlayback: true,
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: 80,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'التطوير',
                style: TextStyle(color: Colors.green),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "دورة تعلم تصميم تجربة المستخدم",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "للتطبيقات والمواقع",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              row(Icons.videocam, 'فيديو', '50'),
              row(Icons.person, 'طالب', '500'),
              row(Icons.visibility, 'الاف', '50'),

            ],
          ),
          SizedBox(height: 20),
      Divider(),
      SizedBox(height: 15),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "500",
            style: TextStyle(
              fontSize: 19,
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 3),
          Text(
            "جنيها",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          MaterialButton(
            onPressed: () {},
            color: Colors.blue,
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'التسجيل الان',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      ],
    ),)
,
);

Widget row(icon, String name, String num,) =>
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon),
        SizedBox(width: 5),
        Text(
            num,
            style: TextStyle(fontSize: 19)
        ),

        SizedBox(width: 5),
        Text(
          name,
          style: TextStyle(fontSize: 19),
        ),
      ],
    );