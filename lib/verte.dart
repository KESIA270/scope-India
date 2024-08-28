import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scopeindiamain/drawer.dart';
import 'package:scopeindiamain/javacoursedetails.dart';
import 'package:scopeindiamain/pythoncoursedetails.dart';

class Coursess extends StatefulWidget {
  const Coursess({super.key});

  @override
  State<Coursess> createState() => _CoursesState();
}

class _CoursesState extends State<Coursess> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
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
              SizedBox(height: 20),
              Text(
                'Center for Software, Networking, & Cloud Education',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'All Trainers at SCOPE INDIA are working professionals, Software Engineers, Networking Engineers, and Software Test Engineers of Suffix E Solutions with',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
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
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Software Programming Courses',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 20),

              // Retrieve and display course data from Firestore
              StreamBuilder<QuerySnapshot>(
                stream: _firestore.collection('courses').snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(child: Text('No courses available'));
                  }

                  return Column(
                    children: snapshot.data!.docs.map((doc) {
                      final courseName = doc['name'];
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Pythondetails(coursename: courseName),
                            ),
                          );
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
                              courseName,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
