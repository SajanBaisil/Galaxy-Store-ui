import 'package:customapp/screens/games/featured/featured.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FeaturedHome extends StatelessWidget {
  const FeaturedHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Featured(),
    );
  }
}
