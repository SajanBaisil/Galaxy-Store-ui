import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ActionView extends StatelessWidget {
  ActionView({super.key});

  List gameprofile = [
    'https://i.pinimg.com/236x/6d/b1/41/6db14180e2f6f2849c75116eb2b6f2ae.jpg',
    'https://i.pinimg.com/236x/2c/4b/ae/2c4bae37e7c5bab64a87cdaa84c0b56e.jpg',
    'https://i.pinimg.com/236x/58/43/90/584390cbe31d633698149cf05f7d7d48.jpg',
    'https://i.pinimg.com/236x/19/bd/86/19bd86a84ba7f36c0f0c6fe58ecf8ffe.jpg',
    'https://i.pinimg.com/236x/4c/99/87/4c99877bc5e13df7d4e6b373c80a5879.jpg',
    'https://i.pinimg.com/236x/71/bf/21/71bf21d3948c3f36a00ae61204f9a121.jpg',
    'https://i.pinimg.com/236x/36/43/27/364327d5e4e040b3f3bb6998aa29374f.jpg',
  ];

  List names = [
    'Pubg',
    'Free Fire',
    'Call of Duty',
    'Shadow Fight',
    'Modern Strike',
    'Apex Legends',
    'Zombie Hunter'
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
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
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
                  padding: const EdgeInsets.all(10),
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
