import 'package:flutter/material.dart';
import 'package:tailor_app/core/constants/app_colors.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';

class TailorCatalogView extends StatelessWidget {
  const TailorCatalogView({
    super.key,
    required this.name,
    required this.image,
    required this.rating,
    required this.orders,
  });
  final String name;
  final String image;
  final double rating;
  final int orders;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColors.c6,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha((255 * 0.5).toInt()),
              spreadRadius: 3,
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 5,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  height: 120,
                  width: 135,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                    ),
                    border: Border.all(color: Colors.orange, width: 2),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 7,
              right: 8,
              child: Icon(Icons.verified, size: 20, color: Colors.blue),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: AppColors.c1,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: LightColorTextStyles.schama.bodyMedium),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          const SizedBox(width: 3),
                          Text(rating.toStringAsFixed(1)),
                          const SizedBox(width: 3),
                          Text('|'),
                          const SizedBox(width: 4),
                          Icon(Icons.verified, size: 20, color: Colors.blue),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          Icon(Icons.checkroom, size: 20, color: AppColors.c3),
                          Text('$orders order'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
