import 'package:flutter/cupertino.dart';
import '/theme/appcolor.dart';

class BannerModel {
  final String title;
  final String subtitle;
  final String subtitle1;
  final String imageBanner;
  final String topImage;
  final String image;
  final String Subimage;
  final gradientColor;

  BannerModel({
    required this.imageBanner,
    required this.title,
    required this.subtitle,
    required this.subtitle1,
    required this.topImage,
    required this.image,
    required this.Subimage,
    required this.gradientColor,
  });
}

List<BannerModel> banner = <BannerModel>[
  BannerModel(
    title: 'Trending',
    subtitle:'Ethereum',
    subtitle1: 'ETH',
    image:'assets/images/award.png',
    imageBanner: 'assets/images/trend1.png',
    topImage: 'assets/images/trend_logo.png',
    Subimage: 'assets/images/subimage1.png',
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
    subtitle:'Ethereum',
    subtitle1: 'ETH',
    image:'assets/images/fire.png',
    Subimage: 'assets/images/subimage1.png',
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
    subtitle:'Ethereum',
    subtitle1: 'ETH',
    Subimage: 'assets/images/subimage1.png',
    image:'assets/images/rocket.png',
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
