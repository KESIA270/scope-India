import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firestore Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Function to add data to Firestore
  Future<void> addData() async {
    try {
      await firestore.collection('users').add({
        'name': 'John Doe',
        'age': 30,
        'email': 'johndoe@example.com',
      });
      print('Data added successfully!');
    } catch (e) {
      print('Error adding data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Firestore Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            addData(); // Call function to add data
          },
          child: Text('Add Data to Firestore'),
        ),
      ),
    );
  }
}
// lass coursess extends StatelessWidget {
// const coursess({super.key});
//
//
// @override
// Widget build(BuildContext context) {
// return Container(
//
// margin: EdgeInsets.only(left: 20, right: 20),
// padding: EdgeInsets.all(20),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(15),
// border: Border.all(color: Colors.white, width: 2),
// color: Color.fromARGB(56, 255, 255, 255)
// ),
// // child: Text("$corse",
// style: TextStyle(
// color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700
// ),),
//
//
// );
