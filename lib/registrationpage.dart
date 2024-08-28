

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scopeindiamain/loginpage.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final firebaseke=FirebaseFirestore.instance;
  final Fireauth=FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _FirstnameController = TextEditingController();
  TextEditingController _SecondController = TextEditingController();
  TextEditingController _DateController = TextEditingController();
  //TextEditingController _FirstnameController = TextEditingController();
  //TextEditingController _FirstnameController = TextEditingController();
  //TextEditingController _FirstnameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
   TextEditingController _passwordController = TextEditingController();

  TimeOfDay? time;
  Future<void>getdate()async{
    final DateTime currentdate = DateTime.now();
    final DateTime? selecteddate = await showDatePicker(context: context,
        firstDate: DateTime(currentdate.year-50), lastDate: currentdate,initialDate: currentdate);
    if(selecteddate!=null){
      _DateController.text=formatdate(selecteddate);
    }
  }
  String formatdate(DateTime date){
    return "${date.day.toString().padLeft(2,"0")}-${date.month.toString().padLeft(2,"0")}-${date.year}";
  }

  Future<void>gettime()async{
    final TimeOfDay currenttime = TimeOfDay.now();
    final TimeOfDay? selectedtime = await showTimePicker(context: context,
        initialTime: currenttime);
    if(selectedtime!=null){
      String formattime = DateFormat.Hm().format(DateTime(2024,1,1,selectedtime.hour,selectedtime.minute));
      _DateController.text=formattime;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff071e67),
      appBar:AppBar(
        backgroundColor: Color(0xff071e67),toolbarHeight: 100,
        title: Image(image: AssetImage('images/scope-india-logo-home-page.png'),
          height: 100,),iconTheme: IconThemeData(
          color: Colors.white
      ),),
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              TextFormField(
              controller: _FirstnameController, // Assuming _FirstnameController is your TextEditingController
              decoration: InputDecoration(
                labelText:  'First Name',// Label text for the text field
                labelStyle: TextStyle(color: Colors.black), // Color of the label text
                filled: true, // Enables the text field to be filled with a color
                fillColor: Colors.grey[200], // Color of the text field background
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2.0), // Border color and width
                  borderRadius: BorderRadius.circular(10.0), // Border radius
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2.0), // Focused border color and width
                  borderRadius: BorderRadius.circular(10.0), // Border radius
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2.0), // Border color and width for validation error
                  borderRadius: BorderRadius.circular(10.0), // Border radius
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2.0), // Border color and width for focused validation error
                  borderRadius: BorderRadius.circular(10.0), // Border radius
                ),
                errorStyle: TextStyle(color: Colors.red), // Color of the error text
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your First Name';
                }
                return null;
              },
              style: TextStyle(color: Colors.black), // Color of the text entered in the text field
            ),

              SizedBox(height: 20.0),
                TextFormField(
                  controller: _SecondController,
                  decoration: InputDecoration(  filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Second Name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Second Name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: _DateController,
                  onTap: (){
                    getdate();
                  },
                  decoration: InputDecoration(filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'date of birth',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your Date of birth';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    // You can add more email validation here if needed
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Password',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    // You can add more password validation here if needed
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () async{
                    try{
                      if(_formKey.currentState!.validate()){
                         await FirebaseAuth.instance.createUserWithEmailAndPassword(email:_emailController.text,
                            password: _passwordController.text);
                        firebaseke.collection('users').add({
                          "firstname" : _FirstnameController.text,
                          'secondname':_SecondController.text,
                          "Date"   :_DateController.text,
                          "email": _emailController.text,
                          "password":_passwordController.text,

                        });
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      }
                    }catch(e){
                      print(e);
                    }

                  },
                  child: Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   _usernameController.dispose();
  //   _emailController.dispose();
  //   _passwordController.dispose();
  //   super.dispose();
  // }
}
