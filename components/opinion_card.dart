import 'package:flutter/material.dart';

Widget opinionCard() => Card(
  elevation: 8,
  color: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset('assets/images/pic-reviews.png'),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 10,
                ),
              ],
            ),
          ),
          Spacer(),
          Image.asset('assets/images/bg-card-reviews.png'),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'لوريم إيبسوم دولور الجلوس أميت '
                  'كونسيكتور أديبيسينج , إيليت سيد '
                  'إيوسمود مؤقت حادث العمل المؤلم'
                  ' ,ماجنا أليكوينيم مينيم ه.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
              softWrap: true,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
            Text(
              'احمد البسطويسى',
              style: TextStyle(color: Colors.blueAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
              textAlign: TextAlign.start,
            ),
            Text(
              'طالب',
              style: TextStyle(color: Colors.grey, fontSize: 20),
              softWrap: true,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    ],
  ),
);