import 'package:flutter/material.dart';
import 'package:my_projct/personal.dart';
import 'package:my_projct/seco.dart';
import 'package:my_projct/std.dart';

import 'dbase/jamhuriya.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: person(),
//   ));
// }

class person extends StatefulWidget {
  //final currentt;
  const person({Key? key}) : super(key: key);

  @override
  State<person> createState() => _personState();
}

class _personState extends State<person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('JUST MOBILE'),
        elevation: 8,
        actions: [
          Container(
              margin: EdgeInsets.only(right: 0),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode))),
          SizedBox(
            width: 5,
          ),
          Container(
              margin: EdgeInsets.only(right: 5),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.home))),
        ],
      ),
      body: ListView(children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 5,
              ),
              color: Color.fromARGB(255, 252, 249, 249),
              height: 250,
              width: 470,
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 20, left: 25, top: 20),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 214, 213, 213)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(
                                10,
                                1,
                              ),
                              blurRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(10, 8),
                              blurRadius: 1,
                            )
                          ]),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Icon(
                                Icons.person,
                                size: 62,
                                color: Colors.orange,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Exams',
                            style: TextStyle(
                                color: Color.fromARGB(255, 42, 145, 230),
                                fontSize: 22),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Examinatin information',
                            style: TextStyle(
                                color: Color.fromARGB(255, 118, 115, 115),
                                fontSize: 14),
                          )
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(bottom: 20, left: 25, top: 20),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 214, 213, 213)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(
                                10,
                                1,
                              ),
                              blurRadius: 1,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(10, 8),
                              blurRadius: 1,
                            )
                          ]),
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Icon(
                                Icons.money_off_csred_sharp,
                                size: 62,
                                color: Colors.green,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Finance',
                            style: TextStyle(
                                color: Color.fromARGB(255, 42, 145, 230),
                                fontSize: 22),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Finance  Statents',
                            style: TextStyle(
                                color: Color.fromARGB(255, 118, 115, 115),
                                fontSize: 14),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              color: Color.fromARGB(255, 252, 249, 249),
              height: 210,
              width: 470,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20, left: 25),
                    //color: Colors.white,
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 214, 213, 213)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(
                              10,
                              1,
                            ),
                            blurRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(10, 8),
                            blurRadius: 1,
                          )
                        ]),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Icon(
                              Icons.percent,
                              size: 62,
                              color: Color.fromARGB(255, 42, 145, 230),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Attendance',
                          style: TextStyle(
                              color: Color.fromARGB(255, 42, 145, 230),
                              fontSize: 22),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Attendance information',
                          style: TextStyle(
                              color: Color.fromARGB(255, 118, 115, 115),
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20, left: 25),
                    //color: Colors.white,
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 214, 213, 213)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(
                              10,
                              1,
                            ),
                            blurRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(10, 8),
                            blurRadius: 1,
                          )
                        ]),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Icon(
                              Icons.schedule,
                              size: 62,
                              color: Colors.red,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Schedule',
                          style: TextStyle(
                              color: Color.fromARGB(255, 42, 145, 230),
                              fontSize: 22),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Academic information',
                          style: TextStyle(
                              color: Color.fromARGB(255, 118, 115, 115),
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              color: Color.fromARGB(255, 252, 249, 249),
              height: 230,
              width: 470,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20, left: 25),
                    //color: Colors.white,
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 214, 213, 213)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(
                              10,
                              1,
                            ),
                            blurRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(10, 8),
                            blurRadius: 1,
                          )
                        ]),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Icon(
                              Icons.star_half,
                              size: 62,
                              color: Color.fromARGB(255, 179, 36, 0),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Evalution',
                          style: TextStyle(
                              color: Color.fromARGB(255, 42, 145, 230),
                              fontSize: 22),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Lecture Evalution',
                          style: TextStyle(
                              color: Color.fromARGB(255, 118, 115, 115),
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20, left: 25),
                    //color: Colors.white,
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 214, 213, 213)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(
                              10,
                              1,
                            ),
                            blurRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(10, 8),
                            blurRadius: 1,
                          )
                        ]),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 35,right: 40),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => profile(student: JAMHUURIYA().getUserData(),)));
                                },
                                icon: Icon(
                                  Icons.person,
                                  size: 85,
                                  color: Colors.orangeAccent,
                                ))),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color: Color.fromARGB(255, 42, 145, 230),
                              fontSize: 22),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'User information',
                          style: TextStyle(
                              color: Color.fromARGB(255, 118, 115, 115),
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      "Contact Us",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    SelectableText(
                      "DIGFER CAMPUS",
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    SelectableText(
                      "Digfer Street, Hodan District,",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    SelectableText(
                      "Mogadishu, Somalia.",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    SelectableText(
                      "BENADIR CAMPUS",
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    SelectableText(
                      "Benadir Street, Hodan District,",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    SelectableText(
                      "Mogadishu, Somali.",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // Cardboard
                    SizedBox(
                      child: Divider(
                        color: Colors.grey.shade500,
                      ),
                    ),

                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.green.shade600,
                        size: 26.0,
                      ),
                      title: SelectableText(
                        "252 - 61- 2223999",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Container(
                        height: 20,
                        color: Colors.blue,
                        padding: EdgeInsets.all(5.0),
                        width: 80.0,
                        child: Center(
                          child: Text(
                            "TOP TO CALL",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Divider(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.blue.shade400,
                        size: 26.0,
                      ),
                      title: SelectableText(
                        "info@just.edu.so",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Container(
                        height: 20,
                        width: 80.0,
                        color: Colors.blue.shade500,
                        padding: EdgeInsets.all(5.0),
                        child: Center(
                          child: Text(
                            "TAP TO EMAIL",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Divider(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    SizedBox(height: 10.0),

                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.facebook,
                            color: Color.fromARGB(255, 1, 54, 98),
                            size: 40,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.email_rounded,
                          color: Colors.blue,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.phone_android,
                          color: Colors.orange,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_upward,
                          color: Color.fromARGB(255, 52, 52, 52),
                          size: 40,
                        )
                      ],
                    )),

                    SizedBox(
                      height: 20,
                    ),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.copyright,
                            color: Colors.blue.shade600,
                          ),
                          SizedBox(width: 2.0),
                          SelectableText("JUST Offical App 2023."),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
