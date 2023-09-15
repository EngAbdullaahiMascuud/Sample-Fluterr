import 'package:my_projct/dbase/jamhuriya.dart';
import 'package:my_projct/dbase/message.dart';
import 'package:my_projct/thirdss.dart';

import 'secStd.dart';
import 'package:flutter/material.dart';
import 'package:my_projct/secStd.dart';
import 'package:my_projct/dbase/user_db.dart';
import 'package:my_projct/dbase/just_db.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: st(),
//   ));
// }

class st extends StatefulWidget {
  const st({Key? key}) : super(key: key);

  @override
  State<st> createState() => _stState();
}

class _stState extends State<st> {
  final username = TextEditingController();
  final pas = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 4,
            actions: [
              Icon(
                Icons.person,
                color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.dark_mode,
                color: Colors.black,
              ),
            ],
            title: Text(
              '         Sign in / Login',
              style: TextStyle(color: Colors.black),
            )),
        body: Container(
          //padding: EdgeInsets.all(20.0),
          //color: Colors.white,
          //width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //color: Colors.red,
                // height: 100,
                // width: 100,
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 62, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  'Lest get you logged in',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                height: 50, width: 390,
                //color: Colors.red,
                padding: EdgeInsets.only(left: 2.0),
                margin: EdgeInsets.all(12.0),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'User Name',
                    //hintText: ('User_Name'),
                    labelStyle: TextStyle(color: Colors.black, fontSize: 12),
                    //border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                height: 50,
                width: 390,
                padding: EdgeInsets.only(left: 2.0),
                margin: EdgeInsets.all(12.0),
                child: TextField(
                  controller: pas,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    //icon: Icons.password,
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 12),
                    //border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              // Center(
              //     child: Text(
              //   isNotvalid ? "UserName or Pasaword is Incorrected" : "",
              //   style: TextStyle(color: Colors.red, fontSize: 22),
              // )),
              // Container(
              //   //color: Colors.red,
              //   //width: ,
              //   margin: EdgeInsets.only(left: 8.0,bottom: 30),
              //   child: ListTile(
              //     title: Text('Remember'),
              //     leading: Checkbox(value: _remmember, onChanged: (selec) {}),
              //   ),
              // ),
              SizedBox(
                height: 15,
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
                    margin: EdgeInsets.only(bottom: 50, left: 50, right: 50),

                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 137, 199, 45),
                          elevation: 12,
                        ),
                        onPressed: () {
                          var data =
                              JAMHUURIYA().login(username.text, pas.text);

                          if (data != null)
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => person()));
                          else
                            print("username is invalid");
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ))
                ],
              ),

              SizedBox(
                height: 0,
              ),

              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(bottom: 50, left: 50, right: 50),
                    //margin: EdgeInsets.only(bottom: 50,left: 22,right: 22),
                    //margin: EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 137, 199, 45),
                          elevation: 5,
                        ),
                        onPressed: () {
                          var hasData = JAMHUURIYA().hasDate();
                          if (hasData) {
                            showDialog(
                                context: context,
                                builder: (_) => Messages.showConfirmation(
                                        context,
                                        "Horay ayaa isku diwangelisay ee ma rabtaa inaad turtid xotaas",
                                        "Xaqiijin", onConfirm: () {
                                      JAMHUURIYA().clearData();
                                      Navigator.pop(context);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => sst()));
                                    }));
                          } else {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => sst()));
                          }
                        },
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ))
                ],
              ),

              SizedBox(
                height: 10,
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
        ));
  }
}
