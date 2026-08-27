

import 'package:flutter/material.dart';
import 'package:gorcey_app/widgets/home_slider.dart';

class ProductImageHeader extends StatelessWidget {
  final List<String> productImages;

  const ProductImageHeader({super.key, required this.productImages});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          CustomAppSlider(
            images: productImages,
            height: 250,
            fit: BoxFit.contain,
            autoPlay: false,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}