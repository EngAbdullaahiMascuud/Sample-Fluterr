import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: test(),
  ));
}

class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      drawer: MultiLevelDrawer(
        divisionColor: Colors.white,
        
          header: Container(
            height: size.height * 0.10,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('JUST MOBILE APPLICATION'),
                  SizedBox(
                    height: 8,
                  ),
                  Text('I am Developer of Mobile ')
                ],
              ),
            ),
          ),
          children: [
             
            MLMenuItem(
              
                leading: Icon(Icons.home),
                trailing: Icon(Icons.arrow_right),
                content: Text('My name '),
                
                onClick: () {}),

            MLMenuItem(
            leading: Icon(Icons.person),
            trailing: Icon(Icons.arrow_right),
            content: Text('My name '), onClick: () {}),


            MLMenuItem(
              leading: Icon(Icons.linked_camera),
              trailing: Icon(Icons.arrow_right),
              content: Text('My name '), onClick: () {}),


            MLMenuItem(
              
              leading: Icon(Icons.newspaper),
              trailing: Icon(Icons.arrow_right),
              content: Text('My name '), onClick: () {}),
          
          MLMenuItem(
              leading: Icon(Icons.newspaper),
              trailing: Icon(Icons.arrow_right),
              content: Text('My name '), onClick: () {}),

          MLMenuItem(
              leading: Icon(Icons.newspaper),
              trailing: Icon(Icons.arrow_right),
              content: Text('My name '), onClick: () {}),

          MLMenuItem(
              leading: Icon(Icons.newspaper),
              trailing: Icon(Icons.arrow_right),
              content: Text('My name '), onClick: () {}),


          MLMenuItem(
              leading: Icon(Icons.newspaper),
              trailing: Icon(Icons.arrow_right),
              content: Text('My name '), onClick: () {}),


          MLMenuItem(
              leading: Icon(Icons.newspaper),
              trailing: Icon(Icons.arrow_right),
              content: Text('My name '), onClick: () {}),


          MLMenuItem(
              leading: Icon(Icons.newspaper),
              trailing: Icon(Icons.arrow_right),
              content: Text('My name '), onClick: () {}),

          MLMenuItem(
              leading: Icon(Icons.newspaper),
              trailing: Icon(Icons.arrow_right),
              content: Text('My name '), onClick: () {}),


          MLMenuItem(
              leading: Icon(Icons.newspaper),
              trailing: Icon(Icons.arrow_right),
              content: Text('My name '), onClick: () {}),

          ]),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan[400],
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Side Bar',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    ));
  }
}
