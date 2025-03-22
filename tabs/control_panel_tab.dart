import 'package:flutter/material.dart';

import '../components/container_of_details.dart';
import 'my_appointments_tab.dart';
import 'my_courses_tab.dart';

Widget controlPanelTab(screenWidth,screenHeight) => Padding(
  padding: const EdgeInsets.all(20.0),
  child: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context,index)=>containerOfDetails(screenWidth,screenHeight),
          separatorBuilder: (context,index)=>SizedBox(height: 10,),
          itemCount: 4,
        ),
        SizedBox(height: 20,),
        myAppointmentsTab(),
        Text(
          'دوراتي التدريبية المشترك بها',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        SizedBox(height: 15,),
        myCoursesTab(screenHeight,screenWidth),
      ],
    ),
  ),
);
