import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Free extends StatelessWidget {
  Free({super.key});

  List gameprofile = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRABsI1Ts4DdsXBVqPViDiEXgwEgEa4ztFkOg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPhadAq0wQeBr0d1dfRNJRFialFq5_9uTHNA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSIwgz3rex_FcNiAPhg6ot0RAXxg242wQlQg&usqp=CAU',
    'https://i.pinimg.com/236x/55/cc/47/55cc47dffb86808e594877078656404b.jpg',
    'https://i.pinimg.com/236x/4b/df/e3/4bdfe362a4fe436fc10f67c94958743d.jpg',
    'https://i.pinimg.com/236x/61/7b/dd/617bddf1ad775c039ce0cda32b856f16.jpg',
    'https://i.pinimg.com/236x/85/5f/3a/855f3a7f71be87a8ea08c2f6b601c22c.jpg',
  ];

  List names = [
    'Civilization',
    'Brick Breaker',
    'WreckFest',
    'Temple Run',
    'Ludo',
    'Pubg',
    'Subway Surfers'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
            children: List.generate(gameprofile.length, (index) {
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
      ),
    );
  }
}
