import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tailor_app/core/constants/app_images.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';
import 'package:tailor_app/screens/product_details/provider/counter_provider.dart';

class ProductDetailCard extends StatefulWidget {
  const ProductDetailCard({super.key});

  @override
  State<ProductDetailCard> createState() => _ProductDetailCardState();
}

class _ProductDetailCardState extends State<ProductDetailCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(AppImages.dress),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 87,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Batik furry',
                      style: LightColorTextStyles.schama.bodyMedium,
                    ),
                    Text(
                      'Rp 170.000',
                      style: LightColorTextStyles.schama.bodyMedium,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: const [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 2),
                        Text('4.6'),
                        SizedBox(width: 10),
                        Text('54 Order'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 15,
            child: Consumer<CounterProvider>(
              builder: (contxet, value, child) {
                return Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {});
                        CounterProvider().decrement();
                      },
                      child: Icon(
                        Icons.remove_circle_outline,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${value.initial}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      onPressed: () {
                        print("The is pressed");
                        CounterProvider().increment();
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    InkWell(
                      onTap: () {
                        print("The is pressed");
                        CounterProvider().increment();
                      },
                      child: Icon(Icons.add_circle_outline, size: 18),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
