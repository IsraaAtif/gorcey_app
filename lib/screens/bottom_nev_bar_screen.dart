

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gorcey_app/screens/account_screen.dart';
import 'package:gorcey_app/screens/cart_screen.dart';
import 'package:gorcey_app/screens/explor_screen.dart';
import 'package:gorcey_app/screens/favorite_screen.dart';
import 'package:gorcey_app/screens/shop_screen.dart';

class BottomNevBarScreen extends StatefulWidget {
  const BottomNevBarScreen({super.key});

  @override
  State<BottomNevBarScreen> createState() => _BottomNevBarScreenState();
}

class _BottomNevBarScreenState extends State<BottomNevBarScreen> {
  int currentIndex=0;
  List<Widget> screen=[
    ShopScreen(),
    ExplorScreen(),
    CartScreen(),
    FavoriteScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: screen[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        } ,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff53B175),
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.storefront),label: "Shop"),
        BottomNavigationBarItem(icon: Icon(Icons.manage_search),label: "Explor"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: "Favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.person_3),label: "Account"),

      ]),
    );
  }
} 