// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minorapp/screens/chats.dart';
import 'package:minorapp/screens/notifications.dart';
import 'package:minorapp/screens/user.dart';
import 'package:minorapp/util/card.dart';
import '../util/card.dart';
import '../util/swipe_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

int currentIndex = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List userColors = [
      Colors.grey,
      Colors.grey,
      Colors.grey,
      Color(0xFFF7AC31),
    ];
    List Screens = [
      CardScreen(),
      ChatScreen(),
      NotifScreen(),
      UserPage(),
    ];
    return Scaffold(
      //bottom nav bar
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 36,
          color: Color(0xFFF7AC31),
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,
          size: 28,
        ),
        selectedFontSize: 0,
        unselectedFontSize: 0,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            label: "Discover",
            icon: Icon(
              Icons.beach_access_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: "Chat",
            icon: Icon(
              Icons.chat_bubble_outline_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: "Connections",
            icon: Icon(
              Icons.people_alt_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "Notifications",
            icon: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: userColors[currentIndex],
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: ClipRRect(
                child: Image.asset(
                  'assets/images/profile2.png',
                  height: 38,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ],
      ),
      //appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.0),
        child: AppBar(
          title: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Musafir",
                    style: GoogleFonts.cinzel(
                      fontSize: 24,
                      letterSpacing: 1.25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white, //Color(0xFFF7AC31),
        padding: EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 20,
        ),
        // ignore_for_file: prefer_const_literals_to_create_immutables
        child: Column(
          children: [
            //Profile Page view
            Expanded(
              child: Screens[currentIndex],
            ),
            //Interactive menu
          ],
        ),
      ),
    );
  }
}
