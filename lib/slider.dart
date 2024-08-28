import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:scopeindiamain/callme.dart'; // Ensure this file exists
import 'drawer.dart'; // Ensure this file exists

class SliderAds extends StatefulWidget {
  const SliderAds({Key? key}) : super(key: key);

  @override
  State<SliderAds> createState() => _SliderAdsState();
}

class _SliderAdsState extends State<SliderAds> {
  final List<Widget> items = [
    GestureDetector(
      onTap: () {
        // Add functionality if needed
      },
      child: Image.asset('images/Devops-training-scopeindia.jpg'),
    ),
    Image.asset('images/scope-india-aws-certification-course-(1).jpg'),
    Image.asset('images/scope-india-azure-certification-course.jpg'),
    Image.asset('images/scope-india-aws-certification-course-(1).jpg'),
    Image.asset('images/scope-india-azure-certification-course.jpg'),
    Image.asset('images/scope-india-digital-marketing-course.jpg'),
    Image.asset('images/scope-india-dotnet-core-full-stack-course.jpg'),
    Image.asset('images/scope-india-flutter-fullstack-course.jpg'),
    Image.asset('images/scope-india-php-full-stack-course (1).jpg'),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff071e67),
      endDrawer: const DrawerBar(),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            // Carousel Slider
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                height: 270,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: items,
            ),

            // Dots Indicator
            DotsIndicator(
              dotsCount: items.length,
              position: currentIndex.toInt(), // Convert to double
              decorator: DotsDecorator(
                activeColor: Colors.white,
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              ),
            ),

            const SizedBox(height: 20),

            // Information Container
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Image.asset('images/5star.png', height: 100),
                  const Center(
                    child: Text(
                      'Google 4.9 * Rated Institute',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'SCOPE INDIA, your \n   career partner!',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff071e67),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'One of the best Training Destination for Software, Networking and Cloud Computing courses in India with 17 years of Industrial experience.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Software, Networking, and Cloud Professional Education Centre in Kerala from Suffix E Solutions with WORKING PROFESSIONALS oriented on-the-job TRAINING model. SCOPE INDIA provides courses for Software Programming in Python (Data Science | Artificial Intelligence | Machine Learning | Deep Learning, Data Analytics), Java, PHP, .Net, Software Testing Manual and Automation, Cloud Computing (AWS | Azure), Server Administration (MCSE | RHCE), Networking (CCNA), Mobile App Development in Flutter, and Digital Marketing. Training with 100% Trusted Job Based Internship Model. SCOPE INDIA has a Strong Placement Cell that provides jobs to thousands of students every year. We assure you, you won't regret it after training from SCOPE INDIA!",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'This is how SCOPE INDIA can support both newbies and experienced in the industry to upgrade their skills.',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset('images/trainingicon.png'),
                  const SizedBox(height: 0),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Training',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color: Color(0xff071e67),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Center(
                      child: Text(
                        "You are trained under Suffix E Solutions working professionals, on-the-job training model.",
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset('images/intershipicon.png'),
                  const SizedBox(height: 0),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Internship',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color: Color(0xff071e67),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Center(
                      child: Text(
                        "After Course completion you will be proceeded to live projects with a 6 months of internship Certificate.",
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset('images/groomingicon.png'),
                  const SizedBox(height: 0),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Grooming',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color: Color(0xff071e67),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Center(
                      child: Text(
                        "CV preparation, Interview preparation, and personality development",
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset('images/placementicon.png'),
                  const SizedBox(height: 0),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Placements',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color: Color(0xff071e67),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Center(
                      child: Text(
                        "Give 100% free placement support to all our fellow techies through SCOPE INDIA's Placement cell",
                      ),
                    ),
                  ),
                  const SizedBox(height: 70),
                  Callme(),
                  const SizedBox(height: 70),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
