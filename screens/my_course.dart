import 'package:flutter/material.dart';
import 'package:task/tabs/ratings_tab.dart';
import 'package:video_player/video_player.dart';

import '../tabs/about_coach_tab.dart';
import '../tabs/overview_tab.dart';
import '../tabs/rating_tab.dart';

class MyCourseScreen extends StatelessWidget {
  final VideoPlayerController _controller = VideoPlayerController.asset(
    "assets/videos/ved.mp4",
  );

  MyCourseScreen({super.key}) {
    _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ماهو الفرق بين UI UX',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child:
                        _controller.value.isInitialized
                            ? AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            )
                            : CircularProgressIndicator(),
                  ),
                  SizedBox(height: 20),
                  TabBar(
                    tabs: [
                      Tab(text: "نظرة عامة"),
                      Tab(text: "الواجبات"),
                      Tab(text: "حول المدرب"),
                      Tab(text: "التقيمات"),
                    ],
                  ),

                  SizedBox(
                    height: screenHeight * 0.85,
                    child: TabBarView(
                      children: [
                        overviewTab(),
                        aboutCoachTab(),
                        aboutCoachTab(),
                        ratingTab(),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: double.infinity,
                      height: screenHeight * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'اقسام الدورة',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(height: 30),
                              SizedBox(
                                width: double.infinity,
                                height: screenHeight * 0.5,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder:
                                      (context, index) => Padding(
                                        padding: const EdgeInsets.only(
                                          top: 20,
                                          left: 20,
                                          right: 20,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'ماذا تتعلم في الدورة؟',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              '1:32',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ),
                                  separatorBuilder:
                                      (context, index) => SizedBox(),
                                  itemCount: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
