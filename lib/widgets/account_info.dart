

import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 66,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: const AssetImage('assets/images/profile.png'),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "Afsar Hossen",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8), 
                InkWell(
                  onTap: () {
                  },
                  child: const Icon(
                    Icons.edit_outlined,
                    color: Color(0xff53B175), 
                    size: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            const Text(
              "Imshuvo97@gmail.com",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff7C7C7C),
              ),
            ),
          ],
        ),
      ],
    );
  }
}