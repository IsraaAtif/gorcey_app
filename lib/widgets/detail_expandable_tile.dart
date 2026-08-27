

import 'package:flutter/material.dart';

class DetailExpandableTile extends StatelessWidget {
  final String title;
  final Widget trailing;
  final Widget? child;

  const DetailExpandableTile({
    super.key,
    required this.title,
    required this.trailing,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            trailing,
          ],
        ),
        if (child != null) ...[
          const SizedBox(height: 6),
          child!,
        ],
      ],
    );
  }
}