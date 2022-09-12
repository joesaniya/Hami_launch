import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/widgets/appbar_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:motion/motion.dart';

import '../theme/appcolor.dart';
import '../widgets/animated_button.dart';


class MarketingCompanies extends StatelessWidget {
  const MarketingCompanies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
      appBar:MyAppBar(title: 'Marketing Companies',),
      body: SingleChildScrollView
      (
        child: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: Column
          (
            children: 
            [
              Container
                (
                  height: MediaQuery.of(context).size.height*0.20,
                  width: double.infinity,
                  decoration: BoxDecoration
                  (
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Appcolor.background
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: 
                      [
                        Row
                        (
                          children: 
                          [
                            Icon
                            (
                              FontAwesomeIcons.lightbulb,
                              color: Appcolor.darkviolte3,
                            ),
                            SizedBox
                            (
                              width: 10,
                            ),
                            Text
                            (
                              'Marketing Companies',
                              style: TextStyle
                              (
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w900
                              ),
                            ),
                            SizedBox
                            (
                              width: 5,
                            ),
                            Icon
                            (
                              Icons.help,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        
                            AnimatedButton()
                      ],
                    ),
                  ),
                ),

                Container
                (
                  child: Column(
                    children: [
                      Lottie.asset
                      (
                        'assets/lottie_anim/nodata_box.json',
                        repeat: false
                      ),
                      SizedBox
                      (
                        height: 5,
                      ),

                      Text
                      (
                        'No data Found !!!',
                        style: TextStyle
                        (
                          color: Colors.grey,
                          fontWeight: FontWeight.w900
                        ),
                      )
                    ],
                  ),
                )

            ],
          ),
        ),
      ),
    );
  }
}