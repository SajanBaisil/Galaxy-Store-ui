import 'package:customapp/screens/exclusives/exclusives/exclusives.dart';
import 'package:customapp/screens/exclusives/featured/featured.dart';
import 'package:customapp/screens/exclusives/for%20you/foryou.dart';
import 'package:customapp/screens/exclusives/styling/styling.dart';
import 'package:customapp/screens/exclusives/themes/themes.dart';
import 'package:customapp/screens/exclusives/top/top.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExclusiveScreen extends StatelessWidget {
  const ExclusiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
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
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TabBar(
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
                            'For You',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
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
                            'Themes',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Tab(
                        child: Center(
                          child: Text(
                            'Exclusives',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Tab(
                        child: Center(
                          child: Text(
                            'Styling',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Tab(
                        child: Center(
                          child: Text(
                            'Top',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          body: TabBarView(children: [
            ForYou(),
            FeaturedView(),
            ThemesView(),
            Exclusives(),
            Styling(),
            Top()
          ]),
        ));
  }
}
