import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Caroulslider extends StatelessWidget {
  Caroulslider({super.key});

  List golf = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRimWavdf1TJcf4jBPToehXDL6VudrhaWrSmg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS558ceB6h4Fz4dLErJ3wN-2DZxUxa2adC-QA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2guRJf6IJsptQKEF6ABbmcbWjblFGOAElQQwhZC7gdQNyVZovRa9_SkGX_96kElbkpxc&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe5o1iB-8dWSB1pXIv1ooFkBSBVBk4dxZTxw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkgbN-KA0YGpeu0SXMY3fCrvYC5P0HYXHCtg&usqp=CAU',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            enableInfiniteScroll: true,
            autoPlayCurve: Curves.easeInCubic,
            autoPlayAnimationDuration: const Duration(milliseconds: 3000),
            viewportFraction: 0.99,
          ),
          items: List.generate(golf.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(golf[index]))),
              ),
            );
          })),
    );
  }
}
