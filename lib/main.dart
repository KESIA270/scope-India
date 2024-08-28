import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scopeindiamain/homepage.dart';
import 'package:scopeindiamain/loginpage.dart';
import 'package:scopeindiamain/registrationpage.dart';

import 'firebase_options.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Homepage(),
    );
  }
}

