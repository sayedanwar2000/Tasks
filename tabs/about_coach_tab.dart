import 'package:flutter/material.dart';

class AboutCoachTab extends StatelessWidget {
  const AboutCoachTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'المدرب',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(height: 10),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
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
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            'محاضر تجربة المستخدم',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
