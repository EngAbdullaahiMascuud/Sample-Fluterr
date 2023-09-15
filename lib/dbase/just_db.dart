


import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_projct/dbase/user_db.dart';

class JUSTDB {

  var _userbox=Hive.box("just");

  void createUser(Map<String,dynamic> user){
    _userbox.add(user);

  }

   void clearData(){
    _userbox.clear();

  }


  User? login(String username, String password){
    var alluser=_userbox.keys.map((Key){
      var user=_userbox.get(Key);
print(user);
      return {Key:Key,"username":user['username'],"password":user['password']};
    }).toList();

    var userdate=alluser.where((user) => user['username']==username && user['password']==password).toList();


    if(userdate.isEmpty){
      return null;
    }
    return getUserrDate(userdate.first);

  }
   bool hasData(){
    var alluser=_userbox.keys.map((Key){
      var user=_userbox.get(Key);
print(user);
      return {Key:Key,"username":user['username'],"password":user['password']};
    }).toList();

    return alluser.isNotEmpty;
  }

 User getUserrDate(user){
  return User(username:user['username'],password:user['password']);
 }

}