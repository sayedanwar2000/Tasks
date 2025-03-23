import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:task/tabs/ratings_tab.dart';

Widget ratingTab() => SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ratingsTab(),
      SizedBox(
        height: 10,
      ),
      Text(
        'اترك تقييمك',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      RatingBar.builder(
        initialRating: 3,
        itemCount: 5,
        minRating: 1,
        maxRating: 5,
        allowHalfRating: true,
        itemSize: 30,
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
      SizedBox(height: 20,),
      SizedBox(
        width: 150,
        child: MaterialButton(
          color: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          onPressed: (){},
          child: Text(
            'قيم الان',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
      ),
    ],
  ),
);