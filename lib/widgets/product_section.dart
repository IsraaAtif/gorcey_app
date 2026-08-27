

import 'package:flutter/material.dart';
import 'package:gorcey_app/widgets/produt_item.dart';

class ProductSection extends StatelessWidget {
  final String title;
  final VoidCallback? onSeeAllTap;

  const ProductSection({
    super.key,
    required this.title,
    this.onSeeAllTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF181725),
                ),
              ),
              TextButton(
                onPressed: onSeeAllTap,
                child: const Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF53B175),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
        ],

        if (title == "Groceries") ...[
          SizedBox(
            height: 85,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final isPulses = index % 2 == 0;
                return Container(
                  width: 210,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  decoration: BoxDecoration(
                    color: isPulses 
                        ? const Color(0xFFF8A44C).withValues(alpha: 0.15)
                        : const Color(0xFF53B175).withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        isPulses ? 'assets/images/pulses.png' : 'assets/images/rice.png',
                        width: 50,
                        height: 50,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.image_not_supported, size: 50, color: Colors.grey),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        isPulses ? "Pulses" : "Rice",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF181725),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 15),
        ],
        SizedBox(
          height: 220,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            separatorBuilder: (context, index) => const SizedBox(width: 15),
            itemBuilder: (context, index) {
              if (title == "Exclusive Offer") {
                return ProdutItem(
                  price: index % 2 == 0 ? 4.99 : 2.99,
                  title: index % 2 == 0 ? "Organic Bananas" : "Red Apple",
                  imagePath: index % 2 == 0
                      ? "assets/images/banana.png"
                      : "assets/images/apple.png",
                  unit: index % 2 == 0 ? "7pcs, Priceg" : "1kg, Priceg",
                );
              } else if (title == "Best Selling") {
                return ProdutItem(
                  price: index % 2 == 0 ? 3.49 : 1.99,
                  title: index % 2 == 0 ? "Bell Pepper Red" : "pngfuel",
                  imagePath: index % 2 == 0
                      ? "assets/images/bellpapper.png"
                      : "assets/images/pngfuel .png",
                  unit: index % 2 == 0 ? "1kg, Priceg" : "250g, Priceg",
                );
              } else if (title == "Groceries") {
                return ProdutItem(
                  
                  price: index % 2 == 0 ? 8.99 : 6.49,
                  title: index % 2 == 0 ? "Beef Bone" : "Broiler Chicken",
                  imagePath: index % 2 == 0
                      ? "assets/images/beef.png"
                      : "assets/images/chicken.png",
                  unit: "1kg, Priceg",
                );
              }
              return ProdutItem(
                price: 4.99,
                title: "Organic Bananas",
                imagePath: "assets/images/banana.png",
                unit: "7pcs, Priceg",
              );
            },
          ),
        ),
      ],
    );
  }
}