import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Welcome to Just University',
    home: Welcome(),
  ));
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 249, 250, 251),
      appBar: AppBar(
        title: Text(
          "Welcome",
          style: TextStyle(color: Colors.black, fontSize: 18.0),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Icon(
            Icons.dark_mode_rounded,
            color: Colors.black,
          ),
          SizedBox(
            width: 14.0,
          ),
          Icon(
            Icons.person,
            color: Colors.black,
          ),
          SizedBox(
            width: 14.0,
          ),
          Icon(
            Icons.menu,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///create container to make box shadow ond radius
              Container(
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.only(bottom: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(80.0),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade600,
                        spreadRadius: 1,
                        blurRadius: 5)
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("img/god.jpg"),
                  radius: 70.0,
                ),
              ), //end

              SizedBox(height: 10.0),

              //creating text
              SelectableText(
                "Mohamed Ahmed Mohamud",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2.0),

              // create title Text
              SelectableText(
                "Predident",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue.shade500,
                ),
              ),
              SizedBox(
                height: 14.0,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
            ),
            child: Row(
              children: [
                Container(
                  height: 35.0,
                  width: 5.0,
                  color: Colors.green,
                ),
                SizedBox(width: 10.0),
                SelectableText(
                  "WELCOME TO THE HOME OF QUALITY EDUCATION",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
            child: Expanded(
              child: Column(
                children: [
                  SelectableText(
                    "Hello and welcome to the official JUST Official App of JUST– Jamhuriya University of Science & Technology. Whether you are a prospective student, current student, professor, researcher, staff member, graduate, parent, neighbor, or visitor, I invite you to explore JUST University, the home of quality education.\n\nAlthough existing higher education institutions in the country did their best to offer what they could in the way they were able, we still see gaps to be bridged, and filling these gaps is one major goal for the establishment of Jamhuriya University of Science and Technology (JUST).\n\nJamhuriya University of Science and Technology (JUST) was established in Mogadishu, Somalia by a group of Somali scholars and Intellectuals to fill the existing gap in the higher education system in the country by providing quality education and practicing ethical professionalism.\n\nTo fill such gap, JUST emphasizes the importance of a solid base of general skills and knowledge through a carefully designed Core Curriculum, which was conceived with an eye to the needs and requirements of Somali society and its labor market. We always strive to fulfill our mission as the country’s home of quality education through creativity and innovation in the design and delivery of higher education. Currently the University offers six faculties: Medicine & Health Sciences, Engineering, Economics & Management, Computer & Information Technology, Veterinary and Agricultural Sciences and Education.\n\nI invite you to come explore Jamhuriya University through our website to learn about our educational programs and research activities. Be sure that JUST is the place to pursue your future career and fulfill your dreams. Together, we hope we can all fulfill the mission of the university, to have graduates that make a difference in their communities and the country.\n\n",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SelectableText(
                    "I am very grateful to begin this journey with you, and wish you every success along the way. My very best to you all.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: Colors.green.shade700,
                    ),
                  ),
                  SizedBox(height: 22.0),
                ],
              ),
            ),
          ),
          Container(
            
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: ElevatedButton(
              
              
              style: ElevatedButton.styleFrom(primary: Colors.green,elevation: 2,),
              
              onPressed: () => {},
              
              child: SelectableText("ABOUT JUST"),
            ),
          ),
          SizedBox(height: 22.0),
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
          ////
        ],
      ),
    );
  }
}
