// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: AlignmentDirectional.center,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                border: Border.all(
                  width: 2.5,
                  color: Color(0xFFF7AC31),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(75),
                child: Image(
                  image: AssetImage('assets/images/profile2.png'),
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Username',
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 1.5,
              wordSpacing: 0,
              color: Color(0xFFF7AC31),
              fontWeight: FontWeight.w900,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7, horizontal: 0),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 12,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFFCDEAD),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 2.0, color: const Color(0xFFFCDEAD)),
            ),
            child: Text(
              '@parth_purwar',
              style: TextStyle(
                fontSize: 14,
                letterSpacing: 1.5,
                wordSpacing: 1.5,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Name',
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 1.5,
              wordSpacing: 0,
              color: Color(0xFFF7AC31),
              fontWeight: FontWeight.w900,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7, horizontal: 0),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 12,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFFCDEAD),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 2.0, color: const Color(0xFFFCDEAD)),
            ),
            child: Text(
              'Parth Purwar',
              style: TextStyle(
                fontSize: 14,
                letterSpacing: 1.5,
                wordSpacing: 1.5,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Email Address',
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 1.5,
              wordSpacing: 0,
              color: Color(0xFFF7AC31),
              fontWeight: FontWeight.w900,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7, horizontal: 0),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 12,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFFCDEAD),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 2.0, color: const Color(0xFFFCDEAD)),
            ),
            child: Text(
              'parthpurwar1@gmail.com',
              style: TextStyle(
                fontSize: 14,
                letterSpacing: 1.5,
                wordSpacing: 1.5,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: AlignmentDirectional.center,
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
                "Log Out",
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
        ],
      ),
    );
  }
}
