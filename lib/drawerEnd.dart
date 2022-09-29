import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hami_launch/screen/view_detail_token.dart';
import 'package:wave_transition/wave_transition.dart';

import 'config.dart';

class DrawerEnd extends StatefulWidget {
  const DrawerEnd({Key? key}) : super(key: key);

  @override
  State<DrawerEnd> createState() => _DrawerEndState();
}

class _DrawerEndState extends State<DrawerEnd> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // const SizedBox(
          //   height: 25,
          // ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            height: 30,
            width: double.infinity,
            color: Colors.grey.shade100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'NEWLY VERIFIED SPOTLIGHT',
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: GestureDetector(
              onTap: () {
                log('view token clicked');
                Navigator.push(
                    context,
                    WaveTransition(
                        child: const ViewToken(),
                        center: const FractionalOffset(0.90, 0.90),
                        duration: const Duration(seconds: 1
                            // milliseconds:
                            //     3000
                            ) // optional
                        ));
              },
              child: SizedBox(
                height: 70,
                width: double.infinity,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/launch_lohgo.png',
                      height: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'HAMI',
                          style: TextStyle(
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'HAMI',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
