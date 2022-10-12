import 'package:carousel_slider/carousel_slider.dart';
import 'package:customapp/screens/games/featured/utils/caroulslider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PreRegister extends StatelessWidget {
  PreRegister({super.key});

  List gameprofile = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRABsI1Ts4DdsXBVqPViDiEXgwEgEa4ztFkOg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPhadAq0wQeBr0d1dfRNJRFialFq5_9uTHNA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSIwgz3rex_FcNiAPhg6ot0RAXxg242wQlQg&usqp=CAU',
  ];
  List app1 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGHX9fqmXWQ2sXIne4uklPKN-gMOH2gnkMBA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSEJQpNhv5Dssmm9bqeD9PcI6-UNq8F_x2Ag&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGHX9fqmXWQ2sXIne4uklPKN-gMOH2gnkMBA&usqp=CAU'
  ];
  List app2 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD0us75sePGUJwbYZms7k1MutUfjIydU5SEA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQagqLWTTto32OZWRdITyZTak1PJJP5W_ZL4ECP18YPGMciI0Dz_BqRfKp77p-9NNvi6t0&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTce1dRdUNUDaVvG6fs2Vht08tSAm70MnR73g&usqp=CAU',
  ];
  List app3 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnPZ8BEq5MB8vMOWVXwemhzWPo2Ax16b8HMA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSIwgz3rex_FcNiAPhg6ot0RAXxg242wQlQg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwtyK6XmJLYRQkART21EytNrR2K6jsu0H1ig&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            height: 270,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.black),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(gameprofile[0]))),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Civilization: Reign of Power',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Coming Soon',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'NEXON Korea Corporation',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                      //  const SizedBox(
                      //   width: ,
                      // ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.2)),
                        child: const Center(
                          child: Text(
                            'Pre-Register',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 400,
                  child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: false,
                        enableInfiniteScroll: false,
                        autoPlayCurve: Curves.easeInCubic,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 3000),
                        viewportFraction: 0.80,
                      ),
                      items: List.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            // padding: const EdgeInsets.all(10),
                            // height: 20,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(app1[index]))),
                          ),
                        );
                      })),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    'A new MMOSLG based on the world of Sid Meiers Civilization 5',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 270,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.black),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(gameprofile[1]))),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Brick Breaker House',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Available on Oct 24',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Mobrix Coorperation',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                      //  const SizedBox(
                      //   width: ,
                      // ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.2)),
                        child: const Center(
                          child: Text(
                            'Pre-Register',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 400,
                  child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: false,
                        enableInfiniteScroll: false,
                        autoPlayCurve: Curves.easeInCubic,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 3000),
                        viewportFraction: 0.80,
                      ),
                      items: List.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            // padding: const EdgeInsets.all(10),
                            // height: 20,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(app2[index]))),
                          ),
                        );
                      })),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    'Enjoy Brick Breaker game and decorate attractive premium house interior',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 270,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.black),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(gameprofile[2]))),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'WreckFest',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Coming Soon',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Handy Games Coorperation',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                      //  const SizedBox(
                      //   width: ,
                      // ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.2)),
                        child: const Center(
                          child: Text(
                            'Pre-Register',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 400,
                  child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: false,
                        enableInfiniteScroll: false,
                        autoPlayCurve: Curves.easeInCubic,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 3000),
                        viewportFraction: 0.80,
                      ),
                      items: List.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            // padding: const EdgeInsets.all(10),
                            // height: 20,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(app3[index]))),
                          ),
                        );
                      })),
                ),
                const Text(
                  'Enjoy Wreckfest game and complete goals',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
