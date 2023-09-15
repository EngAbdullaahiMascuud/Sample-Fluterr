

import 'package:flutter/material.dart';
import 'package:my_projct/std.dart';
import 'package:my_projct/welcome.dart';

class nav extends StatelessWidget {
  const nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Drawer(
        
        child:  ListView(
          padding: EdgeInsets.all(12),
          
          children: [
          Center(child: 
            
            Container(
              margin: EdgeInsets.only(top: 22),
              child: Text('JUST MOBILE APP',style: TextStyle(color: Colors.blue[500], fontSize: 28,),
              ),
            ),
          
            ),
            SizedBox(height: 8,),
            Center(child: Text('Jamhuriya Official App',style: TextStyle(color: Color.fromARGB(255, 251, 0, 0)),)),
          
          Divider(),
          ListTile(
            leading: Icon(Icons.home,color: Colors.blue,),
            trailing: Icon(Icons.arrow_right),
            title: Text('Home'),
            onTap: ()=>null
          ),
            ListTile(
            leading: Icon(Icons.star,color: Color.fromARGB(255, 21, 209, 11),),
            trailing: Icon(Icons.arrow_right),
            title: Text('Welcome'),
            onTap: ()=>{
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Welcome()))
            }
          ),
            ListTile(
            leading: Icon(Icons.account_balance,color: Colors.blue,),
            trailing: Icon(Icons.arrow_right),
            title: Text('Facults'),
            onTap: ()=>null
          ),
            ListTile(
            leading: Icon(Icons.favorite,color: Colors.pink,),
            trailing: Icon(Icons.arrow_right),
            title: Text('About Us'),
            onTap: ()=>null
          ),
            ListTile(
            leading: Icon(Icons.feed,color: Colors.blue,),
            trailing: Icon(Icons.arrow_right),
            title: Text('Centers'),
            onTap: ()=>null
          ),
            ListTile(
            leading: Icon(Icons.description,color: Colors.blue,),
            trailing: Icon(Icons.arrow_right),
            title: Text('News'),
            onTap: ()=>null
          ),
            ListTile(
            leading: Icon(Icons.alarm,color: Colors.blue,),
            trailing: Icon(Icons.arrow_right),
            title: Text('Events'),
            onTap: ()=>null
          ),
            ListTile(
            leading: Icon(Icons.warning,color: Color.fromARGB(255, 255, 234, 0),),
            trailing: Icon(Icons.arrow_right),
            title: Text('Notices'),
            onTap: ()=>null
          ),
            ListTile(
            leading: Icon(Icons.person,color: Color.fromRGBO(0, 255, 76, 1),),
            trailing: Icon(Icons.arrow_right),
            title: Text('Students'),
            onTap: ()=>{
              Navigator.push(context, MaterialPageRoute(builder: (context)=> st())),
            },
          ),
            ListTile(
            leading: Icon(Icons.person_add_alt,color: Color.fromARGB(255, 198, 185, 0),),
            trailing: Icon(Icons.arrow_right),
            title: Text('Parent'),
            onTap: ()=>null
          ),
            ListTile(
            leading: Icon(Icons.check,color: Colors.blue,),
            trailing: Icon(Icons.arrow_right),
            title: Text('Lecturer'),
            onTap: ()=>null
          ),
            ListTile(
            leading: Icon(Icons.email,color: Colors.blue,),
            trailing: Icon(Icons.arrow_right),
            title: Text('Contact Us'),
            onTap: ()=>null
          ),
          Divider(),
          Center(child: Container(child: Text('JUST OFFICAL APP',style: TextStyle(color: Color.fromRGBO(0, 140, 255, 1)),),)),
          SizedBox(height: 30,),
            ListTile(
            leading: Icon(Icons.exit_to_app,color: Colors.blue,),
            trailing: Icon(Icons.arrow_right),
            title: Text('Exits'),
            onTap: (){
              Navigator.pop(context);
            }
          ),
        ]),
      ),
    );
  }
}
