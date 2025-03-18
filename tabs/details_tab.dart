import 'package:flutter/material.dart';

import '../components/container_of_details.dart';

class DetailsTab extends StatelessWidget {
  const DetailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => containerOfDetails(screenWidth,screenHeight),
      separatorBuilder: (context, index) => SizedBox(height: 10),
      itemCount: 10,
    );
  }
}
