import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      MaterialButton(
        onPressed: () {},
        color: Colors.white,
        shape: CircleBorder(),
        // padding: EdgeInsets.all(1),
        child: Icon(Icons.share, size: 30, color: Colors.grey),
      ),
      MaterialButton(
        onPressed: () {},
        color: Colors.white,
        shape: CircleBorder(),
        // padding: EdgeInsets.all(1),
        child: Icon(FontAwesomeIcons.facebookF, size: 25, color: Colors.grey),
      ),
      MaterialButton(
        onPressed: () {},
        color: Colors.white,
        shape: CircleBorder(),
        // padding: EdgeInsets.all(1),
        child: Icon(FontAwesomeIcons.twitter, size: 25, color: Colors.grey),
      ),
      MaterialButton(
        onPressed: () {},
        color: Colors.white,
        shape: CircleBorder(),
        // padding: EdgeInsets.all(1),
        child: Icon(FontAwesomeIcons.linkedin, size: 30, color: Colors.grey),
      ),
      MaterialButton(
        onPressed: () {},
        color: Colors.white,
        shape: CircleBorder(),
        // padding: EdgeInsets.all(1),
        child: Icon(FontAwesomeIcons.instagram, size: 30, color: Colors.grey),
      ),
    ];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'نحن دائماً ',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'حريصون ',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                    Text(
                      'على ,توصلك معانا!',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'البريد الالكترونى',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'edublink@example.com',
                  style: TextStyle(fontSize: 20,),
                ),
                SizedBox(height: 20),
                Text(
                  'الهاتف',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  '(+091) 8598554413',
                  style: TextStyle(fontSize: 20,),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 70,
                  child: ListView.separated(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => list[index],
                    separatorBuilder: (context, index) => SizedBox(width: 5),
                    itemCount: list.length,
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'تواصل معنا',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'املأ هذا النموذج لحجز استشارة استشارية',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: MaterialButton(
                              onPressed: () {},

                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              // padding: EdgeInsets.all(1),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'ارسل الرسالة',
                                  style: TextStyle(
                                    fontSize: 20,

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
