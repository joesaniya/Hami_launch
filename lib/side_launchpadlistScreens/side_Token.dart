import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../models/job.dart';

class SideToken extends StatefulWidget {
  const SideToken({Key? key}) : super(key: key);

  @override
  State<SideToken> createState() => _SideTokenState();
}

class _SideTokenState extends State<SideToken> {

  late bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  List<SpotLight> spotlight = getSpotLight();

  List<Widget> buildLastJobs1(){
    List<Widget> list = [];
    for (var i = spotlight.length - 1; i > -1; i--) {
      list.add(buildLastJob1(spotlight[i]));
    }
    return list;
  }

  Widget buildLastJob1(SpotLight spotLight)
  {
    return Column
    (
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: 
      [
        Container
        (
          height: 40,
          width: double.infinity,
          color: Colors.transparent,
          child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: 
                  [
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
                      child: 
                          Text
                          (
                            spotLight.name,
                             style: TextStyle
                              (
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                              ),
                              // textAlign: TextAlign.center,
                          ),
                    ),

                    // SizedBox
                    // (
                    //   width: 20,
                    // ),

                    Expanded(
                      child: Text
                        (
                          spotLight.liquidity,
                           style: TextStyle
                            (
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                            ),
                        ),
                    ),

                    SizedBox
                    (
                      width: 10,
                    ),

                    Expanded(
                      child: Text
                      (
                        spotLight.lockuptime,
                         style: TextStyle
                          (
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),
                          overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    // SizedBox
                    // (
                    //   width: 10,
                    // ),


                  
                    // Expanded(
                    //   child: spotLight.status=='Live'?
                    //   Container(
                    //     height: 20,
                    //     width: double.infinity,
                    //     decoration: BoxDecoration
                    //     (
                    //       color: Colors.red,
                    //       borderRadius: BorderRadius.all(Radius.circular(10))
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Container(
                    //           width: 10,
                    //           height: 10,
                    //           decoration: BoxDecoration(
                    //             shape: BoxShape.circle,
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //         SizedBox
                    //         (
                    //           width: 5,
                    //         ),
                    //         Text
                    //         (
                    //           spotLight.status,
                    //            style: TextStyle
                    //             (
                    //               color: Colors.white,
                    //               fontSize: 15,
                    //               fontWeight: FontWeight.w500
                    //             ),
                    //         ),
                    //       ],
                    //     ),
                    //   )
                    //   :spotLight.status=='Upcoming'?
                    //   Container(
                    //     height: 20,
                    //     width: double.infinity,
                    //     decoration: BoxDecoration
                    //     (
                    //       color: Colors.grey,
                    //       borderRadius: BorderRadius.all(Radius.circular(10))
                    //     ),
                    //     child: Center(
                    //       child: Text
                    //           (
                    //             spotLight.status,
                    //              style: TextStyle
                    //               (
                    //                 color: Colors.white,
                    //                 fontSize: 15,
                    //                 fontWeight: FontWeight.w500
                    //               ),
                    //           ),
                    //     ),
                    //   )
                    //   :
                    //   Container(
                    //     height: 20,
                    //     width: double.infinity,
                    //     decoration: BoxDecoration
                    //     (
                    //       color: Colors.pink,
                    //       borderRadius: BorderRadius.all(Radius.circular(10))
                    //     ),
                    //     child: Center(
                    //       child: Text
                    //           (
                    //             spotLight.status,
                    //              style: TextStyle
                    //               (
                    //                 color: Colors.white,
                    //                 fontSize: 15,
                    //                 fontWeight: FontWeight.w500
                    //               ),
                    //           ),
                    //     ),
                    //   )
                    // ),
                    

                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(0.0),
                          height: 30.0,//MediaQuery.of(context).size.width * .08,
                          width: 80.0,//MediaQuery.of(context).size.width * .3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: Row(
                            children: <Widget>[
                              LayoutBuilder(builder: (context, constraints) {
                                print(constraints);
                                return Container(
                                  height: constraints.maxHeight,
                                  width: constraints.maxHeight,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Colors.white,
                                  ),
                                );
                              }),
                              Expanded(
                                child: Text(
                                  'View',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox
    (
      child: _isLoading
      ?
      SpinKitDualRing
      (
        color: Colors.pinkAccent.shade200,
      )
      :
      Column
      (
        children: 
        [
          Row
                (
                  children: 
                  [
                    Expanded
                    (
                      child: Text
                      (
                        'TOKEN NAME',
                        style: TextStyle
                            (
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w900
                            ),
                      )
                    ),
                    Expanded
                    (
                      child: Text
                      (
                        'TOTAL SUPPLY',
                        style: TextStyle
                            (
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w900
                            ),
                      )
                    ),
                    Expanded
                    (
                      child: Text
                      (
                        'SMARTCONTRACT ADDRESS',
                        style: TextStyle
                            (
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w900
                            ),
                      )
                    ),
                    Spacer()
                  ],
                ),

                // SizedBox
                //   (
                //     height: 20,
                //   ),

                  ...buildLastJobs1()
        ],
      )
    );
  }
}