import 'package:flutter/cupertino.dart';
import '/theme/appcolor.dart';

class BannerModel {
  final String title;
  final String subtitle;
  final String imageBanner;
  final String topImage;
  final gradientColor;

  BannerModel({
    required this.imageBanner,
    required this.title,
    required this.subtitle,
    required this.topImage,
    required this.gradientColor,
  });
}

List<BannerModel> banner = <BannerModel>[
  BannerModel(
    title: 'Trending',
    subtitle:'Treding,Trading,Trading',
    imageBanner: 'assets/images/trend1.png',
    topImage: 'assets/images/trend_logo.png',
    gradientColor: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Appcolor.darkviolte1,
        Appcolor.darkviolte3
        // Color(0xffFF9F06),
        // Color(0xffFFE1B4),
      ],
    ),
  ),
  BannerModel(
    title: 'Sponsored',
    subtitle:'Treding,Trading,Trading',
    imageBanner: 'assets/images/sponsored_logo.png',
    topImage: 'assets/images/trend_logo.png',
    gradientColor:  LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Appcolor.darkviolte1,
        Appcolor.darkviolte3
      ],
    ),
  ),
  BannerModel(
    title: 'Spot Light',
    subtitle:'Treding,Trading,Trading',
    imageBanner: 'assets/images/spot.png',
    topImage: 'assets/images/trend_logo.png',
    gradientColor:  LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Appcolor.darkviolte6,
        Appcolor.darkviolte2
      ],
    ),
  ),
];
