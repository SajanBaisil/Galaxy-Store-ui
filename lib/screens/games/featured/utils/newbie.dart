import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewBie extends StatelessWidget {
  NewBie({
    super.key,
  });
  List apps1 = [
    'https://cdn1.epicgames.com/offer/de554cff12704db4a900032bbd194d7e/EGS_EVEOnline_CCPGames_S2_04_1200x1600-c5616f4d499e82b9fa8f27afede27033?h=854&resize=1&w=640',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSUd9IodIbKaI9ST520sWOtX3yMGE0hKHPGw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY7uQeOfA_ahEwrBbUhdJlrEHqzXzq9aOuZQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8Cpoa8STLrEA923g-3TIQ48hJ_qO06HHrEf0I25BLTonDoXDKghszbpVIZnXzrJgialU&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGTA_bzqP5Y5cS3qe7r_f-KmmbKGUS5vBzXPa1i81e_RjWggonS3dlRLINXOFUbzrLHSU&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU6XHo7VT96rdfY8d8zcZn1WEj_Hi2wtvsqg&usqp=CAU,'
  ];
  List apps2 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6r0gpxT-QjBcrAFlRZcJa1Zho8NgR7CQ3NQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR487nLvU_tKhIn_IaU_LOnY0Ubf_ClK62qvA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStdAbx0V80hvmqu6ygERhM6a5iMfhasJ06aA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFDi53Pqe9j6VjL1w7Ot28UpQGxfqTPpSifA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJh4VzXKFEm_gZyB0xAaWhwCT5kn8ILjn06g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwPDwwNCysI50A3K4k2MnFWL7-UonzC_AVBA&usqp=CAU'
  ];
  List Gamelist = [
    'assets/games/game1.jpg',
    'assets/games/game2.jpg',
    'assets/games/game3.jpg',
    'assets/games/game4.jpg',
    'assets/games/gamae5.jpg',
    'assets/games/game6.jpg',
  ];
  List title1 = [
    'EVE',
    'GUERRILLA',
    'FORCA 4',
    'SUBWAY SURFERS',
    'REAL RACING 3',
    'FREE FIRE'
  ];
  List title2 = [
    'CLASH OF CLANS',
    'ANGRY BIRDS',
    'FIFA FOOTBALL',
    'COMANCHE',
    'SNAP',
    'CHESS'
  ];
  List title3 = [
    'CALL OF DUTY',
    'POWER FORCES',
    'FORTNITE',
    'GUERRILLA',
    'COUNTER STRIKE',
    'APEX LEGENDS'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 375, //250
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(6, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SizedBox(
              height: 360, //240
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 390,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Colors.black),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 110,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(apps1[index])),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        title1[index],
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        'Free',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                          ),
                                          Text(
                                            '4.5',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ), // const SizedBox(
                              //   width: 65,
                              // ),

                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.withOpacity(0.2)),
                                child: const Icon(
                                  Icons.download,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 110,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(apps2[index])),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        title2[index],
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        'Free',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                          ),
                                          Text(
                                            '4.5',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              // const SizedBox(
                              //   width: 75,
                              // ),
                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.withOpacity(0.2)),
                                child: const Icon(
                                  Icons.download,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 110,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(apps1[index])),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        title1[index],
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        'Free',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                          ),
                                          Text(
                                            '4.5',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              // const SizedBox(
                              //   width: 75,
                              // ),
                              Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.withOpacity(0.2)),
                                child: const Icon(
                                  Icons.download,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
