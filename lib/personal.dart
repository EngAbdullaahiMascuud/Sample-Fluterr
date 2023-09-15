

import 'package:flutter/material.dart';

import 'dbase/student_modal.dart';

class profile extends StatefulWidget {
  const profile(
      {Key? key,
     
    
required this.student
      })
      : super(key: key);
 final Student student;

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 4,
          actions: [
            //SizedBox(width: 10,),
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.dark_mode,
              color: Colors.white,
            ),
            SizedBox(
              width: 15,
            ),
          ],
          centerTitle: true,
          title: Text(
            'Personal Profile',
            style: TextStyle(color: Colors.white),
          )),
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.all(12),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.all(
              //       Radius.circular(380.0),
              //     ),
              //     color: Colors.white,
              //     boxShadow: [
              //       BoxShadow(
              //           color: Colors.grey.shade600,
              //           spreadRadius: 1,
              //           blurRadius: 5)
              //     ],
              //   ),
              child: CircleAvatar(
                
                backgroundColor: Colors.white,
                  backgroundImage: AssetImage("img/pro.png",),
                  
                  radius: 150.0,
              )),
                  SizedBox( height: 10,),
                  Divider(),


          Row(children: [Container( margin: EdgeInsets.only(left: 20), child: Text('Personal Information',style: TextStyle(color: Color.fromARGB(255, 8, 0, 255),fontSize: 22),),)],),
          //Divider(),
          SizedBox(height: 10,),
          Row(children: [Container( margin: EdgeInsets.only(left: 30), child: Text('UserName',style: TextStyle(color: Colors.blue,fontSize: 18),),)],),
          //Divider(),
          SizedBox(height: 5,),
          Row(
            children: [
              
              Container(
                  margin: EdgeInsets.only(left: 42),
                  child: Text('${widget.student.username}',style: TextStyle(fontSize: 18))
                  ),
                  //ListTile(leading: Icon(Icons.abc),),
                  // Container(margin: EdgeInsets.only(left: 390), child: Icon(Icons.abc))
            ],
          ),
          //SizedBox(height: 5,),
          Divider(),
          Row(children: [Container( margin: EdgeInsets.only(left: 30), child: Text('Full Name',style: TextStyle(color: Colors.blue,fontSize: 18),),)],),
          //Divider(),
          SizedBox(height: 5,),
          Row(
            children: [
              
              Container(
                  margin: EdgeInsets.only(left: 42),
                  child: Text('${widget.student.name}',style: TextStyle(fontSize: 18))
                  ),
                  //ListTile(leading: Icon(Icons.abc),),
                  // Container(margin: EdgeInsets.only(left: 325), child: Icon(Icons.abc))
            ],
          ),
          Divider(),
          Row(children: [Container( margin: EdgeInsets.only(left: 30), child: Text('Mother Name',style: TextStyle(color: Colors.blue,fontSize: 18),),)],),
          //Divider(),
          SizedBox(height: 5,),
          Row(
            children: [
              
              Container(
                  margin: EdgeInsets.only(left: 42),
                  child: Text('${widget.student.motherName}',style: TextStyle(fontSize: 18))
                  ),
                  //ListTile(leading: Icon(Icons.abc),),
                  // Container(margin: EdgeInsets.only(left: 325), child: Icon(Icons.abc))
            ],
          ),
          Divider(),
          Row(children: [Container( margin: EdgeInsets.only(left: 30), child: Text('Email',style: TextStyle(color: Colors.blue,fontSize: 18),),)],),
          //Divider(),
          SizedBox(height: 5,),
          Row(
            children: [
              
              Container(
                  margin: EdgeInsets.only(left: 42),
                  child: Text('${widget.student.email}',style: TextStyle(fontSize: 18))
                  ),
                  //ListTile(leading: Icon(Icons.abc),),
                  // Container(margin: EdgeInsets.only(left: 325), child: Icon(Icons.abc))
            ],
          ),
          //SizedBox(height: 5,),
          Divider(),
          Row(children: [Container( margin: EdgeInsets.only(left: 30), child: Text('Emergancy Phone',style: TextStyle(color: Colors.blue,fontSize: 18),),)],),
          //Divider(),
          SizedBox(height: 5,),
          Row(
            children: [
              
              Container(
                  margin: EdgeInsets.only(left: 42),
                  child: Text('${widget.student.emergencyPhone}',style: TextStyle(fontSize: 18))
                  ),
                  //ListTile(leading: Icon(Icons.abc),),
                  // Container(margin: EdgeInsets.only(left: 335), child: Icon(Icons.abc))
            ],
          ),
          //SizedBox(height: 5,),
          Divider(),
          Row(children: [Container( margin: EdgeInsets.only(left: 30), child: Text('Addres/Location',style: TextStyle(color: Colors.blue,fontSize: 18),),)],),
          //Divider(),
          SizedBox(height: 5,),
          Row(
            children: [
              
              Container(
                  margin: EdgeInsets.only(left: 42),
                  child: Text('${widget.student.address}',style: TextStyle(fontSize: 18))
                  ),
                  //ListTile(leading: Icon(Icons.abc),),
                  // Container(margin: EdgeInsets.only(left: 350), child: Icon(Icons.abc))
            ],
          ),
          //SizedBox(height: 5,),
          Divider(),
          Row(children: [Container( margin: EdgeInsets.only(left: 30), child: Text('Phone Number',style: TextStyle(color: Colors.blue,fontSize: 18),),)],),
          //Divider(),
          SizedBox(height: 5,),
          Row(
            children: [
              
              Container(
                  margin: EdgeInsets.only(left: 42),
                  child: Text('${widget.student.mobile}',style: TextStyle(fontSize: 18))
                  ),
                  //ListTile(leading: Icon(Icons.abc),),
                  // Container(margin: EdgeInsets.only(left: 340), child: Icon(Icons.abc))
            ],
          ),
          Divider(),
          Row(children: [Container( margin: EdgeInsets.only(left: 30), child: Text('Grade Of ',style: TextStyle(color: Colors.blue,fontSize: 18),),)],),
          //Divider(),
          SizedBox(height: 5,),
          Row(
            children: [
              
              Container(
                  margin: EdgeInsets.only(left: 42),
                  child: Text('${widget.student.grade}',style: TextStyle(fontSize: 18))
                  ),
                  //ListTile(leading: Icon(Icons.abc),),
                  // Container(margin: EdgeInsets.only(left: 340), child: Icon(Icons.abc))
            ],
          ),
          Divider(),
          Row(children: [Container( margin: EdgeInsets.only(left: 30), child: Text('Gradution Years',style: TextStyle(color: Colors.blue,fontSize: 18),),)],),
          //Divider(),
          SizedBox(height: 5,),
          Row(
            children: [
              
              Container(
                  margin: EdgeInsets.only(left: 42),
                  child: Text('${widget.student.grYear}',style: TextStyle(fontSize: 18))
                  ),
                  //ListTile(leading: Icon(Icons.abc),),
                  //Container(margin: EdgeInsets.only(left: 340), child: Icon(Icons.abc))
            ],
          ),
          //SizedBox(height: 5,),
          Divider(),
          Row(children: [Container( margin: EdgeInsets.only(left: 30), child: Text('Password',style: TextStyle(color: Colors.blue,fontSize: 18),),)],),
          //Divider(),
          SizedBox(height: 5,),
          Row(
            children: [
              
              Container(
                  margin: EdgeInsets.only(left: 42),
                  child: Text('${widget.student.pass}',style: TextStyle(fontSize: 18))
                  ),
                  //ListTile(leading: Icon(Icons.abc),),
                  // Container(margin: EdgeInsets.only(left: 380), child: Icon(Icons.abc))
            ],
          ),
          //SizedBox(height: 5,),
          Divider(),



          // Container(
          //     margin: EdgeInsets.only(left: 42),
          //     child: Text('${widget.fullname}')),
          // Container(
          //     margin: EdgeInsets.only(left: 42),
          //     child: Text('${widget.emerg}')),
          // Container(
          //     margin: EdgeInsets.only(left: 42),
          //     child: Text('${widget.phonum}')),
          // Container(
          //     margin: EdgeInsets.only(left: 42),
          //     child: Text('${widget.addres}')),
          // Container(
          //     margin: EdgeInsets.only(left: 42), child: Text('${widget.pass}')),

          SizedBox(height: 10,),
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
    );
  }
}
