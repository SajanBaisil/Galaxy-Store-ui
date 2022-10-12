import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondContainer extends StatefulWidget {
  const SecondContainer({super.key});

  @override
  State<SecondContainer> createState() => _SecondContainerState();
}

class _SecondContainerState extends State<SecondContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(
                Icons.wallet_giftcard,
                color: Colors.white,
              ),
              title: const Text(
                'Events',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 238, 116, 35)),
                child: const Center(
                  child: Text('N'),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.card_membership,
                color: Colors.white,
              ),
              title: Text(
                'Vouchers and Gift cards',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.access_alarms,
                color: Colors.white,
              ),
              title: Text(
                'Deals and Events',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
