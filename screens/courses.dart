import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

import '../components/tab_view_screen.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "الدورات المقدمة حديثا",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 5),

                SizedBox(
                  width: screenWidth * 0.7,
                  child: Text(
                    "لوريم إيبسوم دولور سيت أميت، إيليت. ,إن عدم اتباع نظام غذائي جيد للسيرة الذاتية أمر سهل",
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ),
                ),
                SizedBox(height: 30),
                ButtonsTabBar(
                  tabs: [
                    Tab(text: "الدورات الحديثة"),
                    Tab(text: "الدورات المميزة"),
                    Tab(text: "الاكثر انتشار"),
                  ],
                ),
                SizedBox(
                  height: screenHeight,
                  child: TabBarView(
                    children: [
                      tabBarView(screenWidth,screenHeight,"assets/images/download.png"),
                      tabBarView(screenWidth,screenHeight,"assets/images/2.png"),
                      tabBarView(screenWidth,screenHeight,"assets/images/3.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
