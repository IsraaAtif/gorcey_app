

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomAppSlider extends StatefulWidget {
  final List<String> images;
  final double height;
  final bool autoPlay;
  final BoxFit fit;

  const CustomAppSlider({
    super.key,
    required this.images,
    this.height = 120.0,
    this.autoPlay = true,
    this.fit = BoxFit.cover,
  });

  @override
  State<CustomAppSlider> createState() => _CustomAppSliderState();
}

class _CustomAppSliderState extends State<CustomAppSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.images.isEmpty) return const SizedBox.shrink();

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: widget.height,
            autoPlay: widget.autoPlay,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
          items: widget.images
              .map(
                (imagePath) => Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      fit: widget.fit,
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Positioned(
          bottom: 10,
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: widget.images.length,
            effect: const ExpandingDotsEffect(
              activeDotColor: Color(0xff53B175),
              dotColor: Colors.grey,
              dotHeight: 8,
              dotWidth: 8,
              spacing: 4,
            ),
          ),
        ),
      ],
    );
  }
}
