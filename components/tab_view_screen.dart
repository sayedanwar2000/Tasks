import 'package:flutter/material.dart';

import 'crad_of_courses.dart';

Widget tabBarView(screenWidth,screenHeight,img)=>Padding(
  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
  child: ListView.separated(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) {
      return SizedBox(
        width: double.infinity,
        child: cardOfCourses(screenHeight,img),
      );
    },
    separatorBuilder: (context, index) => SizedBox(height: 40),
    itemCount: 10,
  ),
);