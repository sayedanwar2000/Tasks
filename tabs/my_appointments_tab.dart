import 'package:flutter/material.dart';

Widget myAppointmentsTab() => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      'مواعيدي',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    ),
    Text(
      '15 مارس',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    ),
    SizedBox(height: 10),
    ListView.separated(
      shrinkWrap: true,
      itemBuilder:
          (context, index) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          color: Colors.yellow,
                          width: 20,
                          thickness: 4,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '09:00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GDM الفصل الدراسي الثاني',
                            style: TextStyle(
                              color: Colors.grey,

                            ),
                          ),
                          Text(
                            'طريقة الرسم بخط واحد',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          color: Colors.green,
                          width: 20,
                          thickness: 4,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '12:00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'GDM الفصل الدراسي الثاني',
                            style: TextStyle(
                              color: Colors.grey,

                            ),
                          ),
                          Text(
                            'طريقة الرسم بخط واحد',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      separatorBuilder: (context, index) => SizedBox(height: 20),
      itemCount: 2,
    ),
  ],
);
