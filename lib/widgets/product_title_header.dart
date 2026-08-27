

import 'package:flutter/material.dart';

class ProductTitleHeader extends StatelessWidget {
  final String name;
  final String weight;

  const ProductTitleHeader({
    super.key,
    required this.name,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              weight,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xff7C7C7C),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        IconButton(
          icon: const Icon(Icons.favorite_border, color: Color(0xff7C7C7C)),
          onPressed: () {},
        ),
      ],
    );
  }
}