import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Callme extends StatefulWidget {
  Callme({super.key});

  @override
  State<Callme> createState() => _CallmeState();
}

class _CallmeState extends State<Callme> {
  final numbertocall = TextEditingController();
  final callbackname = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final firebasefire = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blueAccent,
        height: 300,
        width: 400,
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'GET A CALL BACK',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.green[900]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 50,
                child: TextFormField(
                  controller: callbackname,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white70,
                    focusColor: Colors.black,
                    labelText: 'ENTER YOUR NAME',
                  ),
                  obscureText: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                height: 50,
                child: TextFormField(
                  controller: numbertocall,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white70,
                    focusColor: Colors.black,
                    labelText: 'ENTER YOUR PHONE NO.',
                  ),
                  obscureText: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter phone number';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () async {
                    if(formkey.currentState!.validate()){
                      try {
                        await firebasefire.collection('Callrequests').add({
                          'callname': callbackname.text,
                          'notocall': numbertocall.text,
                        });

                        callbackname.clear();
                        numbertocall.clear();

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.white70,
                            content: Text(
                              'sent successfully',
                              style: TextStyle(color: Colors.blueAccent),
                            )));
                      } catch (e) {
                        print(e);
                      }
                    }
                  },
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}