import 'package:flutter/material.dart';
import 'package:tailor_app/core/constants/app_colors.dart';
import 'package:tailor_app/core/constants/app_images.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';
import 'package:tailor_app/models/tailor_model.dart';
import 'package:tailor_app/models/tailor_model_2.dart';
import 'package:tailor_app/screens/home/widget/tailor_2.dart';
import 'package:tailor_app/screens/home/widget/tailor_catalog_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 280,
                decoration: BoxDecoration(
                  color: AppColors.c1,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.elliptical(200, 90),
                    bottomRight: Radius.elliptical(200, 90),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 190,
                      child: Image.asset(
                        AppImages.machine,
                        height: 100,
                        width: 180,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CallMe',
                            style: LightColorTextStyles.schama.displayMedium,
                          ),
                          // const SizedBox(height: 5),
                          Transform.translate(
                            offset: Offset(-5, -5),
                            child: Text(
                              'TAILOR',
                              style: LightColorTextStyles.schama.headlineMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 25,
                      right: 16,
                      child: Image.asset(
                        AppImages.not,
                        fit: BoxFit.contain,
                        height: 30,
                        width: 40,
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 85,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Selamat Datang,',
                            style: LightColorTextStyles.schama.bodyMedium,
                          ),
                          Text(
                            'Ari sugianto',
                            style: LightColorTextStyles.schama.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -35,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 40, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Saldo:'),
                              const SizedBox(width: 15),
                              Text(
                                'Rp. 100.000',
                                style: LightColorTextStyles.schama.bodyMedium,
                              ),
                              const SizedBox(width: 15),
                              Image.asset(AppImages.sa, height: 40, width: 30),
                              const SizedBox(width: 5),
                              Image.asset(
                                AppImages.point,
                                height: 40,
                                width: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Penjahit Rekomendasi',
                  style: LightColorTextStyles.schama.bodyMedium,
                ),
                Text(
                  'Lihat Semua',
                  style: LightColorTextStyles.schama.bodySmall,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tailorList.length,
              itemBuilder: (context, index) {
                final tailor = tailorList[index];
                return TailorCatalogView(
                  name: tailor.name,
                  rating: tailor.rating,
                  orders: tailor.orders,
                  image: tailor.image,
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Berita Terkini',
                  style: LightColorTextStyles.schama.bodyMedium,
                ),
                Text(
                  'Lihat Semua',
                  style: LightColorTextStyles.schama.bodySmall,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
              itemCount: tailors.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final tailor = tailors[index];
                return Tailor2(
                  title: tailor.title,
                  name: tailor.name,
                  image: tailor.image,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
