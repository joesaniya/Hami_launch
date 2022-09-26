import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../models/job.dart';

class AllLaunch extends StatefulWidget {
  const AllLaunch({Key? key}) : super(key: key);

  @override
  State<AllLaunch> createState() => _AllLaunchState();
}

class _AllLaunchState extends State<AllLaunch> {
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

  List<SpotLight> spotlight = getSpotLight();

  List<Widget> buildLastJobs1() {
    List<Widget> list = [];
    for (var i = spotlight.length - 1; i > -1; i--) {
      list.add(buildLastJob1(spotlight[i]));
    }
    return list;
  }

  Widget buildLastJob1(SpotLight spotLight) {
    return Column(
      children: [
        Container(
          height: 40,
          width: double.infinity,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container
              // (
              //   width: double.infinity,
              //   color: Colors.yellow,
              //   height: 20,
              //   child: FittedBox(
              //     child: Row(
              //       children: [
              //         CircleAvatar
              //         (
              //           // radius: 20,
              //           backgroundColor: Colors.red,
              //         ),
              //         Text
              //         (
              //           'NAME',
              //            style: TextStyle
              //             (
              //               color: Colors.white,
              //               fontSize: 15,
              //               fontWeight: FontWeight.w500
              //             ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Expanded(
                child: Text(
                  spotLight.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  // textAlign: TextAlign.center,
                ),
              ),

              // SizedBox
              // (
              //   width: 20,
              // ),

              Expanded(
                child: Text(
                  spotLight.liquidity,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),

              const SizedBox(
                width: 10,
              ),

              Expanded(
                child: Text(
                  spotLight.lockuptime,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              const SizedBox(
                width: 10,
              ),

              // Expanded(
              //   child: Text
              //   (
              //     'LISTING PRICE',
              //      style: TextStyle
              //       (
              //         color: Colors.white,
              //         fontSize: 15,
              //         fontWeight: FontWeight.w900
              //       ),
              //   ),
              // ),

              // SizedBox
              // (
              //   width: 20,
              // ),

              Expanded(
                child: Text(
                  spotLight.presaleprice,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              // SizedBox
              // (
              //   width: 20,
              // ),

              Expanded(
                  child: spotLight.status == 'Live'
                      ? Container(
                          height: 20,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                spotLight.status,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )
                      : spotLight.status == 'Upcoming'
                          ? Container(
                              height: 20,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  spotLight.status,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          : Container(
                              height: 20,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  spotLight.status,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: _isLoading
          ? SpinKitDualRing(
              color: Colors.pinkAccent.shade200,
            )
          : Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                      child: Text(
                        'NAME',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                      ),
                    ),

                    // SizedBox
                    // (
                    //   width: 20,
                    // ),

                    Expanded(
                      child: Text(
                        'LIQUIDITY %',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    Expanded(
                      child: Text(
                        'LOCUP TIME',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    // Expanded(
                    //   child: Text
                    //   (
                    //     'LISTING PRICE',
                    //      style: TextStyle
                    //       (
                    //         color: Colors.white,
                    //         fontSize: 15,
                    //         fontWeight: FontWeight.w900
                    //       ),
                    //   ),
                    // ),

                    // SizedBox
                    // (
                    //   width: 20,
                    // ),

                    Expanded(
                      child: Text(
                        'PRICE',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    // SizedBox
                    // (
                    //   width: 20,
                    // ),

                    Expanded(
                      child: Text(
                        'STATUS',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ...buildLastJobs1()
              ],
            ),
    );
  }
}
