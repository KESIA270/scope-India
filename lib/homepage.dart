import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scopeindiamain/slider.dart';

import 'drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff071e67),
      endDrawer: DrawerBar(),
      appBar: AppBar(backgroundColor: Color(0xff071e67),toolbarHeight: 100,
      title: Image(image: AssetImage('images/scope-india-logo-home-page.png'),
        height: 100,),iconTheme: IconThemeData(
            color: Colors.white
          ),),
      body: SliderAds(),


    );
  }
}
