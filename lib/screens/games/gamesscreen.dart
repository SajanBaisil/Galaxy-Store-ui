import 'package:carousel_slider/carousel_slider.dart';
import 'package:customapp/screens/games/featured/featured.dart';
import 'package:customapp/screens/games/pre_register/preregister.dart';
import 'package:customapp/screens/games/topcharts/topcharts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GamesScreen extends StatefulWidget {
  GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen>
    with TickerProviderStateMixin {
  int activeTab = 0;

  List Gamelist = [
    'assets/games/game1.jpg',
    'assets/games/game2.jpg',
    'assets/games/game3.jpg',
    'assets/games/game4.jpg',
    'assets/games/gamae5.jpg',
    'assets/games/game6.jpg',
  ];

  List title1 = [
    'IN-GAME EVENT',
    'INSTANT PLAYS',
    'GALAXY STORE EXCLUSIVE',
    'IN-GAME EVENT',
    'INSTANT PLAYS',
    'GALAXY STORE EXCLUSIVE',
  ];
  List title2 = [
    'CALL OF DUTY',
    'POWER FORCES',
    'FORTNITE',
    'GUERRILLA',
    'COUNTER STRIKE',
    'APEX LEGENDS'
  ];
  List title3 = [
    'PLAY FREE GAMES',
    'COMPETE WITH OTHERS',
    'HAPPY HALLOWEEN',
    'PLAY FREE GAMES',
    'COMPETE WITH OTHERS',
    'HAPPY HALLOWEEN',
  ];
  List title4 = [
    'NO DOWNLOAD',
    'NO DOWNLOAD',
    'NO DOWNLOAD',
    'NO DOWNLOAD',
    'NO DOWNLOAD',
    'NO DOWNLOAD',
  ];

  // late TabController tabContoller;
  // @override
  // void initState() {
  //   tabContoller = TabController(
  //     vsync: this,
  //     length: 3,
  //   );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
                backgroundColor: Colors.black,
                automaticallyImplyLeading: false,
                stretch: true,
                expandedHeight: 300,
                title: Container(
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30)),
                  child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 18, top: 13),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.white),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        border: InputBorder.none),
                  ),
                ),
                actions: const [
                  Icon(
                    Icons.language,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Icon(
                    Icons.wallet_giftcard,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
                floating: true,
                pinned: true,
                snap: true,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.only(top: 80, bottom: 60),
                  child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        enableInfiniteScroll: true,
                        autoPlayCurve: Curves.easeInCubic,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 1500),
                        viewportFraction: 0.99,
                      ),
                      items: List.generate(Gamelist.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      Gamelist[index],
                                    ))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title1[index],
                                  style: const TextStyle(
                                      color: Colors.blue, fontSize: 14),
                                ),
                                Text(
                                  title2[index],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  title3[index],
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                Text(
                                  title4[index],
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(50),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.black,
                        child: const Center(
                            child: Icon(
                          Icons.light_mode,
                          color: Colors.white,
                        )),
                      ),
                      Container(
                        height: 30,
                        width: 3,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      TabBar(
                          padding: const EdgeInsets.only(left: 13),
                          isScrollable: true,
                          indicatorWeight: 3,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20)),
                          tabs: const [
                            Tab(
                              child: Center(
                                child: Text(
                                  'Featured',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Tab(
                              child: Center(
                                child: Text(
                                  'Pre-register',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Tab(
                              child: Center(
                                child: Text(
                                  'Top charts',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ])
                    ],
                  ),
                )),
          ];
        },
        body: TabBarView(children: [Featured(), PreRegister(), TopCharts()]),
      ),
    );
  }
}
