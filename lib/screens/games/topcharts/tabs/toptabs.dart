import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopTabs extends StatelessWidget {
  TopTabs({super.key});

  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Show Installed Apps',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Switch(
                activeTrackColor: Colors.blue,
                hoverColor: Colors.white,
                focusColor: Colors.white,
                value: value,
                onChanged: (change) {
                  value = change;
                })
          ],
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.grey.withOpacity(0.3),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
              child: const Center(
                child: Text(
                  'Most Popular',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 74, 74, 74)),
              child: const Center(
                child: Text(
                  'Top Grossing',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 74, 74, 74)),
              child: const Center(
                child: Text(
                  'Hot',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
