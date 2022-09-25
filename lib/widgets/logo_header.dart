import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config.dart';

class IconHeade extends StatefulWidget {
  const IconHeade({Key? key}) : super(key: key);

  @override
  State<IconHeade> createState() => _IconHeadeState();
}

class _IconHeadeState extends State<IconHeade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 17),
        child: Row(
          children: [
            SizedBox(
              width: 343,
              // width: 400,
              // height: 30,
              // width: MediaQuery.of(context).size.width / 1.5,
              // color: Colors.amber,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/launchpad-logo.svg',
                        color: Colors.grey,
                      ),
                      // Icon(
                      //   Icons.emoji_events,
                      //   color: Colors.white,
                      //   size: 28,
                      // ),
                      const SizedBox(height: 2),
                      Text(
                        "Launch pad",
                        style: TextStyle(
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                          // color: Colors.white,
                          // color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  //2
                  Column(
                    children: [
                      const Image(
                        image: AssetImage(
                          'assets/images/referal.png',
                        ),
                        // color: Colors.yellow,
                        width: 32,
                        height: 32,
                      ),
                      // Icon(
                      //   Icons.emoji_events,
                      //   color: Colors.white,
                      //   size: 28,
                      // ),
                      const SizedBox(height: 2),
                      Text(
                        "Referral",
                        style: TextStyle(
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                          // color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  //3
                  Column(
                    children: [
                      const Image(
                        image: AssetImage(
                          'assets/images/trading.png',
                        ),
                        // color: Colors.yellow,
                        width: 32,
                        height: 32,
                      ),
                      // Icon(
                      //   Icons.emoji_events,
                      //   color: Colors.white,
                      //   size: 28,
                      // ),
                      const SizedBox(height: 2),
                      Text(
                        "Trading",
                        style: TextStyle(
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                          // color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                        // maxLines: 3,
                        // overflow:TextOverflow.clip,
                      ),
                    ],
                  ),

                  //4
                  Column(
                    children: [
                      const Image(
                        image: AssetImage(
                          'assets/images/earn.png',
                        ),
                        // color: Colors.yellow,
                        width: 32,
                        height: 32,
                      ),
                      // Icon(
                      //   Icons.emoji_events,
                      //   color: Colors.white,
                      //   size: 28,
                      // ),
                      const SizedBox(height: 2),
                      Text(
                        "Earn",
                        style: TextStyle(
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                          // color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  //5
                  Column(
                    children: [
                      // Image
                      // (
                      //   image: AssetImage('assets/images/more.png',),
                      //   // color: Colors.yellow,
                      //   width: 32,
                      //   height: 32,
                      // ),
                      const Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                        size: 28,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        "More",
                        style: TextStyle(
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                          // color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
