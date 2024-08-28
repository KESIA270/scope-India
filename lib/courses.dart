
import 'package:flutter/material.dart';
import 'package:scopeindiamain/drawer.dart';
import 'package:scopeindiamain/javacoursedetails.dart';
import 'package:scopeindiamain/pythoncoursedetails.dart';


String course1 =   "Python fullstack intership";

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff071e67),
      endDrawer: DrawerBar(),
      appBar: AppBar(
        backgroundColor: Color(0xff071e67),
        toolbarHeight: 100,
        title: Image(
          image: AssetImage('images/scope-india-logo-bird.png'),
          height: 80,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  'SCOPE INDIA',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Colors.amber,
                      fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: 20,
              ),
                Text(
                  'Center for Software, Networking, & Cloud Education',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
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
              Image.asset('images/5star.png'),
              Text(
                'Google 4.9 * Rated Institute',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text('Software Programing Courses', style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                    color: Colors.white),),
              ),
              SizedBox(height: 20,),

              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Javadetails()));
                },
                child: Container(
                  height: 80,width: 350,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white, width: 2),
                      color: Color.fromARGB(56, 255, 255, 255)),
                  child: Center(
                    child: Text(
                      "Java fullstack intership",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Pythondetails(coursename: '',)));
            },

                child: Container(
                  height: 80,
                  width: 350,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white, width: 2),
                      color: Color.fromARGB(56, 255, 255, 255)),
                  child: Center(
                    child: Text(course1,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Pythondetails(coursename: course1)));
            },


                child: Container(
                  height: 80,
                  width: 350,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white, width: 2),
                      color: Color.fromARGB(56, 255, 255, 255)),
                  child: Center(
                    child: Text(
                      "Php fullstack intership",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Pythondetails(coursename: '',)));
            },

                child: Container(
                  height: 80,
                  width: 350,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white, width: 2),
                      color: Color.fromARGB(56, 255, 255, 255)),
                  child: Center(
                    child: Text(
                      ".Net core fullstack intership",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Pythondetails(coursename: '',)));
            },
                child: Container(
                  height: 80,
                  width: 350,
                  margin: EdgeInsets.only(left: 20,),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white, width: 2),
                      color: Color.fromARGB(56, 255, 255, 255)),
                  child: Center(
                    child: Text(
                      "MERN fullstack intership",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Pythondetails(coursename: '',)));
            },
                child: Container(
                  height: 80,
                  width: 350,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white, width: 2),
                      color: Color.fromARGB(56, 255, 255, 255)),
                  child: Center(
                    child: Text(
                      "MEAN fullstack intership",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Pythondetails(coursename: '',)));
            },
                child: Container(
                  height: 90,
                  width: 350,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white, width: 2),
                      color: Color.fromARGB(56, 255, 255, 255)),
                  child: Center(
                    child: Text(
                      "Android/ios mobile App Course in Goole Flutter",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Pythondetails(coursename: '',)));
            },
                child: Container(
                  height: 80,
                  width: 350,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white, width: 2),
                      color: Color.fromARGB(56, 255, 255, 255)),
                  child: Center(
                    child: Text(
                      "Android/ios Mobile App in IONIC",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Pythondetails(coursename: '',)));
            },
                child: Container(
                  height: 80,
                  width: 350,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white, width: 2),
                      color: Color.fromARGB(56, 255, 255, 255)),
                  child: Center(
                    child: Text(
                      "Website Designing Course",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
             // SizedBox(height: 20,),
              Center(
                child: Text('Software Testing Courses', style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                    color: Colors.white),),
              ),
              SizedBox(height: 20,),
              Container(
                height: 90,width: 350,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 2),
                    color: Color.fromARGB(56, 255, 255, 255)),
                child: Center(
                  child: Text(
                    "software Testing advanced\nCourse",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text('Networking,Server,& Cloud', style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                    color: Colors.white),),
              ),
              SizedBox(height: 20,),
              Container(
                height: 90,width: 350,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 2),
                    color: Color.fromARGB(56, 255, 255, 255)),
                child: Center(
                  child: Text(
                    "software Testing advanced\nCourse",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),SizedBox(height: 20,),
              Container(
                height: 80,width: 350,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 2),
                    color: Color.fromARGB(56, 255, 255, 255)),
                child: Center(
                  child: Text(
                    "AWS Architect Associate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 80,width: 350,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 2),
                    color: Color.fromARGB(56, 255, 255, 255)),
                child: Center(
                  child: Text(
                    "Ms Azure Cloud Administrator",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 90,width: 350,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 2),
                    color: Color.fromARGB(56, 255, 255, 255)),
                child: Center(
                  child: Text(
                    "Red Hat System\n Administrator(RHCSA)",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 90,width: 350,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 2),
                    color: Color.fromARGB(56, 255, 255, 255)),
                child: Center(
                  child: Text(
                    "Red Hat Certified Engnineer\n(RHCE)",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 80,width: 350,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 2),
                    color: Color.fromARGB(56, 255, 255, 255)),
                child: Center(
                  child: Text(
                    "DevOps Engineer",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 90,width: 350,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 2),
                    color: Color.fromARGB(56, 255, 255, 255)),
                child: Center(
                  child: Text(
                    "Cisco Certified Network\nAccociate(CCNA)",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
          SizedBox(height: 20,),
          Center(
            child: Text('Other Courses', style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 22,
                color: Colors.white),),
          ),
          SizedBox(height: 20,),
              Container(
                height: 80,width: 350,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 2),
                    color: Color.fromARGB(56, 255, 255, 255)),
                child: Center(
                  child: Text(
                    "Data Science & AI",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 80,width: 350,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 2),
                    color: Color.fromARGB(56, 255, 255, 255)),
                child: Center(
                  child: Text(
                    "Data Analytics",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 80,width: 350,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 2),
                    color: Color.fromARGB(56, 255, 255, 255)),
                child: Center(
                  child: Text(
                    "Digital Marketing expert",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 80,width: 350,
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 2),
                    color: Color.fromARGB(56, 255, 255, 255)),
                child: Center(
                  child: Text(
                    "Microsoft Power BI",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              //Image.asset("images/WhatsApp Image 2024-06-28 at 10.48.30.jpeg"),
              //Image.asset('images/WhatsApp Image 2024-06-28 at 10.48.30 (1).jpeg')

            ],

          ),
        ),
      ),
    );
  }

}
