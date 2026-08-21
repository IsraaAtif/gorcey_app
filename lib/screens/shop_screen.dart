import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gorcey_app/widgets/home_search_field.dart';
import 'package:gorcey_app/widgets/home_slider.dart';
import 'package:gorcey_app/widgets/produt_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.71),
      child: Column(
        children: [
          Center(child: Image.asset("assets/images/carrot.png", width: 30)),
          SizedBox(height: 7.6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              Text(
                "Dhaka, Banassre",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff4C4F4D),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          HomeSearchField(),
          SizedBox(height: 20),
          HomeSlider(),
          SizedBox(height: 79),
          ProdutItem(),
         
        ],
      ),
    );
  }
}
