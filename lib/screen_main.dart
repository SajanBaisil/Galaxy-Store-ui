import 'package:customapp/screens/exclusives/exclusivescreen.dart';
import 'package:customapp/screens/games/gamesscreen.dart';
import 'package:customapp/screens/home/homescreen.dart';
import 'package:customapp/screens/menu/menuscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

List screens = [const Homescreen(), const ExclusiveScreen(),  GamesScreen(), const MenuScreen()];
int curentindex = 0;

class _ScreenMainState extends State<ScreenMain> {
  void onchange(index) {
    setState(() {
      curentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[curentindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: curentindex,
          onTap: onchange,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.explicit), label: 'Exclusives'),
            BottomNavigationBarItem(
                icon: Icon(Icons.gamepad_outlined), label: 'Games'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          ]),
    );
  }
}
