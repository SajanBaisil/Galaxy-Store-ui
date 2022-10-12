import 'package:customapp/screens/games/topcharts/topcharts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Exclusives extends StatelessWidget {
  const Exclusives({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black, body: TopCharts());
  }
}
