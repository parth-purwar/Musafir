// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:minorapp/screens/trippage.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

class CardWidget extends StatelessWidget {
  final image;
  final text;
  final description;

  CardWidget({required this.image, this.text, this.description = "dummy"});

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size.height;
    return Swipable(
      onSwipeRight: null,
      verticalSwipe: false,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TripPage(
                image: image,
                text: text,
                description: description,
              ),
            ),
          );
        },
        child: Container(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image(
                  image: AssetImage(
                    image,
                  ),
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                      begin: FractionalOffset.center,
                      end: FractionalOffset(0.5, 0.725),
                      colors: [
                        Color.fromARGB(0, 0, 0, 0).withOpacity(0.0),
                        Colors.black87.withOpacity(0.75),
                      ],
                      stops: [
                        0.0,
                        1.0,
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screensize / 2.15,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1,
                        wordSpacing: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Traveller',
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 1.5,
                        wordSpacing: 1,
                        color: Color(0xFFF7AC31),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      //description
                      description,
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1.5,
                        wordSpacing: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(1),
                spreadRadius: 0.25,
                blurRadius: 12,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
        ),
      ),
    );
  }
}
