

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_projct/log.dart';
import 'package:flutter/services.dart';
import 'package:my_projct/std.dart';
import 'package:my_projct/tree.dart';

void main() async{

  await Hive.initFlutter();
  

  await Hive.openBox("justapp");
  await Hive.openBox("just");



  runApp(MyAp());
}

class MyAp extends StatefulWidget {
  const MyAp({Key? key}) : super(key: key);

  @override
  State<MyAp> createState() => _MyApState();
}

class _MyApState extends State<MyAp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: logo()
      //st(),
    );
  }
}
