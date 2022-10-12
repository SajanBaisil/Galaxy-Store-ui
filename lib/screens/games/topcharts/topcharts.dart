import 'package:customapp/screens/games/topcharts/tabs/toptabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopCharts extends StatelessWidget {
  TopCharts({super.key});
  List gameprofile = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRABsI1Ts4DdsXBVqPViDiEXgwEgEa4ztFkOg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPhadAq0wQeBr0d1dfRNJRFialFq5_9uTHNA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSIwgz3rex_FcNiAPhg6ot0RAXxg242wQlQg&usqp=CAU',
  ];

  List names = ['Civilization', 'Brick Breaker', 'WreckFest'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            TopTabs(),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: ListView(
                  children: List.generate(3, (index) {
                return Container(
                  height: 100,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(gameprofile[index])),
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                names[index],
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Free',
                                style: TextStyle(color: Colors.white),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.2)),
                        child: const Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                );
              })),
            )
          ],
        ),
      ),
    );
  }
}
