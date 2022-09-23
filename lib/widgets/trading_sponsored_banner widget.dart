import 'package:flutter/material.dart';
import '/theme/appcolor.dart';

import '../models/banner_model.dart';

class TradingAndSponsored extends StatefulWidget {
  const TradingAndSponsored({Key? key}) : super(key: key);

  @override
  State<TradingAndSponsored> createState() => _TradingAndSponsoredState();
}

class _TradingAndSponsoredState extends State<TradingAndSponsored> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      // height: 180,
      height: 260,
      // width: 100,
      // height: MediaQuery.of(context).size.height*0.15,
      child: ListView.builder(
          // itemExtent: 150,
          itemExtent: 350,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(5.0),
                // width: 800,
                // height: 150,
                height: 260,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    // color: Colors.orangeAccent,
                    color: Appcolor.background),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Image(
                            //   image: AssetImage(
                            //     banner[index].image,
                            //   ),
                            //   // image: AssetImage('assets/images/award.png')
                            // ),
                            // const CircleAvatar(
                            //   // radius: 20,
                            //   backgroundColor: Colors.pink,
                            //   backgroundImage:
                            //       AssetImage('assets/images/award.png'),
                            // ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.deepPurple),
                              child: Image(
                                  image: AssetImage(
                                banner[index].image,
                              )),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              banner[index].title,
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),

                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 20,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(banner[index].Subimage),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              banner[index].subtitle,
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            FittedBox(
                              child: Text(
                                banner[index].subtitle1,
                                style: const TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // const SizedBox(
                    //   height: 5,
                    // ),

                    //2
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 20,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(banner[index].Subimage),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              banner[index].subtitle,
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            FittedBox(
                              child: Text(
                                banner[index].subtitle1,
                                style: const TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // const SizedBox(
                    //   height: 5,
                    // ),

                    //3
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 20,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(banner[index].Subimage),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              banner[index].subtitle,
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            FittedBox(
                              child: Text(
                                banner[index].subtitle1,
                                style: const TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // const SizedBox(
                    //   height: 5,
                    // ),

                    //4
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 20,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(banner[index].Subimage),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              banner[index].subtitle,
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            FittedBox(
                              child: Text(
                                banner[index].subtitle1,
                                style: const TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Container(
                    //   height: 50,
                    //   width: double.infinity,
                    //   color: Colors.pink,
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(left:10.0,right: 10),
                    //     child: Row(
                    //       children: [
                    //         Expanded(
                    //           child: Text
                    //           (
                    //             banner[index].subtitle,
                    //             style: TextStyle
                    //             (
                    //               fontSize: 15,
                    //               color: Colors.grey,
                    //               fontWeight: FontWeight.w300
                    //             ),
                    //             maxLines: 3,
                    //           ),
                    //         ),
                    //         Image.asset(
                    //           // banner[index].topImage,
                    //           banner[index].imageBanner,
                    //           width: size.height * 0.05,
                    //           height: size.height * 0.06,
                    //           // height: size.height * 0.04,//optional
                    //           // color: Colors.deepPurpleAccent,
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
          itemCount: banner.length),
    );
  }
}
