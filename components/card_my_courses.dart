import 'package:flutter/material.dart';

Widget cardMyCourses({
  screenHeight,
  screenWidth,
  required imgPath,
  double progress = 0.9,
}) => Card(
  elevation: 8,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  child: Padding(
    padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: screenHeight * 0.17,
          child: Image.asset(imgPath, fit: BoxFit.cover, gaplessPlayback: true),
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
        Center(
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                height: 20,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                height: 20,
                width: screenWidth * progress,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Center(
                child: Text(
                  "${(progress * 100).toInt()}%",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(
          "دورة تعلم تصميم تجربة المستخدم",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        SizedBox(height: 5),
        Text("للتطبيقات والمواقع", style: TextStyle(fontSize: 22)),
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
      ],
    ),
  ),
);

Widget row(icon, String name, String num) => Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Icon(icon),
    SizedBox(width: 5),
    Text(num, style: TextStyle(fontSize: 19)),

    SizedBox(width: 5),
    Text(name, style: TextStyle(fontSize: 19)),
  ],
);
