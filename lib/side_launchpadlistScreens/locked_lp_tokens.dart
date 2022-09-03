import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme/appcolor.dart';
import '../widgets/animated_button.dart';
import '../widgets/appbar_widget.dart';

class LockedLPTokens extends StatelessWidget {
  const LockedLPTokens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
      appBar: MyAppBar(title: 'Locked LP Tokens',),
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
                child: Padding
                (
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
                            FontAwesomeIcons.coins,
                            color: Appcolor.darkviolte3,
                          ),
                          SizedBox
                          (
                            width: 10,
                          ),
                          Text
                          (
                          'Create Lock',
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
                      Text
                        (
                         'This is Create Lock',
                          style: TextStyle
                          (
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),

                        AnimatedButton()

                      //   Container
                      //   (
                      //     height: 40,
                      //     width: 80,
                      //     decoration: BoxDecoration
                      //     (
                      //       borderRadius: BorderRadius.all(Radius.circular(10)),
                      //       color: Appcolor.darkviolte
                      //     ),
                      //     child: Center
                      //     (
                      //       child: Text
                      //         (
                      //           'Help',
                      //           style: TextStyle
                      //           (
                      //             color: Colors.white,
                      //             fontSize: 18,
                      //             fontWeight: FontWeight.w500
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),

              SizedBox
              (
                height: 20,
              ),

              

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.coins,color: Colors.grey,),
                  SizedBox
                  (
                    width: 10,
                  ),
                  Text
                    (
                      'No Locked Tokens Found',
                       style: TextStyle
                        (
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}