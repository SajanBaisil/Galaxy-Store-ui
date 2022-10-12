import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThirdContainer extends StatelessWidget {
  const ThirdContainer({super.key});

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
          children: const [
            ListTile(
              leading: Icon(
                Icons.receipt,
                color: Colors.white,
              ),
              title: Text(
                'Receipts',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              
            ),
            ListTile(
              leading: Icon(
                Icons.subscriptions,
                color: Colors.white,
              ),
              title: Text(
                'Subscriptions',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: Colors.white,
              ),
              title: Text(
                'Payment Methods',
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
