import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tailor_app/core/constants/app_colors.dart';
import 'package:tailor_app/core/constants/app_images.dart';
import 'package:tailor_app/core/constants/text_styles/light_color_text_style.dart';
import 'package:tailor_app/core/widgets/app_button.dart';
import 'package:tailor_app/models/tailor_button_model.dart';
import 'package:tailor_app/screens/tailor_profile/provider/button_provider.dart';
import 'package:tailor_app/screens/tailor_profile/widgets/tailor_button.dart';
import 'package:tailor_app/screens/tailor_profile/widgets/tailor_container.dart';

class TailorProfileScreen extends StatelessWidget {
  const TailorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.c1,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: AppColors.c6),
        ),
        title: Text('Profile', style: TextStyle(color: AppColors.c6)),
        centerTitle: true,
        actions: [Icon(Icons.share, color: AppColors.c6)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(color: AppColors.c1),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 30,
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.tailor),
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.amber, width: 2),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'El Modiste',
                          style: LightColorTextStyles.schama.bodyLarge,
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 164, 236, 223),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.verified,
                                color: const Color(0xFF0466F9),
                              ),
                              const Text(
                                'Verified',
                                style: TextStyle(color: Color(0xFF0466F9)),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            const SizedBox(width: 4),
                            const Text('5  | Home Service | Drop Off'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                'Description',
                style: LightColorTextStyles.schama.bodyMedium,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 8),
              child: Row(
                children: [
                  const Text('Forl all your sewing needs'),
                  Spacer(),
                  const Text('Lihat Semua'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Divider(height: 2, color: AppColors.c2),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                'Nilai & Ulasan',
                style: LightColorTextStyles.schama.bodyMedium,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: const Text('Arista'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 8),
              child: Row(
                children: [
                  for (int i = 0; i < 5; i++)
                    const Icon(Icons.star, color: Colors.amber),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 8),
              child: const Text(
                'Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 320),
              child: const Text('Lihat Semua'),
            ),
            const SizedBox(height: 15),
            const Divider(height: 2, color: AppColors.c2),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Jasa Jahit & Permak',
                style: LightColorTextStyles.schama.bodyMedium,
              ),
            ),
            const SizedBox(height: 10),
            const TailorContainer(
              title: 'ATASAN',
              description: 'Order 7 - pengerjaan ~ 2 hari',
            ),
            const SizedBox(height: 10),
            const TailorContainer(
              title: 'BAWAHAN',
              description: 'Order 4 - pengerjaan ~ 2 har',
            ),
            const SizedBox(height: 10),
            const TailorContainer(
              title: 'TERUSAN',
              description: 'Order 8 - pengerjaan ~ 2 har',
            ),

            const SizedBox(height: 10),
            const TailorContainer(
              title: 'PERBAIKAN',
              description: 'Order 4 - pengerjaan ~ 2 har',
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                'Koleksi El Modiste',
                style: LightColorTextStyles.schama.bodyMedium,
              ),
            ),
            const SizedBox(height: 10),
            Consumer<ButtonProvider>(
              builder: (context, value, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...List.generate(buttons.length, (index) {
                      final selected = value.selectedIndex == index;
                      return GestureDetector(
                        onTap: () => value.selectedButton(index),
                        child: TailorButton(
                          name: buttons[index].name,
                          isSelected: selected,
                          onTap: () => value.selectedButton(index),
                        ),
                      );
                    }),
                  ],
                );
              },
            ),
            const SizedBox(height: 10),
            const Divider(height: 3, color: AppColors.c2),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.chat,
                  height: 30,
                  width: 40,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 10),
                AppButton(text: 'Order', onPressed: () {}),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
