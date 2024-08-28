
import 'package:flutter/material.dart';
import 'package:scopeindiamain/courses.dart';
import 'package:scopeindiamain/loginpage.dart';
import 'package:scopeindiamain/placementcell.dart';
import 'package:scopeindiamain/registrationpage.dart';
import 'package:scopeindiamain/verte.dart';

import 'about.dart';
import 'contactpage.dart';
import 'homepage.dart';


class DrawerBar extends StatefulWidget {
  const DrawerBar({super.key});

  @override
  State<DrawerBar> createState() => _DrawerBarState();
}

class _DrawerBarState extends State<DrawerBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      //shadowColor:  Colors.white,
      backgroundColor: Color(0xff071e67),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 80,),

          ListTile(
            leading: Icon(Icons.home,color: Colors.white,),
            title: Text("Home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Homepage()));
            },
          ),


         // Divider(),

          ListTile(
              leading: Icon(Icons.menu_book,color: Colors.white,),
              title: Text("Course",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Courses()));


              }
          ),

         // Divider(),

          ListTile(
              leading: Icon(Icons.info_outline,color: Colors.white,),
              title: Text("About us",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              onTap: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Abouts()));
              }
          ),

          //Divider(),

          ListTile(
            leading: Icon(Icons.call,color: Colors.white,),
            title: Text("Contact",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            onTap: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Contact()));
            },
          ),

          //Divider(),

          ListTile(
              leading: Icon(Icons.bookmark_add,color: Colors.white,),
              title: Text("Placement Cell",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  Placement()));
              }
          ),


        //  Divider(),

          ListTile(
            leading: Icon(Icons.people_outline_outlined,color: Colors.white,),
            title: Text("Login/sign up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            onTap: () {
             // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RegistrationPage));
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  LoginPage()));
            },
          ),
          ListTile(
              leading: Icon(Icons.admin_panel_settings,color: Colors.white,),
              title: Text("Admin login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              onTap: () {
              }
          ),


        ],
      ),
    );
  }
}