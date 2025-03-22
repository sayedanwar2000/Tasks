import 'package:flutter/material.dart';
import 'package:task/components/card_my_courses.dart';

Widget myCoursesTab(screenHeight,screenWidth) => ListView.separated(
  shrinkWrap: true,
  itemBuilder: (context,index)=>cardMyCourses(screenWidth:screenWidth,screenHeight:screenHeight,imgPath: 'assets/images/download.png',),
  separatorBuilder: (context,index)=>SizedBox(height: 10,),
  itemCount: 2,
);
