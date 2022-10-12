import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Racing extends StatelessWidget {
  Racing({super.key});

  List gameprofile = [
    'https://i.pinimg.com/236x/ed/32/45/ed324582be43805d39c56d8a72859aff.jpg',
    'https://i.pinimg.com/236x/b1/53/0f/b1530f578e6399b2c0b57e2ee42cbec7.jpg',
    'https://i.pinimg.com/236x/41/2a/b3/412ab31dbd0f2ff64c275b0e3f4f5862.jpg',
    'https://i.pinimg.com/236x/eb/24/ce/eb24ce841148a4d72d06b6dbfec5c51a.jpg',
    'https://i.pinimg.com/236x/7a/ef/13/7aef1333e7b66dd4f4cbc9e98507314d.jpg',
    'https://i.pinimg.com/236x/b4/dc/c8/b4dcc815f59c164c83ed2a95973b2b84.jpg',
    'https://i.pinimg.com/236x/d7/a8/aa/d7a8aafc7a262e850b45e09636815f6c.jpg',
  ];

  List names = [
    'Asphault 9',
    'Truck Simulator',
    'Street Racing',
    'Moto Gp',
    'Dr. Driving',
    'Need for Speed',
    'Real Racing 3'
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
