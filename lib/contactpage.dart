import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 

      backgroundColor: Color(0xff071e67),
    appBar:AppBar (backgroundColor: Color(0xff071e67),toolbarHeight: 100,
        title: Image(image: AssetImage('images/scope-india-logo-bird.png'),
          height: 100,),iconTheme: IconThemeData(
          color: Colors.white
      ),
),
body:SingleChildScrollView(
  child:Column(
    children: [
      SizedBox(width: 15,),
      Center(child: Text('SCOPE INDIA is open\n 365 days a year',
      style: TextStyle(fontSize: 30,color: Colors.yellow,fontWeight: FontWeight.w900),),),
      SizedBox(height: 20,),
       Image.asset(
                  "images/5star.png",
                  height: 100,
                ),
                Text(
                  "Google 4.9 * Rated Institute",
                  style: TextStyle(
                      color: const Color.fromARGB(218, 255, 255, 255),
                      fontSize: 10),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Location",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Branches(
                  "Technopark TVM, Kerala",
                  "Phase 1, Main Gate, Diamond Arcade,\nNear Technopark, Trivandrum",
                  "9745936073",
                  "technopark@scopeindia.org",
                ),
                SizedBox(
                  height: 30,
                ),
                Branches(
                  "Thampanoor TVM, Kerala",
                  "TC 25/1403/3, Athens Plaza, \nSS Kovil Road,Thampanoor, Trivandrum, \nKerala 695001",
                  "9745936073",
                  "info@scopeindia.org",
                ),
                SizedBox(
                  height: 30,
                ),
                Branches(
                  "Kochi, Kerala",
                  "SCOPE INDIA, Vasanth Nagar Rd,\nnear JLN Metro Station,\nKaloor, Kochi,\n Kerala 682025",
                  "7592939481",
                  "kochi@scopeindia.org",
                ),
                SizedBox(
                  height: 30,
                ),
                Branches(
                  "Nagercoil, Tamil Nadu",
                  "SCOPE INDIA, Near WCC College,\nPalace Rd, Nagercoil, \nTamil Nadu 629001",
                  "8075536185",
                  "ngl@scopeindia.org",
                ),
                SizedBox(
                  height: 30,
                ),
                Branches(
                  "Nagercoil, Tamil Nadu",
                  "SCOPE INDIA, Pharma Street,\n 5/2 Ward 28,\nDistillery Road, Putheri Nagercoil\n(Near WCC Jn)",
                  "8075536185",
                  "ngl@scopeindia.org",
                ),
                SizedBox(
                  height: 40,
                ),
                // Container(
                //   margin: EdgeInsets.only(bottom: 40),
                //   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                //   // width: MediaQuery.of(context).size.width / 2,
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(10)),
                //   child: Text("GET A FREE CALL BACK"),
                // )
              ],
            ),
          ),
    );
        

    
  }

  Container Branches(
    String branch,
    String location,
    String phone,
    String mail,
  ) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white, width: 2),
          color: Color.fromARGB(56, 255, 255, 255)),
      child: Column(
        children: [
          Text(
            branch,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on_rounded,
                size: 15,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    location,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.phone,
                size: 15,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "+91 $phone",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.mail,
                size: 15,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                mail,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.link,
                size: 15,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "www.scopeindia.org",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.map,
                size: 15,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Location Route Map",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
  
  


  

    
  

