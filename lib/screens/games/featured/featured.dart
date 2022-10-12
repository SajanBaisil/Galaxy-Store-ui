import 'package:customapp/screens/games/featured/utils/appscard.dart';
import 'package:customapp/screens/games/featured/utils/caroulslider.dart';
import 'package:customapp/screens/games/featured/utils/games_to_play.dart';
import 'package:customapp/screens/games/featured/utils/newbie.dart';
import 'package:customapp/screens/games/featured/utils/titlecard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Featured extends StatelessWidget {
  Featured({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          const TitleCard(title: 'Latest Game Updates'),
          const SizedBox(
            height: 10,
          ),
          AppsCard(),
          const TitleCard(title: 'PGA TOUR Golf Shootout'),
          Caroulslider(),
          const TitleCard(title: 'Games to play right now'),
          GamesToPlay(),
          const TitleCard(title: 'Newbie game'),
          NewBie(),
          TitleCard(title: 'Instant plays for you'),
          Caroulslider(),
        ],
      ),
    );
  }
}
