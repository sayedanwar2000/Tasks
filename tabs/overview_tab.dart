import 'package:flutter/material.dart';

List<String> willLearn = [
  ' تصبح مصمم UX',
  'إنشاء إطارات سلكية سريعة',
  'إنشاء مشروع UX من البداية',
  'تعلم تصميم مواقع الويب وتطبيقات الجوال',
  'بناء واختبار تصميم موقع كامل',
  'كيفية استخدام مجموعات UI المعدة مسبقًا',
  ' تصبح مصمم UX',
  'إنشاء إطارات سلكية سريعة',
  'إنشاء مشروع UX من البداية',
  'تعلم تصميم مواقع الويب وتطبيقات الجوال',
  'بناء واختبار تصميم موقع كامل',
  'كيفية استخدام مجموعات UI المعدة مسبقًا',
];
List<String> requirements = [
  'سوف تحتاج إلى نسخة من Figma. ,يمكن تنزيل نسخة تجريبية مجانية من Figma.',
  'ليست هناك حاجة إلى خبرة سابقة في التصميم',
  'ليست هناك حاجة إلى مهارات Figma السابقة',
];

Widget overviewTab() => SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'نظرة عامة على الدورة',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      SizedBox(height: 20),
      Text(
        'من الحقائق الثابتة منذ زمن طويل أن المحتوى '
        'المقروء للصفحة سوف يشتت انتباه القارئ عند النظر إلى تخطيطها.'
        ' ,المغزى من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع '
        'طبيعي إلى حد ما للأحرف، على عكس استخدام "المحتوى هنا، المحتوى '
        'هنا"، مما يجعله يبدو وكأنه لغة إنجليزية قابلة للقراءة.'
        ' ,العديد من حزم النشر المكتبي ومحرري صفحات الويب يستخدمون'
        ' الآن لوريم إيبسوم كنص نموذجي افتراضي، والبحث عن سيكشف '
        'عن العديد من مواقع الويب التي لا تزال في مهدها.'
        ',تطورت إصدارات مختلفة على مر السنين، أحيانًا عن'
        ' طريق الصدفة، وأحيانًا عن قصد (الفكاهة المحقونة وما شابه)',
        style: TextStyle(fontSize: 17),
        softWrap: true,
      ),
      SizedBox(height: 20),
      Text(
        'ما ستتعلمه',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder:
            (context, index) => Row(
              children: [
                Icon(Icons.check_circle_outline, size: 25),
                SizedBox(width: 10),
                Text(willLearn[index], style: TextStyle(fontSize: 17)),
              ],
            ),
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemCount: willLearn.length,
      ),
      Text(
        'المتطلبات',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      ListView.separated(
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder:
            (context, index) => Row(
              children: [
                Icon(Icons.check_circle_outline, size: 25),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    requirements[index],
                    style: TextStyle(fontSize: 17),
                    softWrap: true,
                    maxLines: 4,
                  ),
                ),
              ],
            ),
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemCount: requirements.length,
      ),
    ],
  ),
);
