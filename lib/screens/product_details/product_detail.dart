import 'package:flutter/material.dart';
import 'package:tailor_app/core/constants/app_colors.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';
import 'package:tailor_app/core/widgets/app_button.dart';
import 'package:tailor_app/core/widgets/screen_title.dart';

import 'package:tailor_app/screens/product_details/widgets/product_detail_card.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const ScreenTitle(),
            Container(
              height: 260,
              decoration: BoxDecoration(
                color: AppColors.c1,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(150, 80),
                  bottomRight: Radius.elliptical(150, 80),
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 10,
                    child: const ScreenTitle(name: 'Product Details'),
                  ),
                  Positioned(
                    bottom: -170,
                    left: 89,
                    child: SizedBox(
                      height: 340,
                      child: const ProductDetailCard(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 200),
            const Divider(height: 2),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.deepOrange),
                ),
                child: Center(
                  child: Text(
                    'Description',
                    style: LightColorTextStyles.schama.bodyMedium,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: const Text('Bahan: Sutra Baron'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: const Text('Ukuran: 2.60 ✕ 1.10'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: const Text('Menerima jasa jahat butik'),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                'DISCLAIMER',
                style: LightColorTextStyles.schama.bodyMedium,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 8.0),
              child: Text(
                '1. Produk dalam bentuk kain, baju diatas merupakan ilustrasi yang diciptakan untuk membantu anda mengvisualisasikan hasil akhir kain yang telah dijahitkan.',
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 8.0),
              child: Text(
                '2. Adanya sedikit perbedaan warna antara foto diatas dengan kain aslinya yang dikarenakan oleh faktor pencahayaan',
              ),
            ),
            const SizedBox(height: 20),
            AppButton(text: 'Order', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
