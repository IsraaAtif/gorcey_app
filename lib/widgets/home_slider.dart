

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gorcey_app/screens/shop_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomrSliderState();
}

class _HomrSliderState extends State<HomeSlider> {
  int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 119.0,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (i,r){
                    setState(() {
                       activeIndex=i;
                    });
                  },
                  enableInfiniteScroll: false,
                ),
                items: images
                    .map(
                      (i) => Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(i),
                          ),
                        ),
                        
                      ),
                    )
                    .toList(),
              ),
              Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                        activeIndex:activeIndex,
                        count: images.length,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Color(0xff53B175),
                          dotColor: Colors.white,
                          dotHeight: 10,
                          dotWidth: 10,
                          spacing: 4,
                        ),
                      ),
              ),
            ],
          );
  }
}
List<String> images = [
  ('assets/images/vegetable.jpeg'),
  ('assets/images/collection.jpeg'),
  ('assets/images/Friuts.jpeg'),
];
