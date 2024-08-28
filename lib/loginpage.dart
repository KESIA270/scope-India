import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';
import 'package:scopeindiamain/homepage.dart';
import 'package:scopeindiamain/registrationpage.dart';

class LoginPage extends StatelessWidget {
  final firebaseke=FirebaseFirestore.instance;
final Fireauth=FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailcontroller=TextEditingController();
  final _passwrdcontroller=TextEditingController();

  var sendLink;
  var otpnum = 0;
  Future<dynamic> inviteMail() async {
    String username = 'josejeen7769@gmail.com';
    String password = 'ksiajosejeena1727';

    var rnd = Random();
    var next = rnd.nextDouble() * 10000;
    while (next < 1000) {
      next *= 10;
    }
    otpnum = next.toInt();
    print("OTP Num ${otpnum}");
    print("email:${_emailcontroller.text}");
    final smtpServer = gmail(username, password);
    final message = Message()
      ..from = Address(username, "Invitation")
      ..recipients.add(_emailcontroller.text)
      ..subject = 'Invitation To Register In Attendance App'
      ..html =
          "<h1>$otpnum</h1>\n<p>Do not share your OTP to anyone.</p>\n<p><h2>You will be forwarded attendance app apk, Register using your email in the app to start using the app<h2></h2></p>";

    try {
      final sendLink = await send(message, smtpServer);
      print('Message sent: ' + sendLink.toString());
      Map<String, dynamic> value = {"otp": otpnum, "status": true};
      otpnum = 0;
      return value;
    } on MailerException catch (e) {
      print('Message not sent.');

      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
      Map<String, dynamic> value = {"otp": 0, "status": false};
      otpnum = 0;
      return value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff071e67),toolbarHeight: 100,
        title: Image(image: AssetImage('images/scope-india-logo-home-page.png'),
          height: 100,),iconTheme: IconThemeData(
          color: Colors.white
      ),),

      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(

            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              TextFormField(
                controller: _emailcontroller,
                decoration: InputDecoration( enabledBorder: OutlineInputBorder(
                  borderRadius:  BorderRadius.circular(11),borderSide: BorderSide(color: Colors.black12)
                ),
                  labelText: 'email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: _passwrdcontroller,
                decoration: InputDecoration(enabledBorder: OutlineInputBorder (
                  borderRadius:  BorderRadius.circular(11),borderSide: BorderSide(color: Colors.black12)
                ),
                  labelText: 'Password',
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    try{
                      await
                      FirebaseAuth.instance.signInWithEmailAndPassword(email:_emailcontroller.text, password: _passwrdcontroller.text);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                    }catch(e){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content:
                          Text('invalid email or password')));
                    };
                    print('Username: $_emailcontroller, Password: $_passwrdcontroller');

                    // After successful login, you can navigate to another page
                    // For example, Navigator.pushReplacementNamed(context, '/home');

                    final invite = await inviteMail();
                    if (invite["status"] !=
                        false) {
                      print(
                          "OTP Emailed!");
                      print(
                          "OTP recd: ${invite["otp"]}");
                      final otp =
                      invite["otp"];
                    } else {
                      print(
                          "Email sending not succesfull");
                    }


                  }
                },
                child: Text('Login',),
              ),SizedBox(height: 30,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage()));
                  },
                  child: Text("you don't have any account? REGISTER NOW",style: TextStyle(color: Colors.indigoAccent),))
            ],
          ),
        ),
      )
    );
  }
}

