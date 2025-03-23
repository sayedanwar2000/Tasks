import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

List<Map<String, dynamic>> ratings = [
  {"label": "ممتاز", "percentage": 1.0},
  {"label": "جيد جدًا", "percentage": 0.3},
  {"label": "متوسط", "percentage": 0.1},
  {"label": "ضعيف", "percentage": 0.05},
  {"label": "رهيب", "percentage": 0.0},
];

Widget ratingsTab ()=> SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'التقييمات',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      SizedBox(height: 10),
      SizedBox(
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '4.8',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.blue,
                      ),
                    ),
                    Text('110 تعليق', style: TextStyle(fontSize: 20)),
                    SizedBox(height: 10),
                    RatingBar(
                      initialRating: 4.5,
                      itemCount: 5,
                      minRating: 1,
                      maxRating: 5,
                      allowHalfRating: true,
                      itemSize: 25,
                      ignoreGestures: true,
                      onRatingUpdate: (rating) {},
                      ratingWidget: RatingWidget(
                        full: Icon(Icons.star, color: Colors.orange),
                        half: Icon(Icons.star_half, color: Colors.orange),
                        empty: Icon(Icons.star_border, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 5,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text(
                          ratings[0]["label"],
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 110,
                          child: LinearProgressIndicator(
                            value: ratings[0]["percentage"],
                            minHeight: 3,
                            backgroundColor: Colors.grey,
                            valueColor: AlwaysStoppedAnimation(Colors.blue),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '${(ratings[0]["percentage"] * 100).toInt()}%',

                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          ratings[1]["label"],
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 110,
                          child: LinearProgressIndicator(
                            value: ratings[1]["percentage"],
                            minHeight: 3,
                            backgroundColor: Colors.grey,
                            valueColor: AlwaysStoppedAnimation(Colors.blue),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '${(ratings[1]["percentage"] * 100).toInt()}%',

                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          ratings[2]["label"],
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 110,
                          child: LinearProgressIndicator(
                            value: ratings[2]["percentage"],
                            minHeight: 3,
                            backgroundColor: Colors.grey,
                            valueColor: AlwaysStoppedAnimation(Colors.blue),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '${(ratings[2]["percentage"] * 100).toInt()}%',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          ratings[3]["label"],
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 110,
                          child: LinearProgressIndicator(
                            value: ratings[3]["percentage"],
                            minHeight: 3,
                            backgroundColor: Colors.grey,
                            valueColor: AlwaysStoppedAnimation(Colors.blue),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '${(ratings[3]["percentage"] * 100).toInt()}%',

                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          ratings[4]["label"],
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 110,
                          child: LinearProgressIndicator(
                            value: ratings[4]["percentage"],
                            minHeight: 3,
                            backgroundColor: Colors.grey,
                            valueColor: AlwaysStoppedAnimation(Colors.blue),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '${(ratings[4]["percentage"] * 100).toInt()}%',

                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(height: 10),
      SizedBox(
        width: double.infinity,
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder:
              (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/3.jpg'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'أحمد البسطويسي',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 5),
                      RatingBar(
                        initialRating: 4.5,
                        itemCount: 5,
                        minRating: 1,
                        maxRating: 5,
                        allowHalfRating: true,
                        itemSize: 25,
                        ignoreGestures: true,
                        onRatingUpdate: (rating) {},
                        ratingWidget: RatingWidget(
                          full: Icon(Icons.star, color: Colors.orange),
                          half: Icon(Icons.star_half, color: Colors.orange),
                          empty: Icon(
                            Icons.star_border,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text(
                'دورة ممتازة، أحببتها 😍',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 20),
              Text(
                'إنها حقيقة مثبتة منذ زمن طويل أن المحتوى المقر'
                    'وء للصفحة سوف يشتت انتباه القارئ عند النظر إلى تخطيطها. ,ا'
                    'لمغزى من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع ط'
                    'بيعي للحروف إلى حد ما، على عكس استخدام لوريم إيبسوم'
                    ',المحتوى هنا، المحتوى هنا، مما يجعلها تبدو وكأنها لغة إنجليزية قابلة'
                    ' للقراءة. ,العديد من حزم النشر المكتبي ومحرري صفحات الويب يستخدم'
                    'ون الآن لوريم إيبسوم كنص نموذجي افتراضي، والبحث عن '
                    'سيكشف عن العديد من مواقع الويب التي لا '
                    'تزال في مهدها. ,تطورت إصدارات مختلفة على مر السنين، أحيانًا '
                    'عن طريق الصدفة، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه)'
                    '.',
                style: TextStyle(fontSize: 20),
                softWrap: true,
              ),
              SizedBox(height: 20),
              Text(
                'مراجعة بواسطة ممتاز تم نشره في 21 يونيو 2023',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ],
          ),
          separatorBuilder: (context, index) => Divider(height: 30),
          itemCount: 2,
        ),
      ),
    ],
  ),
);
