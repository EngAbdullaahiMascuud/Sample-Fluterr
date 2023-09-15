import 'package:flutter/material.dart';
import 'package:my_projct/dbase/jamhuriya.dart';
import 'package:my_projct/dbase/just_db.dart';
import 'package:my_projct/dbase/message.dart';
import 'package:my_projct/dbase/student_modal.dart';
import 'package:my_projct/dbase/user_db.dart';
import 'package:my_projct/log.dart';
import 'package:my_projct/personal.dart';
import 'package:my_projct/std.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: sst(),
//   ));
// }

class sst extends StatefulWidget {
  const sst({Key? key}) : super(key: key);

  @override
  State<sst> createState() => _sstState();
}

class _sstState extends State<sst> {
  final usern = TextEditingController();
  final fuln = TextEditingController();
  final mothern=TextEditingController();
  final emai=TextEditingController();
  final emarg = TextEditingController();
  final gra = TextEditingController();
  final gradeyea = TextEditingController();
  final phone = TextEditingController();
  final addr = TextEditingController();
  final pas = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //   final username=TextEditingController();
    // final password=TextEditingController();
    //bool isNotvalid=false;
    //bool? _remmember = false;
    return Scaffold(
        appBar: AppBar(
            elevation: 4,
            actions: [
              //SizedBox(width: 10,),
              Icon(
                Icons.person,
                color: Colors.black,
              ),
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.dark_mode,
                color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
            ],
            title: Text(
              '         Sig Upp',
              style: TextStyle(color: Colors.black),
            )),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              //color: Colors.white,
              //width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    //color: Colors.red,
                    // height: 100,
                    // width: 100,
                    child: Text(
                      'SIGN UP',
                      style:
                          TextStyle(fontSize: 62, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Lest get you Sign  Up',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50, width: 390,
                    //color: Colors.red,
                    padding: EdgeInsets.only(left: 2.0),
                    margin: EdgeInsets.all(12.0),
                    child: TextField(
                      controller: usern,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'User Name',
                        //hintText: ('User_Name'),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 12),
                        //border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50, width: 390,
                    //color: Colors.red,
                    padding: EdgeInsets.only(left: 2.0),
                    margin: EdgeInsets.all(12.0),
                    child: TextField(
                      controller: fuln,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Full Name',
                        //hintText: ('User_Name'),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 12),
                        //border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50, width: 390,
                    //color: Colors.red,
                    padding: EdgeInsets.only(left: 2.0),
                    margin: EdgeInsets.all(12.0),
                    child: TextField(
                      controller: mothern,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Mother Name',
                        //hintText: ('User_Name'),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 12),
                        //border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50, width: 390,
                    //color: Colors.red,
                    padding: EdgeInsets.only(left: 2.0),
                    margin: EdgeInsets.all(12.0),
                    child: TextField(
                      controller: emai,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Email',
                        //hintText: ('User_Name'),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 12),
                        //border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 50, width: 390,
                    //color: Colors.red,
                    padding: EdgeInsets.only(left: 2.0),
                    margin: EdgeInsets.all(12.0),
                    child: TextField(
                      controller: emarg,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Emergency Phone',
                        //hintText: ('User_Name'),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 12),
                        //border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50, width: 390,
                    //color: Colors.red,
                    padding: EdgeInsets.only(left: 2.0),
                    margin: EdgeInsets.all(12.0),
                    child: TextField(
                      controller: gra,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Grade',
                        //hintText: ('User_Name'),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 12),
                        //border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50, width: 390,
                    //color: Colors.red,
                    padding: EdgeInsets.only(left: 2.0),
                    margin: EdgeInsets.all(12.0),
                    child: TextField(
                      controller: gradeyea,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Gradution Year',
                        //hintText: ('User_Name'),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 12),
                        //border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50, width: 390,
                    //color: Colors.red,
                    padding: EdgeInsets.only(left: 2.0),
                    margin: EdgeInsets.all(12.0),
                    child: TextField(
                      controller: addr,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Address',
                        //hintText: ('User_Name'),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 12),
                        //border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50, width: 390,
                    //color: Colors.red,
                    padding: EdgeInsets.only(left: 2.0),
                    margin: EdgeInsets.all(12.0),
                    child: TextField(
                      controller: phone,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Phone_Number',
                        //hintText: ('User_Name'),
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 12),
                        //border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 390,
                    padding: EdgeInsets.only(left: 2.0),
                    margin: EdgeInsets.all(12.0),
                    child: TextField(
                      controller: pas,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        //icon: Icons.password,
                        labelText: 'Password',
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 12),
                        //border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(8),
                        //   color: Color.fromARGB(255, 249, 242, 242)
                        // ),

                        //height: 20,
                        //color: Colors.green,
                        margin:
                            EdgeInsets.only(bottom: 50, left: 22, right: 22),

                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 137, 199, 45),
                              elevation: 12,
                            ),
                            onPressed: () {
                              var just=JAMHUURIYA();
                               var Stdent=Student(username: usern.text, name: fuln.text, motherName: mothern.text, email: emai.text, address: addr.text, pass: pas.text, emergencyPhone: int.parse(emarg.text), mobile: int.parse(phone.text), grade: int.parse(gra.text), grYear: int.parse(gradeyea.text));
                                //var has=just.getUserData();
                                just.createStudent(Stdent);
                                    Navigator.pop(
                                  context,
                                  );
                                
                                
                                
                                
                            
                            },
                            child: Text(
                              'CREATE',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                      child: Container(
                    child: Text(
                      'JUST OFFICAL APP 2023',
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
                ],
              ),
            )
          ],
        ));
  }
}
