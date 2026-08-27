

import 'package:flutter/material.dart';

class QuantityAndPrice extends StatelessWidget {
  final int quantity;
  final double totalPrice;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const QuantityAndPrice({
    super.key,
    required this.quantity,
    required this.totalPrice,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.remove, color: Color(0xffB3B3B3)),
              onPressed: onDecrement,
            ),
            const SizedBox(width: 4),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffE2E2E2)),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Text(
                "$quantity",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(width: 4),
            IconButton(
              icon: const Icon(Icons.add, color: Color(0xff53B175)),
              onPressed: onIncrement,
            ),
          ],
        ),
        Text(
          "\$${totalPrice.toStringAsFixed(2)}",
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}