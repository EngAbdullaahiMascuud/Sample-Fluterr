import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_projct/nav.dart';
import 'package:my_projct/std.dart';

class Dashbord extends StatefulWidget {
  final current;
  const Dashbord({super.key,required this.current});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: nav(),
      appBar: AppBar(
        //debugShowCheckedModeBanner:false,
        //backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'JUST MOBILE APP',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        // leading: IconButton(onPressed: (){Navigator.push(context,
        //                    MaterialPageRoute(builder: (context) => nav()));}, icon: Icon(Icons.menu,color: Colors.black,)),
        actions: [
          // SizedBox(width: 25,),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.dark_mode, size: 30, color: Colors.white)),
          SizedBox(
            width: 10,
          ),

          IconButton(
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => st()));},
              icon: Icon(
                Icons.person,
                size: 30,
                color: Colors.white,
              )),
        ],
      ),
      body: ListView(children: [
        Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 18, top: 14),
                  height: 270,
                  width: 470,
                  decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(10, 1),
                          blurRadius: 12,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(10, 1),
                          blurRadius: 15,
                        )
                      ]),
                  child: CarouselSlider(
                      items: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'img/grr.jpg',
                              fit: BoxFit.cover,
                            )),
                        //   ClipRRect
                        // (
                        //   borderRadius: BorderRadius.circular(40),
                        //   child: Image.asset('img/ss.jpg',fit: BoxFit.cover,)),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'img/ra.jpg',
                              fit: BoxFit.cover,
                            )),
                        // Image.asset('img/ss.jpg')
                      ],
                      options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 16 / 10)),
                ),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin: EdgeInsets.only(top: 160),
                      child: Text(
                        'ENLIGHTING THE LIFE OF MANY',
                        style: TextStyle(color: Colors.black, fontSize: 28),
                      )),
                )),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin: EdgeInsets.only(
                          top: 240, left: 100, right: 80, bottom: 10),
                      child: SelectableText(
                        "it was dream came true to all involved . we celebrate         \n                      with you and your familers",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 0, 0),
                            fontSize: 16),
                      )),
                )),
                // Positioned.fill(
                //     child: Align(
                //   alignment: Alignment.bottomCenter,
                //   child: Text('welcoma o just '),
                // ))
              ],
            ),
            // SizedBox(height: 8,),
            //Divider(),
            //SizedBox(height: 10,),
            // Row(children: [
            //    Container(margin: EdgeInsets.only(top: 25),color: Colors.green,child: Text(''),)
            // ],)
            SizedBox(
              height: 12,
            ),
            Divider(),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8, left: 35),
                  //color: Colors.red,
                  child: Text(
                    'WelcomeTo The Home Of Quality Education jahhuriya University',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 5, left: 175),
                        child: Text("Of Science And Technology (JUST)")),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                            margin:
                                EdgeInsets.only(top: 5, left: 115, right: 115),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12)))),
                                onPressed: () {},
                                child: Text('Welcome')))),
                  ],
                ),
              ],
            ),
            Divider(),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'VISION AND MISSION',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: SelectableText(
                        "To become a university of international reputation and  a distinguished institution \n of higher learning in research and innovation.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: SelectableText(
                        "To contribute to the advancement of knowledge and learning through \nresearch and education.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: SelectableText(
                        "To develop innovative and responsible leaders who are capable of dealing \nwith changes in the global environment",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 18, top: 14),
                  height: 270,
                  width: 470,
                  decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(10, 1),
                          blurRadius: 12,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(10, 1),
                          blurRadius: 15,
                        )
                      ]),
                  child: CarouselSlider(
                      items: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'img/jim.jpg',
                              fit: BoxFit.cover,
                            )),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'img/qlaf.jpg',
                              fit: BoxFit.cover,
                            )),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'img/cr.jpg',
                              fit: BoxFit.cover,
                            )),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'img/goo.jpg',
                              fit: BoxFit.cover,
                            )),
                        // Image.asset('img/ss.jpg')
                      ],
                      options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 8 / 12)),
                ),
                Text('BEST PROGRAMMING TEACHER OF JUST',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 179, 255),
                        fontSize: 24,
                        fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 180),
                      child: Text('NOTIFICATION',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 38, 255),
                            fontSize: 28,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 190),
                      child: Text('News , Events , Notices',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 38, 255),
                            fontSize: 16,
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 58,
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 60),
                        child: Icon(
                          Icons.newspaper,
                          size: 62,
                          color: Colors.orange,
                        )),
                    Container(
                        margin: EdgeInsets.only(left: 100),
                        child: Icon(
                          Icons.event,
                          size: 62,
                          color: Colors.blue,
                        )),
                    Container(
                        margin: EdgeInsets.only(left: 100),
                        child: Icon(
                          Icons.warning,
                          size: 62,
                          color: Colors.red,
                        )),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 75), child: Text('News')),
                    Container(
                        margin: EdgeInsets.only(left: 135),
                        child: Text('Events')),
                    Container(
                        margin: EdgeInsets.only(left: 125),
                        child: Text('Notices')),
                  ],
                )
              ],
            ),
            Divider(),
            SizedBox(height: 10,),

            Column(
              children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 110),
                        child: Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 255, 213, 0),
                          size: 35,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Text('UNIVERSITY HIGHLIGHTS',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 179, 255),
                            fontSize: 24,fontWeight: FontWeight.bold,
                            )),

                  ],
                ),
                Container(child: Image.asset('img/tab.jpg'))
              ],
            ),
            
            Divider(),
            Column(children: [
              Row(
                  children: [
                    Container(
                      
                        margin: EdgeInsets.only(left: 110),
                        child: Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 255, 213, 0),
                          size: 35,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Text('JUST PARTINERSHIP',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 179, 255),
                            fontSize: 24,fontWeight: FontWeight.bold,
                            )),

                  ],
                ),
                Divider(),
                
                


              Container(
                  //margin: EdgeInsets.only( top: 14),
                  height: 240,
                  width: 490,
                  color: Colors.white,
                  // decoration: BoxDecoration(
                      
                  //     borderRadius: BorderRadius.circular(30),
                  //     boxShadow: [
                  //       // BoxShadow(
                  //       //   color: Colors.grey,
                  //       //   offset: Offset(10, 1),
                  //       //   blurRadius: 12,
                  //       // ),
                  //       // BoxShadow(
                  //       //   color: Colors.white,
                  //       //   offset: Offset(10, 1),
                  //       //   blurRadius: 15,
                  //       // )
                  //     ]),
                  child: CarouselSlider(
                      items: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'img/simad.png',
                              fit: BoxFit.cover,
                            )),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'img/xik.jpg',
                              fit: BoxFit.cover,
                            )),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'img/ma.jpeg',
                              fit: BoxFit.cover,
                            )),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'img/shaf.jpeg',
                              fit: BoxFit.cover,
                            )),
                            ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'img/ren.png',
                              fit: BoxFit.cover,
                            )),
                            ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'img/rer.jpg',
                              fit: BoxFit.cover,
                            )),
                            ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'img/east.jpg',
                              fit: BoxFit.cover,
                            )),
                        // Image.asset('img/ss.jpg')
                      ],
                      options: CarouselOptions(
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 18/4)),
                ),
            ],),
            SizedBox(height: 10,),
            //Divider(),
            SizedBox(height: 15,),
            //Divider(),
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
                      SizedBox(width: 10,),
                      Icon(
                        Icons.email_rounded,
                        color: Colors.blue,
                        
                        size: 40,
                      ),
                      SizedBox(width: 10,),
                       Icon(
                        Icons.phone_android,
                        color: Colors.orange,
                        
                        size: 40,
                      ),
                      SizedBox(width: 10,),
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
        ),
      ]),
    );
    
  }
}