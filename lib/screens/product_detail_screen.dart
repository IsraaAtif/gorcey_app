
import 'package:flutter/material.dart';
import 'package:gorcey_app/widgets/primary_button.dart';
import 'package:gorcey_app/widgets/product_image_header.dart';
import 'package:gorcey_app/widgets/product_title_header.dart';
import 'package:gorcey_app/widgets/quantity_and_price.dart';
import 'package:gorcey_app/widgets/detail_expandable_tile.dart';

class ProductDetailScreen extends StatefulWidget {
  final String productName;
  final String productWeight;
  final double basePrice;
  final List<String> productImages;
  final String productDescription;

  const ProductDetailScreen({
    super.key,
    this.productName = "Naturel Red Apple",
    this.productWeight = "1kg, Price",
    this.basePrice = 4.99,
    this.productImages = const [
      'assets/images/apple.png',
      'assets/images/apple.png',
      'assets/images/apple.png',
    ],
    this.productDescription =
        "Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healthful And Varied Diet.",
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() => quantity++);
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() => quantity--);
    }
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = widget.basePrice * quantity;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F3F2),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.ios_share, color: Colors.black, size: 20),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          ProductImageHeader(productImages: widget.productImages),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleHeader(
                    name: widget.productName,
                    weight: widget.productWeight,
                  ),
                  const Spacer(),
                  QuantityAndPrice(
                    quantity: quantity,
                    totalPrice: totalPrice,
                    onIncrement: incrementQuantity,
                    onDecrement: decrementQuantity,
                  ),
                  const Spacer(),
                  const Divider(color: Color(0xffE2E2E2), thickness: 1),
                  const Spacer(),
                  DetailExpandableTile(
                    title: "Product Detail",
                    trailing: const Icon(Icons.keyboard_arrow_down, color: Colors.black),
                    child: Text(
                      widget.productDescription,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xff7C7C7C),
                        height: 1.4,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Divider(color: Color(0xffE2E2E2), thickness: 1),
                  const Spacer(),
                  DetailExpandableTile(
                    title: "Nutritions",
                    trailing: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                          decoration: BoxDecoration(
                            color: const Color(0xffEBEBEB),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            "100gr",
                            style: TextStyle(fontSize: 9, color: Color(0xff7C7C7C)),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.black),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Divider(color: Color(0xffE2E2E2), thickness: 1),
                  const Spacer(),
                  DetailExpandableTile(
                    title: "Review",
                    trailing: Row(
                      children: [
                        Row(
                          children: List.generate(
                            5,
                            (index) => const Icon(Icons.star, color: Color(0xffF3603F), size: 15),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.black),
                      ],
                    ),
                  ),
                  const Spacer(),
                  PrimaryButton(
                    text: "Add To Basket",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

