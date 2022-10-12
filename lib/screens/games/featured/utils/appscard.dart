import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppsCard extends StatelessWidget {
  AppsCard({
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
  List title2 = [
    'EVE',
    'GUERRILLA',
    'FORCA 4',
    'COMANCHE',
    'SNAP',
    'FREE FIRE'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(6, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              height: 110,
              width: 100,
              child: ListView(
                children: [
                  Container(
                    height: 110,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(apps1[index])),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    title2[index],
                    style: TextStyle(color: Colors.white),
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
