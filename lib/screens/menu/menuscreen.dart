import 'package:customapp/screens/menu/utils/firstcontainer.dart';
import 'package:customapp/screens/menu/utils/fourthcontainer.dart';
import 'package:customapp/screens/menu/utils/items.dart';
import 'package:customapp/screens/menu/utils/second_container.dart';
import 'package:customapp/screens/menu/utils/third_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Container(
                color: Colors.black,
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Galaxy Store',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Customise Profile',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/images.jpg')),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const FirstContainer(),
            const SecondContainer(),
            const ThirdContainer(),
            const FourthContainer()
          ],
        ),
      ),
    );
  }
}
