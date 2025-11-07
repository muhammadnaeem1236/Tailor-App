import 'package:tailor_app/core/constants/app_images.dart';

class TailorModel {
  final String name;
  final String image;
  final double rating;
  final int orders;
  TailorModel({
    required this.name,
    required this.image,
    required this.rating,
    required this.orders,
  });
}

final List<TailorModel> tailorList = [
  TailorModel(
    name: 'Rumah Mode ',
    image: AppImages.a,
    rating: 5.0,
    orders: 153,
  ),
  TailorModel(name: 'El Modiste', image: AppImages.b, rating: 5.0, orders: 145),
  TailorModel(
    name: 'Rumah Mode Eli',
    image: AppImages.c,
    rating: 5.0,
    orders: 150,
  ),
  TailorModel(
    name: 'Rumah Mode Eli',
    image: AppImages.c,
    rating: 5.0,
    orders: 150,
  ),
  TailorModel(
    name: 'Rumah Mode Eli',
    image: AppImages.c,
    rating: 5.0,
    orders: 150,
  ),
  TailorModel(
    name: 'Rumah Mode Eli',
    image: AppImages.c,
    rating: 5.0,
    orders: 150,
  ),
  TailorModel(
    name: 'Rumah Mode Eli',
    image: AppImages.c,
    rating: 5.0,
    orders: 150,
  ),
];
