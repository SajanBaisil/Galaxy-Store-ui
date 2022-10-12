import 'package:customapp/screens/home/pages/action.dart';
import 'package:customapp/screens/home/pages/featured_home.dart';
import 'package:customapp/screens/home/pages/free.dart';
import 'package:customapp/screens/home/pages/racing.dart';
import 'package:customapp/screens/home/pages/shopping.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
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
                            'Featured',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Tab(
                        child: Center(
                          child: Text(
                            'Free',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Tab(
                        child: Center(
                          child: Text(
                            'Racing',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Tab(
                        child: Center(
                          child: Text(
                            'Action',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Tab(
                        child: Center(
                          child: Text(
                            'Shopping',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          body: TabBarView(children: [
            FeaturedHome(),
            Free(),
            Racing(),
            ActionView(),
            Shopping()
          ]),
        ));
  }
}
