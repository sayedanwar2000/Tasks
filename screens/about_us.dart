import 'package:flutter/material.dart';

import '../components/content_card.dart';
import '../components/opinion_card.dart';
import '../components/statistics_card.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder:
                      (context, index) => statisticsCard(),
                  separatorBuilder: (context, index) => SizedBox(height: 20),
                  itemCount: 2,
                ),
                Image.asset('assets/images/pic.png'),
                Text(
                  'نبدة عن سبيس لينك',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: 'في ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: "سبيس لينك ",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      TextSpan(
                        text: 'يمكنك ان تتعلم من ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: "اي مكان ",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      TextSpan(
                        text: 'من الوطن العربي ',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
                SizedBox(height: 5),
                Text(
                  "انها سلسلة من الكلمات اللاتينية "
                  "التي ، عند وضعها في موضعها ، لا"
                  " تشكل جملًا بمعنى كامل ، ولكنها"
                  " تعطي الحياة لنص انها سلسلة"
                  " من الكلمات اللاتينية التي ،"
                  " عند وضعها في موضعها ،"
                  " لا تشكل جملًا بمعنى كامل ،"
                  " ولكنها تعطي الحياة لنص",
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'مدربون خبراء',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 105,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'التعلم عن بعد',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 105,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'مناهج جديدة',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 105,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'تواصل دائم',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "لماذا تحتار سبيس لينك اكاديمي",
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "ماهي افضل الاشياء في سبيس لينك اكاديمي؟",
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder:
                      (context, index) => contentCard(screenHeight),
                  separatorBuilder: (context, index) => SizedBox(height: 20),
                  itemCount: 1,
                ),
                SizedBox(height: 20),
                Text(
                  'اراء الطلاب',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: 'ماذا ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: "يقول عننا ",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      TextSpan(
                        text: 'طلابنا السابق لهم تجربة ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: "سبيس لينك؟",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                    ],
                  ),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
                Text(
                  'لوريم إيبسوم دولور الجلوس أميت '
                      'كونسيكتور أديبيسينج , إيليت سيد '
                      'إيوسمود مؤقت حادث العمل المؤلم'
                      ' ,ماجنا أليكوينيم مينيم ه.',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                MaterialButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: (){},
                  child: Text('عرض الكل'),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: screenHeight * 0.4,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>
                    SizedBox(
                      width: 300,
                      child: opinionCard(),
                    ),
                    separatorBuilder: (context,index)=>SizedBox(width: 10,),
                    itemCount: 5,
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
