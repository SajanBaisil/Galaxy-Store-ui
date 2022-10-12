import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ForYou extends StatelessWidget {
  ForYou({super.key});

  List background = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf-0wDks7meqe4GGbXAeTZgYgxMSy-lp6DVA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN_WpK8K8IF52XeanMGcBPd2J4Q3sWWNB-9g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnzcY6keI9GwlCVx7HLjaBCpXFxc5trjF_DQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7OG0hfkWll8vKVNjRXX-0xf8q_O2XiYV_3Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJHDea6P7S4J6gre8F7z0P5PxPL_xmGKjFIA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyHEnX2yNrLYdfNID92FWGOLMYh3IXk-W1AQ&usqp=CAU',
  ];
  List profile = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCoJS-dBfJsXZnegxkz4U-k1kv7YjdhTWDGQ&usqp=CAU',
    'https://i.pinimg.com/236x/4e/c2/aa/4ec2aa9e29fe07f31598bc0659d2883e.jpg',
    'https://i.pinimg.com/236x/3d/9b/69/3d9b690be83d39ca4da0ed30a183c6e7.jpg',
    'https://i.pinimg.com/236x/fa/85/ca/fa85cae55d0de9732bcec019f20937c2.jpg',
    'https://m.media-amazon.com/images/I/41bBwXznvgL.png',
    'https://i.pinimg.com/236x/7e/91/0a/7e910a886d9e401949434d689e07736d.jpg'
  ];
  List title = [
    'NETFLIX',
    "HOTSTAR",
    'AMAZON PRIME',
    'SONY LIV',
    'HUNGAMA',
    'SPOTIFY'
  ];
  List subtitle = [
    'Netflix,Inc.',
    'Novi Digital',
    'Amazon Mobile LLC',
    'Sony Ltd',
    'Hungama LTD',
    'Spotify Inc,'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
            children: List.generate(6, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(background[index]))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Colors.grey[800]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(profile[index]))),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title[index],
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                subtitle[index],
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        })));
  }
}
