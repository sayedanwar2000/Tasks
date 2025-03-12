import 'package:flutter/material.dart';

import '../components/container_of_section.dart';

class SectionsScreen extends StatelessWidget {
  const SectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "استكشف اقسام سبيس لينك",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 5),

            SizedBox(
              width: screenWidth * 0.7,
              child: Text(
                "انها سلسلة من الكلمات اللاتينية التى , عند وضعها فى موضعها لا تشكل جملا بمعنى كامل , ولكنها تعطى الحياة لنص",
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return containerOfSection();
                },
                separatorBuilder: (context, index) => SizedBox(height: 40),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
