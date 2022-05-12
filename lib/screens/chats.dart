// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:minorapp/screens/person.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
            // ignore: prefer_const_constructors
            padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
                width: 2.0,
                color: Colors.grey,
              ),
            ),
            child: Text(
              'Search',
              style: TextStyle(
                fontSize: 14,
                letterSpacing: 1.5,
                wordSpacing: 0,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Chat(
            image: 'assets/profiles/profile3.jpeg',
            name: 'Nitesh Tyagi',
            message: 'I worked on this project too',
          ),
          Chat(
            image: 'assets/profiles/message2.jpg',
            name: 'Farhan Khan',
            message: 'How does the plan sound? ',
          ),
          Chat(
            image: 'assets/profiles/message3.jpg',
            name: 'Samantha Puri',
            message: 'Puducherry, sounds like a plan! 😍',
          ),
          Chat(
            image: 'assets/profiles/message4.jpg',
            name: 'Eisha Sharma',
            message: 'New Match! Start the conversation!',
          ),
          Chat(
            image: 'assets/profiles/message1.jpg',
            name: 'Ayushi Roy',
            message: 'New Match! Start the conversation!',
          ),
          Chat(
            image: 'assets/profiles/message5.jpg',
            name: 'Ishaan Rathore',
            message: 'New Match! Start the conversation!',
          ),
          Chat(
            image: 'assets/profiles/message6.jpg',
            name: 'Preeti Singh',
            message: 'New Match! Start the conversation!',
          ),
          Chat(
            image: 'assets/profiles/message7.jpg',
            name: 'Jasmine Mehrotra',
            message: 'New Match! Start the conversation!',
          ),
          Chat(
            image: 'assets/profiles/message8.jpg',
            name: 'Shiddhant Dubey',
            message: 'New Match! Start the conversation!',
          ),
          Chat(
            image: 'assets/profiles/message9.jpg',
            name: 'Raj Thakur',
            message: 'New Match! Start the conversation!',
          ),
        ],
      ),
    );
  }
}
