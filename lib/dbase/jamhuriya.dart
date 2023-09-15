


import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_projct/dbase/student_modal.dart';
import 'package:my_projct/dbase/user_db.dart';

class JAMHUURIYA {

  var _userbox=Hive.box("justapp");

  Future createStudent(Student student)async{
    var value=await _userbox.add(student.toJson());
    print(value);

  }



  Student? login(String username, String password){
    var alluser=_userbox.keys.map((Key){
     var user=_userbox.get(Key);
     
      return Student.fromJson(user);
    }).toList();

    var userdate=alluser.where((user) => user.username==username && user.pass==password).toList();


    if(userdate.isEmpty){
      return null;
    }
   return userdate.first;

  }

  Student getUserData(){
    var alluser=_userbox.keys.map((Key){
      var user=_userbox.get(Key);
print("user $user");
      return Student.fromJson(user);
    }).toList();

    //var userdate=alluser.where((user) => user.username==username).toList();


    // if(userdate.isEmpty){
    //   return null;
    // }
   return alluser.first;

  }
  
  void loadData(){
 var alluser=_userbox.keys.map((Key){
      var user=_userbox.get(Key);
return {'username': user['username'], "pass": user['pass']};
      // return Student(username: user.username, name: user.name, motherName: user.motherName, email: user.email, address: user.address, pass: user.pass, emergencyPhone: user.emergencyPhone, mobile: user.mobile, grade: user.grade, grYear: user.grYear);
    }).toList();
    print(alluser);
  }

   bool hasDate(){
 var alluser=_userbox.keys.map((Key){
      var user=_userbox.get(Key);
      print("user is $user");
      return Student.fromJson(user);
// return {'username': user['username'], "pass": user['pass']};
      // return Student(username: user.username, name: user.name, motherName: user.motherName, email: user.email, address: user.address, pass: user.pass, emergencyPhone: user.emergencyPhone, mobile: user.mobile, grade: user.grade, grYear: user.grYear);
    }).toList();
    return alluser.isNotEmpty;
    //print(alluser);
  }

void clearData(){
  _userbox.clear();
}

 

}