import 'package:flutter/material.dart';

import '../components/container_of_details.dart';

Widget detailsTab (screenWidth, screenHeight)=>ListView.separated(
shrinkWrap: true,
itemBuilder: (context, index) => containerOfDetails(screenWidth,screenHeight),
separatorBuilder: (context, index) => SizedBox(height: 10),
itemCount: 10,
);
