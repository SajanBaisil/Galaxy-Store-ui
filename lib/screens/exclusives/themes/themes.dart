import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../games/featured/utils/appscard.dart';
import '../../games/featured/utils/titlecard.dart';

class ThemesView extends StatelessWidget {
  const ThemesView({super.key});

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
            const TitleCard(title: 'Latest Game Updates'),
            const SizedBox(
              height: 10,
            ),
            AppsCard(),
            const TitleCard(title: 'Latest Game Updates'),
            const SizedBox(
              height: 10,
            ),
            AppsCard(),
            const TitleCard(title: 'Latest Game Updates'),
            const SizedBox(
              height: 10,
            ),
            AppsCard(),
          ],
        ));
  }
}
