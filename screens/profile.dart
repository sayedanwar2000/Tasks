import 'package:flutter/material.dart';
import 'package:task/tabs/control_panel_tab.dart';
import 'package:task/tabs/my_appointments_tab.dart';
import 'package:task/tabs/my_courses_tab.dart';

import '../components/tab_view_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(length: 5, child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'لوحة التحكم',),
              Tab(text: 'دوراتى',),
              Tab(text: 'مواعيدى',),
              Tab(text: 'المفضلة',),
              Tab(text: 'البيانات الشخصيه',),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: screenHeight,
            child: TabBarView(
                children: [
                  controlPanelTab(screenWidth, screenHeight),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: myCoursesTab(screenHeight,screenWidth),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: myAppointmentsTab(),
                  ),
                  tabBarView(screenWidth, screenHeight,'assets/images/download.png'),
                  controlPanelTab(screenWidth, screenHeight),

                ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}
