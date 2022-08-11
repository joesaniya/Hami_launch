import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import '/theme/appcolor.dart';

import '../models/banner_model.dart';



class BnnerWidget extends StatelessWidget {
  const BnnerWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration
      (
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage
        (
          image: AssetImage('assets/images/launchpad.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Carousel(
                dotSize: 6.0,
                dotSpacing: 15.0,
                dotPosition: DotPosition.bottomCenter,
                images: [
                  Image.asset('assets/images/launch1_banner.png', fit: BoxFit.cover),
                  Image.asset('assets/images/launch_banner2.png', fit: BoxFit.cover),
                  Image.asset('assets/images/lauch_image3.png', fit: BoxFit.cover),
                  Image.asset('assets/images/launch_banner2.png', fit: BoxFit.cover),
                  Image.asset('assets/images/launch_banner2.png', fit: BoxFit.cover),
                  Image.asset('assets/images/launch_banner2.png', fit: BoxFit.cover),
                ],
              ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return SizedBox(
  //     // height: size.height / 4.5,
  //     height: size.height / 3.8,
  //     // width: size.width * 17.0,
  //     width: double.infinity,
  //     child: SingleChildScrollView(
  //       physics: const BouncingScrollPhysics(),
  //       scrollDirection: Axis.horizontal,
  //       child: Row(
  //         children: List.generate(
  //           banner.length,
  //           (index) => Container(
  //             padding: EdgeInsets.only(
  //               left: size.width * 0.05,
  //               top: size.height * 0.01,
  //               right: size.width * 0.01,
  //             ),
              
  //             child: Stack(
  //               children: [
  //                 Container(
  //                   padding: EdgeInsets.only(
  //                     left: size.width * 0.06,
  //                     top: size.height * 0.02,
  //                     bottom: size.height * 0.02,
  //                   ),
  //                   decoration: BoxDecoration(
  //                     // gradient: banner[index].gradientColor,
  //                     // color: Appcolor.darkviolte6.withOpacity(0.8),
  //                     color: Colors.black,
  //                     borderRadius: BorderRadius.circular(10),
  //                   ),
  //                   child: Row(
  //                     children: [
  //                       Column(
  //                         crossAxisAlignment:
  //                             CrossAxisAlignment.start,
  //                         children: [
  //                           Image.asset(
  //                             banner[index].topImage,
  //                             width: size.height * 0.05,
  //                             height: size.height * 0.025,
  //                             // height: size.height * 0.04,//optional
  //                             color: Colors.white,
  //                           ),
  //                           Padding(
  //                             padding: const EdgeInsets.only(
  //                               top: 12,
  //                               bottom: 5,
  //                             ),
  //                             child: Text(
  //                               banner[index].title,
  //                               style: TextStyle(
  //                                 color: Colors.white,
  //                                 fontSize: size.width * 0.06,
  //                                 fontWeight: FontWeight.w700,
  //                               ),
  //                             ),
  //                           ),
  //                           Column
  //                           (
  //                             mainAxisAlignment: MainAxisAlignment.start,
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: 
  //                             [
  //                               Text
  //                               (
  //                                 'Etherum',
  //                                 style: TextStyle(
  //                                   fontFamily: 'Raleway',
  //                                   color: Colors.white,
  //                                   fontSize: size.width * 0.026,
  //                                   ),
  //                               ),
  //                               Text
  //                               (
  //                                 'Dodge',
  //                                 style: TextStyle(
  //                                   fontFamily: 'Raleway',
  //                                   color: Colors.white,
  //                                   fontSize: size.width * 0.026,
  //                                   ),
  //                               ),
  //                               Text
  //                               (
  //                                 'USD',
  //                                 style: TextStyle(
  //                                   fontFamily: 'Raleway',
  //                                   color: Colors.white,
  //                                   fontSize: size.width * 0.026,
  //                                   ),
  //                               ),
  //                               Text
  //                               (
  //                                 'Token Name',
  //                                 style: TextStyle(
  //                                   fontFamily: 'Raleway',
  //                                   color: Colors.white,
  //                                   fontSize: size.width * 0.026,
  //                                   ),
  //                               ),
  //                             ],
  //                           ),
  //                           // Text(
  //                           //   'We are here with the best\ndeserts intown.',
  //                           //   style: TextStyle(
  //                           //     color: Colors.white,
  //                           //     fontSize: size.width * 0.026,
  //                           //   ),
  //                           // ),
  //                           Padding(
  //                             padding: const EdgeInsets.only(
  //                               top: 8,
  //                             ),
  //                             child: InkWell(
  //                               onTap: () {},
  //                               child: Row(
  //                                 children: [
  //                                   Text(
  //                                     'View All',
  //                                     style: TextStyle(
  //                                       color: Colors.white,
  //                                       fontSize:
  //                                           size.width * 0.035,
  //                                     ),
  //                                   ),
  //                                   Icon(
  //                                     Icons.arrow_forward_ios,
  //                                     color: Colors.white,
  //                                     size: size.width * 0.035,
  //                                   )
  //                                 ],
  //                               ),
  //                             ),
  //                           )
  //                         ],
  //                       ),
  //                       SizedBox(width: size.width * 0.03),
  //                       SizedBox(
  //                         height: size.height * 0.15,
  //                         width: size.width * 0.4,
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //                 Positioned(
  //                   right: 0,
  //                   child: ClipRRect(
  //                     borderRadius: const BorderRadius.only(
  //                       topRight: Radius.circular(35),
  //                     ),
  //                     child: Image.asset(
  //                       banner[index].imageBanner,
  //                     ),
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
