import 'dart:ui';

import 'package:flutter/material.dart';

class Placement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhotoGridScreen(),
    );
  }
}

class PhotoGridScreen extends StatelessWidget {
  final List<Item> items = [
    Item(
      photo: 'images/steve.jpg',
      details: "Steve Brayone EB,",
      profession: 'Junior Software Engineer',
      place: 'Sioniq Tech Pvt Ltd, Kochi',
    ),
    Item(
      photo: 'images/placegisna (1).png',
      details: 'Gisna Shaji',
      profession: '.Net Developer',
      place: 'Toadfly Technologies, Infopark, Kochi',
    ),
    Item(
      photo: 'images/placeamrutha.png',
      details: 'Amrutha C C',
      profession: 'Junior PHP Developer',
      place: 'Coredrops, Kochi',
    ),
    Item(
      photo: 'images/placesaabu.jpeg',
      details: 'Shahul Sabu',
      profession: 'flutter developer',
      place: 'Wander hikes Pvt Ltd, malappuram',
    ),
    Item(
      photo: 'images/placehari-sankar.jpg',
      details: 'Hari Sankar',
      profession: 'Fullstack Java Developer',
      place: 'Flytxt Mobile Solutions, Technopark, Trivandrum',
    ),
    Item(
      photo: 'images/Place1.jpg',
      details: 'Aida Benny',
      profession: 'Junior Software Developer',
      place: 'Finch Technologies, Kochi',
    ),
    Item(
      photo: 'images/placemariya (1).jpg',
      details: 'Mariya Xavy',
      profession: 'Junior Software Engineer',
      place: 'Sioniq Tech Pvt Ltd, Kochi',
    ),
    Item(
      photo: 'images/placeazeem.jpg',
      details: 'Azeem A',
      profession: 'Angular JS Developer',
      place: 'KRITI Microsystems, Trivandrum',
    ),

    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff071e67),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff071e67),
        title: Text(
          'Placement Cell',
          style: TextStyle(color: Color(0xFFFBBA02)),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: .5,
              crossAxisSpacing: 8,
              mainAxisSpacing: 25,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return GridItem(
                item: items[index],
              );
            },
          ),
        ),
      ),
    );
  }
}

class Item {
  final String photo;
  final String details;
  final String profession;
  final String place;

  Item(
      {required this.photo,
        required this.details,
        required this.profession,
        required this.place});
}

class GridItem extends StatelessWidget {
  final Item item;

  const GridItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              item.photo,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4),
            child: Text(
              item.details,
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
            ),
          ),
          Padding(padding: EdgeInsets.all(1)),
          Text(
            item.profession,
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 11),
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.all(1)),
          Text(
            item.place,
            style: TextStyle(
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}