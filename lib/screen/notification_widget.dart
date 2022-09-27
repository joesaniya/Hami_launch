import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hami_launch/screen/view_detail_token.dart';
import 'package:wave_transition/wave_transition.dart';

import '../config.dart';
import '../theme/appcolor.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  late bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 2), () async {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: _isLoading
          ? SpinKitDualRing(
              color: Colors.pinkAccent.shade200,
            )
          : Container(
              height: 500,
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  // background image and bottom contents
                  Column(
                    children: <Widget>[
                      Container(
                        height: 120.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: currentTheme.isDark
                                ? Colors.black
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(
                                10,
                              ),
                              topLeft: Radius.circular(
                                10,
                              ),
                            )),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(
                              10,
                            ),
                            topLeft: Radius.circular(
                              10,
                            ),
                          ),
                          child: Stack(
                            children: [
                              const Image(
                                image:
                                    AssetImage('assets/images/launch_bg.jpg'),
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                // The Positioned widget is used to position the text inside the Stack widget
                                top: 10,
                                right: 40,

                                child: Container(
                                  // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.orangeAccent.shade100,
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red),
                                      ),
                                      const Text(
                                        'Active',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        // child: const Center(
                        //   child: Text('Background image goes here'),
                        // ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: currentTheme.isDark
                                  ? Colors.black
                                  : Colors.white,
                              borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(
                                  10,
                                ),
                                bottomLeft: Radius.circular(
                                  10,
                                ),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                height: 60,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'HAMI',
                                    style: TextStyle(
                                        color: currentTheme.isDark
                                            ? Colors.white
                                            : Colors.black,
                                        // color: Colors.black,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'HAMI',
                                    style: TextStyle(
                                        // color: currentTheme.isDark
                                        //     ? Colors.black
                                        //     : Colors.black,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Appcolor.darkviolte2),
                                    child: const Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, right: 30),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 20,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Colors.deepPurple),
                                        child: const Center(
                                          child: Text(
                                            'Seeding',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 20,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Colors.orangeAccent),
                                        child: const Center(
                                          child: Text(
                                            'Spotlight',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 20,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Colors.blueAccent),
                                        child: const Center(
                                          child: Text(
                                            'KYC',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 20,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: Colors.redAccent),
                                        child: const Center(
                                          child: Text(
                                            '# Trending',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //hardcap
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Hard Cap',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20),
                                    ),
                                    Text(
                                      '2440BNB',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20),
                                    )
                                  ],
                                ),
                              ),

                              //soft cap
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Soft Cap',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20),
                                    ),
                                    Text(
                                      '1220BNB',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20),
                                    )
                                  ],
                                ),
                              ),

                              //seeding
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Seeding rate',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20),
                                    ),
                                    Text(
                                      '10000 HAMI/BNB',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20),
                                    )
                                  ],
                                ),
                              ),

                              //progreess
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Progress',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 20),
                                      // width: 300,
                                      width: double.infinity,
                                      height: 20,
                                      // child: LinearPercentIndicator(
                                      //   // width: MediaQuery.of(context)
                                      //   //         .size
                                      //   //         .width -
                                      //   //     50,
                                      //   width: 300,
                                      //   animation: true,
                                      //   lineHeight: 20.0,
                                      //   animationDuration: 2000,
                                      //   percent: 0.9,
                                      //   linearStrokeCap:
                                      //       LinearStrokeCap.roundAll,
                                      //   progressColor: Colors.greenAccent,
                                      // )
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                            value: 0.7,
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                    // Color(0xff00ff00)
                                                    Appcolor.darkgreen),
                                            backgroundColor: Colors.grey
                                            // const Color(0xffD6D6D6),
                                            ),
                                      ),
                                    ),
                                    //
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            child: Row(
                                              children: const [
                                                Text(
                                                  'Soft Cap: ',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 20),
                                                ),
                                                Text(
                                                  '1220 BNB',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 20),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: const [
                                              Text(
                                                'Hard Cap: ',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                '1220 BNB',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 20),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              //timer
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Ends In',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 20),
                                        ),

                                        Text(
                                          '00:07:40:32',
                                          // time,
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 20),
                                        ),
                                        // Row(
                                        //   children: [
                                        //     Text(
                                        //       '$days',
                                        //       style: const TextStyle(
                                        //           color: Colors.redAccent,
                                        //           fontSize: 20),
                                        //     ),
                                        //     Text(
                                        //       '$hrs',
                                        //       style: const TextStyle(
                                        //           color: Colors.redAccent,
                                        //           fontSize: 20),
                                        //     ),
                                        //     Text(
                                        //       '$mins',
                                        //       style: const TextStyle(
                                        //           color: Colors.redAccent,
                                        //           fontSize: 20),
                                        //     ),
                                        //   ],
                                        // ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        log('view token clicked');
                                        Navigator.push(
                                            context,
                                            WaveTransition(
                                                child: const ViewToken(),
                                                center: const FractionalOffset(
                                                    0.90, 0.90),
                                                duration:
                                                    const Duration(seconds: 1
                                                        // milliseconds:
                                                        //     3000
                                                        ) // optional
                                                ));
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.deepPurple,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Center(
                                          child: Text(
                                            'View',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          // child: const Center(
                          //   child: Text('Content goes here'),
                          // ),
                        ),
                      )
                    ],
                  ),
                  // Profile image
                  Positioned(
                    top: 70,
                    // top:
                    //     150.0, // (background container size) - (circle height / 2)
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.deepPurple),
                      child: const Image(
                          image: AssetImage('assets/images/launch_lohgo.png')),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
