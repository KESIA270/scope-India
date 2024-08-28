import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class Javadetails extends StatelessWidget {
  const Javadetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff071e67),
      endDrawer: DrawerBar(
      ),
      appBar: AppBar(
        toolbarHeight: 100,
        title: Image(
        image: AssetImage('images/scope-india-logo-bird.png'),height: 80,),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff071e67),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 20,
                
              ),
              Center(
                child: Text('Java Full Stack Internship',style: TextStyle(
                    fontSize: 27,fontWeight: FontWeight.w900,color:Colors.amber, ),),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                    'All Trainers at SCOPE INDIA are working professionals, Software Engineers, Networking Engineers, and Software Test Engineers of Suffix E Solutions with',
                    style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                  )),
              Text(
                '17 years of Industrial experience.',
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w900,
                    fontSize: 19),
              ),
              SizedBox(height: 40,),
              Center(
                child: Container(



                    child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.green, width: 2),
                      // color: Color
                    ),

                    child: Text(
                      "Python fullstack intership +\n 3 Months on the job training",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),),
                  ),

                  ),


          
          
            ],
          ),
        ),
      ),
    );
  }
}
