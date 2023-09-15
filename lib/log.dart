import 'package:flutter/material.dart';
import 'package:my_projct/dbase/just_db.dart';
import 'package:my_projct/dbase/user_db.dart';
import 'package:my_projct/tree.dart';

import 'dbase/message.dart';
import 'sig.dart';

class logo extends StatefulWidget {
  const logo({Key? key}) : super(key: key);

  @override
  State<logo> createState() => _logoState();
}

class _logoState extends State<logo> {
  final username=TextEditingController();
  final password=TextEditingController();
  bool isNotvalid=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //JUSTDB().clearData();
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: new LinearGradient(colors: [
          Colors.blue,
          Colors.blue,
        ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              height: height * 0.15,
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.15),
              height: height * 0.85,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )),
              child: ListView(
                children: [
                  Text(
                    'Login'.toUpperCase(),
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Center(
                    child: Container(
                      height: 1,
                      width: width * 0.8,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                    Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: TextField(
                      
                      controller: username,
                        textAlign: TextAlign.center,
                        
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "User_Name",
                          hintStyle: TextStyle(
                            fontSize: 20,
                              fontWeight: FontWeight.bold, letterSpacing: 1.8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(12),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Colors.grey),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: TextField(
                      controller: password,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password  ",
                          hintStyle: TextStyle(
                            fontSize: 20,
                              fontWeight: FontWeight.bold, letterSpacing: 1.8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(12),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                                color: Colors.grey),
                          ),
                        )),
                  ),
                  
                   SizedBox(
                    height: height * 0.03,
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
                                                BorderRadius.circular(22)))),
                                onPressed: () {
                                  var user=User(username: username.text, password: password.text);
                                  var valid=JUSTDB().login(user.username, user.password);
                            
                                  if(valid==null){
                                    setState(() {
                                      isNotvalid=true;
                                    });
                                  }
                                  else{
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => Dashbord(current: user.username)));
                                  }
                                },
                                child: Text('Log In',style: TextStyle(fontSize: 42),)))),
                  ],
                ),
                SizedBox(height: height *0.01,),
                 Center(child: Text(isNotvalid?"UserName or Pasaword is Incorrected":"",style: TextStyle(color: Colors.red,fontSize: 22),)),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Center(
                    child: Container(
                      height: 1,
                      width: width * 0.8,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    "Don't Have Account ?".toUpperCase(),
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        //  fontWeight: FontWeight.bold,
                        letterSpacing: 1.7),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: height * 0.02,
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
                                                BorderRadius.circular(22)))),
                                onPressed: () {
                                  var hasData=JUSTDB().hasData();
                          if(hasData){
                            showDialog(context: context,builder: (_)=>Messages.showConfirmation(context, "Horay ayaa isku diwangelisay ee ma rabtaa inaad turtid xotaas", "Xaqiijin",onConfirm: (){
JUSTDB().clearData();
Navigator.pop(context);
Navigator.push(context,MaterialPageRoute(builder: (context) => Signup()));
                            }));
                          }else {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => Signup()));
                          }


                                  //Navigator.push(context,MaterialPageRoute(builder: (context) => Signup()));
                                },
                                child: Text('Sign Up',style: TextStyle(fontSize: 42),)))),
                  ],
                ),
               
                  

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
