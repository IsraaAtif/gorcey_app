
import 'package:flutter/material.dart';
import 'package:gorcey_app/widgets/home_search_field.dart';
import 'package:gorcey_app/widgets/home_slider.dart';
import 'package:gorcey_app/widgets/product_section.dart';

class ShopScreen extends StatelessWidget {
   const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics:  BouncingScrollPhysics(),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.71, vertical: 15),
            child: Column(
              children: [
                
                Center(
                  child: Image.asset("assets/images/carrot.png", width: 30),
                ),
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
                 SizedBox(height: 30),
                 ProductSection(title: "Exclusive Offer"),
                 SizedBox(height: 30),
                 ProductSection(title: "Best Selling"),
                 SizedBox(height: 30),
                 ProductSection(title: "Groceries"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}