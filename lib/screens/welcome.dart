// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:minorapp/screens/home.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    'welcome2.png',
    'welcome1.png',
    'welcome3.png',
  ];
  List headings = [
    'Find your Travel Buddy',
    'Solo Travel Extraordinnaire',
    'Discover the Undiscovered',
  ];
  List subtitles = [
    'Musafir shows you other fellow travelers and lcal citizens based on your travel interests so you can enjoy company if and when you want to, but only if you match with them',
    'Musafir suggests travel companions based on your intent or interests, so you can pick the best adventure and the companions!',
    'We curate challenges that confront the wanderer within you, thta lets you explore the unexplored and celebrate the true spirit of travel and anventure by taking the road less taken!',
  ];
  Container getIcon(int index) {
    if (index == 0) {
      return Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(
              Icons.arrow_drop_down_rounded,
              size: 42,
              color: Color(0xFFF7AC31),
            ),
            Icon(
              Icons.arrow_drop_down_rounded,
              size: 18,
              color: Colors.grey,
            ),
            Icon(
              Icons.arrow_drop_down_rounded,
              size: 18,
              color: Colors.grey,
            ),
          ],
        ),
      );
    }
    if (index == 1) {
      return Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(
              Icons.arrow_drop_down_rounded,
              size: 18,
              color: Colors.grey,
            ),
            Icon(
              Icons.arrow_drop_down_rounded,
              size: 42,
              color: Color(0xFFF7AC31),
            ),
            Icon(
              Icons.arrow_drop_down_rounded,
              size: 18,
              color: Colors.grey,
            ),
          ],
        ),
      );
    }
    if (index == 2) {
      return Container(
        child: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
            padding: EdgeInsets.symmetric(
              vertical: 7,
              horizontal: 25,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 2.0, color: const Color(0xFFF7AC31)),
            ),
            child: Text(
              "Get Started!",
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 1.5,
                wordSpacing: 0,
                color: Color(0xFFF7AC31),
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: screensize / 3.75,
                    ),
                    Image(
                      height: 200,
                      image: AssetImage('assets/images/' + images[index]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      headings[index],
                      style: TextStyle(
                        fontSize: 21,
                        letterSpacing: 1.5,
                        wordSpacing: 1,
                        color: Colors.black87,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        subtitles[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 1.5,
                          wordSpacing: 1,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    getIcon(index),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
