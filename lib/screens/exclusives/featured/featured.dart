import 'package:customapp/screens/games/featured/featured.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../games/featured/utils/appscard.dart';
import '../../games/featured/utils/caroulslider.dart';
import '../../games/featured/utils/games_to_play.dart';
import '../../games/featured/utils/newbie.dart';
import '../../games/featured/utils/titlecard.dart';

class FeaturedView extends StatelessWidget {
  const FeaturedView({super.key});

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
            const TitleCard(title: 'Instant plays for you'),
            Caroulslider(),
          ],
        ));
  }
}
