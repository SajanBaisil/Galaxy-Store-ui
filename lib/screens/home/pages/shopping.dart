import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Shopping extends StatelessWidget {
  Shopping({super.key});

  List shopping = [
    'https://play-lh.googleusercontent.com/SE24PAjTpRit34LbEVktY0iug1kUKu_hcrgzaqcZjQh7PQrsNh7i99DA82lskVfJuc4=s64-rw',
    'https://play-lh.googleusercontent.com/3yi7Fo-OtJUZ7nAlB8WB0v1WTOdz76Z1kqvuuubhNlHzU9jhP97TnI-6eVThWZMV31A=s64-rw',
    'https://play-lh.googleusercontent.com/q8hxnbpJCYfHipSOG_5tZe5jK_89T6QIsqrEklvGpMFKH8b98pDHJf2tPcn2bxEN96ON=s64-rw',
    'https://play-lh.googleusercontent.com/mus3LmDNKHikDOJHIoyaOuYO_K_TgasrHKKKWLQCvksn6vRN32rNN9PYhwptrFWwmnc=s64-rw',
    'https://play-lh.googleusercontent.com/wpnNPYIrdHC3Q_bcFXGpwoMvFvvvQnZJHmFKzumq5ZTRZKIzfxURAUGOMqhPhVxnggY=s64-rw',
    'https://play-lh.googleusercontent.com/4jZOcII742vq4jMw4H8SKjvyMWEgI4V3dpoGVwVyqKh_mcnx3_01QsYRTbV6hwiYEg=s64-rw',
    'https://play-lh.googleusercontent.com/D09AsmYSxDpMWRSXbu54j2R_8sR-1OgbV2DXSI9_HIuY2IMZ8b8JgscWol6mikknaks=s64-rw'
  ];

  List names = [
    'Shopsy Shopping App - Flipkart',
    'Meesho',
    'Flipkart',
    'Snapdeal',
    'Myntra',
    'Ajio',
    'Alibaba'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
            children: List.generate(shopping.length, (index) {
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
                              image: NetworkImage(shopping[index])),
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
