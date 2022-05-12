// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

class TripPage extends StatelessWidget {
  final image;
  final text;
  final description;
  TripPage({required this.image, this.text, this.description});

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            ClipRRect(
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
                gradient: LinearGradient(
                  begin: FractionalOffset(0.5, 0.25),
                  end: FractionalOffset(0.5, 0.525),
                  colors: [
                    Color.fromARGB(0, 0, 0, 0).withOpacity(0.0),
                    Colors.black87.withOpacity(0.75),
                  ],
                  // ignore: prefer_const_literals_to_create_immutables
                  stops: [
                    0.0,
                    1.0,
                  ],
                ),
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
                    height: screensize / 1.8,
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
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Tags',
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 1.5,
                      wordSpacing: 1,
                      color: Color(0xFFF7AC31),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Flexible(
                    child: Wrap(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                width: 2.0, color: const Color(0xFFFACD83)),
                          ),
                          child: Text(
                            'Shopping',
                            style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 1.5,
                              wordSpacing: 0,
                              color: Color(0xFFFACD83),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        //Tags Containers below
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                width: 2.0, color: const Color(0xFFFACD83)),
                          ),
                          child: Text(
                            'Clubbing',
                            style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 1.5,
                              wordSpacing: 0,
                              color: Color(0xFFFACD83),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                width: 2.0, color: const Color(0xFFFACD83)),
                          ),
                          child: Text(
                            'Beach',
                            style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 1.5,
                              wordSpacing: 0,
                              color: Color(0xFFFACD83),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                width: 2.0, color: const Color(0xFFFACD83)),
                          ),
                          child: Text(
                            'Hiking',
                            style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 1.5,
                              wordSpacing: 0,
                              color: Color(0xFFFACD83),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                width: 2.0, color: const Color(0xFFFACD83)),
                          ),
                          child: Text(
                            'Nature Watch',
                            style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 1.5,
                              wordSpacing: 0,
                              color: Color(0xFFFACD83),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        width: double.infinity,
      ),
    );
  }
}
