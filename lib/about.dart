import 'package:flutter/material.dart';

class Abouts extends StatefulWidget {
  const Abouts({super.key});

  @override
  State<Abouts> createState() => _AboutsState();
}

class _AboutsState extends State<Abouts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff071e67),
      appBar: AppBar(backgroundColor: Color(0xff071e67),toolbarHeight: 100,
        title: Image(image: AssetImage('images/scope-india-logo-home-page.png'),
          height: 100,),iconTheme: IconThemeData(
            color: Colors.white
        ),),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Center(
                  child: Text('SCOPE INDIA,your \n   career partner!',style: TextStyle(
                    fontSize: 30,color: Colors.yellow,fontWeight: FontWeight.w900,
                  ),),
                ),
                SizedBox(height: 15,),
                Center(
                  child: Text('One of the best Training Destination for Software,'
                      ' Networking and Cloud Computing courses in India with 17 years of Industrial experience.',style:
                    TextStyle(fontSize:18,color: Colors.white,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 15,),
                Center(
                  child: Text("Software, Networking, and Cloud Professional Education Centre in Kerala from Suffix E Solutions with WORKING PROFESSIONALS oriented on-the-job TRAINING model. SCOPE INDIA provides courses for Software Programming in Python (Data Science | Artificial Intelligence | Machine Learning | Deep Learning, Data Analytics), Java, PHP, .Net, Software Testing Manual and Automation, Cloud Computing (AWS | Azure), Server Administration (MCSE | RHCE), Networking (CCNA), Mobile App Development in Flutter, and Digital Marketing. Training with 100% Trusted Job Based Internship Model. SCOPE INDIA has a Strong Placement Cell that provides jobs to thousands of students every year. We assure you, you won't regret it after training from SCOPE INDIA!",
               style: TextStyle(
                 fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold
               ),
                ),),
                SizedBox(height: 10,),
                Center(
                  child: Text('This is how SCOPE INDIA can support both newbies and experienced in the industry to upgrade their skills.'

                     ,
                  style: TextStyle(color:Colors.white),),
                ),
                SizedBox(height: 20,),
                Image.asset('images/5star.png'),
                Center(
                  child: Text('Google 4.9 * Rated Institute',style: TextStyle(
                    color: Colors.white
                  ),),
                )
                
              ],

            ),
          ),
        
    ),


    );
  }
}
