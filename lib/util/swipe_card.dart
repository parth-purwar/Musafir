import 'package:flutter/material.dart';
import 'card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CardWidget(
          image: 'assets/profiles/beach1.jpg',
          text: 'Mustafa Sheikh',
          description:
              'Cant take the heat, gotta hit the beach 😰🥵\nI swear I will find atlantis this summer',
        ),
        CardWidget(
          image: 'assets/profiles/market1.jpg',
          text: 'Anushka Gupta',
          description:
              'Not much, just trying to bargain the best price of pretty much everything',
        ),
        CardWidget(
          image: 'assets/profiles/hill1.jpg',
          text: 'Rahul Mishra',
          description:
              'Trekked 7 most famous treks in India\nPlanning to climb Mt. Everest next lol',
        ),
        CardWidget(
          image: 'assets/profiles/beach2.jpg',
          text: 'Shanaya Singhania',
          description: 'Sun Kissed 🌞\nBeach baby 🌊\nGoa is on!!',
        ),
        CardWidget(
          image: 'assets/profiles/market2.jpg',
          text: 'Riddhima Kapoor',
          description:
              'Cant get enough of browsing markets 😍\nNext destination #Jaipur',
        ),
        CardWidget(
          image: 'assets/profiles/nature1.jpg',
          text: 'Satwik Sharma',
          description:
              'I love to travel to safaris and jungles.\nPhotographs featured on NatGeo cover\n',
        ),
        CardWidget(
          image: 'assets/profiles/yoga1.jpg',
          text: 'Shivam Pratap Singh',
          description: '#yogi #dharmik',
        ),
        CardWidget(
          image: 'assets/profiles/nature2.jpg',
          text: 'Yuwaraj Gurjar',
          description:
              'Profound affection for nature since his childhood\nLikes to go for trekking to various forts and other places',
        ),
      ],
    );
  }
}
