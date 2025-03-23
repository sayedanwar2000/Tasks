import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:task/components/tab_view_screen.dart';
import 'package:video_player/video_player.dart';

import '../tabs/about_coach_tab.dart';
import '../tabs/details_tab.dart';
import '../tabs/overview_tab.dart';
import '../tabs/rating_tab.dart';
import '../tabs/ratings_tab.dart';

class RegisterCourseScreen extends StatelessWidget {
  final VideoPlayerController _controller = VideoPlayerController.asset(
    "assets/videos/ved.mp4",
  );

  RegisterCourseScreen({super.key}) {
    _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
              bottom: 30,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /*Center(
                            child:
                                _controller.value.isInitialized
                                    ? AspectRatio(
                                      aspectRatio: _controller.value.aspectRatio,
                                      child: VideoPlayer(_controller),
                                    )
                                    : CircularProgressIndicator(),
                          ),*/
                          Text(
                            '1500 جنيهاً',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '1950 نيهاً',
                                style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 20,
                                  decorationColor: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 30),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('40% خصم'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: double.infinity,
                            child: MaterialButton(
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              onPressed: () {},
                              child: Text(
                                'اشتراك الان فى الدورة',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Divider(endIndent: 50),
                          SizedBox(height: 10),
                          Text(
                            'تتضمن هذه الدورات',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.videocam, size: 25),
                              SizedBox(width: 10),
                              Text(
                                '5 ساعات فيديو حسب الطلب',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                          Divider(height: 30, endIndent: 25),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.download_for_offline, size: 25),
                              SizedBox(width: 10),
                              Text(
                                '30+ موارد قابلة للتنزيل',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                          Divider(height: 30, endIndent: 25),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.hdr_auto, size: 25),
                              SizedBox(width: 10),
                              Text(
                                'اللغة العربية',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                          Divider(height: 30, endIndent: 25),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.schedule, size: 25),
                              SizedBox(width: 10),
                              Text(
                                'الوصول مدى الحياة',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                          Divider(height: 30, endIndent: 25),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.smartphone, size: 25),
                              SizedBox(width: 10),
                              Text(
                                'الوصول على الهاتف المحمول والتلفزيون',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                          Divider(height: 30, endIndent: 25),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.description, size: 25),
                              SizedBox(width: 10),
                              Text(
                                '5 مقالات',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                          Divider(height: 30, endIndent: 25),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.verified, size: 25),
                              SizedBox(width: 10),
                              Text(
                                'شهادة الإكمال',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'تعلم تصميم واجهة المستخدم/تجربة المستخدم - دورة للمبتدئين',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    softWrap: true,
                  ),
                  Text(
                    'إنها حقيقة مثبتة منذ زمن طويل أن المحتوى المقروء للصفحة سوف يلهي القارئ,عند النظر إلى تخطيطه.',
                    style: TextStyle(fontSize: 19, color: Colors.grey),
                    softWrap: true,
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'المراجعة',
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 20,
                            child: VerticalDivider(width: 20, color: Colors.grey),
                          ),
                          RatingBar.builder(
                            initialRating: 3,
                            itemCount: 5,
                            minRating: 1,
                            maxRating: 5,
                            allowHalfRating: true,
                            itemSize: 25,
                            itemBuilder: (context, index) {
                              return Icon(
                                Icons.star,
                                color:
                                    index < 3
                                        ? Colors.red
                                        : Colors
                                            .green,
                              );
                            },
                            onRatingUpdate: (rating) {},
                          ),
                        ],
                      ),
                      Divider(height: 20, endIndent: screenWidth * 0.1),
                      Row(
                        children: [
                          Text(
                            'المدة',
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 20,
                            child: VerticalDivider(width: 20, color: Colors.grey),
                          ),
                          Text(
                            '05 ساعة و 20 دقيقة',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                      Divider(height: 20, endIndent: screenWidth * 0.2),
                      Row(
                        children: [
                          Text(
                            'اللغة',
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 20,
                            child: VerticalDivider(width: 20, color: Colors.grey),
                          ),
                          Text('العربية', style: TextStyle(fontSize: 17)),
                        ],
                      ),
                      Divider(height: 20, endIndent: screenWidth * 0.3),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.favorite_border, color: Colors.white),
                      ),
                      SizedBox(width: 20,),
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.share, color: Colors.redAccent),
                            SizedBox(width: 10,),
                            Text(
                              'المشاركة',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  TabBar(
                    tabs: [
                      Tab(text: "نظرة عامة"),
                      Tab(text: "تفاصيل الدورة"),
                      Tab(text: "حول المدرب"),
                      Tab(text: "التقيمات"),
                    ],
                  ),

                  SizedBox(
                    height: screenHeight * 0.85,
                    child: TabBarView(
                      children: [
                        overviewTab(),
                        detailsTab(screenWidth, screenHeight),
                        aboutCoachTab(),
                        ratingsTab(),
                      ],
                    ),
                  ),
                  Text(
                    'دورات ذات صلة',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  tabBarView(screenWidth, screenHeight, 'assets/images/3.jpg'),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
