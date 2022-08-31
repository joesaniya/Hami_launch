import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../models/job.dart';
import '../theme/appcolor.dart';
import '../widgets/animated_button.dart';

class SideMenuSpotLight extends StatefulWidget {
  const SideMenuSpotLight({Key? key}) : super(key: key);

  @override
  State<SideMenuSpotLight> createState() => _SideMenuSpotLightState();
}

class _SideMenuSpotLightState extends State<SideMenuSpotLight> {

  List<SpotLight> spotlight = getSpotLight();

  List<Widget> buildLastJobs1(){
    List<Widget> list = [];
    for (var i = spotlight.length - 1; i > -1; i--) {
      list.add(buildLastJob1(spotlight[i]));
    }
    return list;
  }

    Widget buildLastJob1(SpotLight spotLight){
    return Column(
      children: [
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

                    SizedBox
                    (
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
                      child: Text
                      (
                        spotLight.presaleprice,
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
                    //   width: 20,
                    // ),

                  
                    Expanded(
                      child: spotLight.status=='Live'?
                      Container(
                        height: 20,
                        width: double.infinity,
                        decoration: BoxDecoration
                        (
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox
                            (
                              width: 5,
                            ),
                            Text
                            (
                              spotLight.status,
                               style: TextStyle
                                (
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                                ),
                            ),
                          ],
                        ),
                      )
                      :spotLight.status=='Upcoming'?
                      Container(
                        height: 20,
                        width: double.infinity,
                        decoration: BoxDecoration
                        (
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Center(
                          child: Text
                              (
                                spotLight.status,
                                 style: TextStyle
                                  (
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                  ),
                              ),
                        ),
                      )
                      :
                      Container(
                        height: 20,
                        width: double.infinity,
                        decoration: BoxDecoration
                        (
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Center(
                          child: Text
                              (
                                spotLight.status,
                                 style: TextStyle
                                  (
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                  ),
                              ),
                        ),
                      )
                    ),
                  ],
                ),
          // child: Row
          // (
          //   children: 
          //   [
          //     Container(
          //       height: 20,
          //       width: 40,
          //       color:Colors.transparent,
          //       child: Text
          //       (
          //         shift1.heading,
          //         style: TextStyle
          //         (
          //           color: Colors.white
          //         ),
          //         overflow: TextOverflow.ellipsis,
          //       ),
          //     ),
          //     SizedBox(
          //       width: 20,
          //     ),
          //     Container
          //     (
          //       height: 30,
          //       width: 60,
          //       decoration: BoxDecoration
          //       (
          //         // color: shift1.sale=='Live'?Appcolor.darkviolte1:Shift1.sale=='Ended'?Colors.transparent:Colors.grey,
          //         // color: Appcolor.darkviolte1,
          //         color: shift1.status=='Live'?Colors.red:Colors.grey,
          //         borderRadius: BorderRadius.all(Radius.circular(20))
          //       ),
          //       child: Center
          //       (
          //         child: Padding(
          //           padding: const EdgeInsets.only(left:8.0,right: 8),
          //           child: FittedBox(
          //             child: Text
          //             (
          //               shift1.status,
          //               style: TextStyle(color: Colors.white),
          //             ),
          //           ),
          //         )
          //       ),
          //     ),
          //     // SizedBox
          //     // (
          //     //   width: 80,
          //     //   // width:100
          //     // ),
          //     Spacer(),
          //     Container(
          //       height: 20,
          //       width: 40,
          //       color:Colors.transparent,
          //       child: Text
          //       (
          //         shift1.supply,
          //         style: TextStyle
          //         (
          //           color: Colors.white
          //         ),
          //       ),
          //     ),
          //     // SizedBox
          //     // (
          //     //   width: 30,
          //     // ),
          //     Spacer(),
          //     Container(
          //       height: 30,
          //       width: 60,
          //       decoration: BoxDecoration
          //       (
          //         color: Colors.transparent,
          //         borderRadius: BorderRadius.all(Radius.circular(30))
          //       ),
          //       child: Center(
          //         child: Padding(
          //           padding: const EdgeInsets.only(left:8.0,right: 8),
          //           child: Text
          //           (
          //             shift1.Ltime,
          //             style: TextStyle
          //             (
          //               color: Colors.white
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        )
      ],
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
      appBar: AppBar
      (
        elevation: 0.0,
        backgroundColor: Appcolor.darkviolte6,
        automaticallyImplyLeading: false,
        leading: IconButton
        (
          onPressed:()
          {
            Navigator.pop(context);
          }, 
          icon: Icon
          (
            Icons.arrow_back_ios,
            color: Colors.white,
          )
        ),
        title: Text
        (
          'SpotLight',
          style: TextStyle
          (
            color: Colors.white
          ),
        ),
      ),
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
                  // height: MediaQuery.of(context).size.height*0.20,
                  // width: double.infinity,
                  decoration: BoxDecoration
                  (
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Appcolor.background
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0,right: 20.0),
                    child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: 
                      [
                        SizedBox
                        (
                          height: 20,
                        ),
                        Row
                        (
                          children: 
                          [
                            Image(image: AssetImage('assets/images/award.png')),
                            // SvgPicture.asset('assets/icons/camera.svg', color: Colors.white),
                            // Icon
                            // (
                            //   FontAwesome.award,
                            //   color: Appcolor.darkviolte4,
                            // ),
                            SizedBox
                            (
                              width: 10,
                            ),
                            Text
                            (
                              'SpotLight',
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

                        SizedBox
                        (
                          height: 10,
                        ),
                        Text
                            (
                              'This is SpotLight Page',
                              style: TextStyle
                              (
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          SizedBox
                          (
                            height: 10,
                          ),

                        // Align(
                        //   alignment: Alignment.centerRight,
                        //   child: Container
                        //   (
                        //     height: 40,
                        //     width: 80,
                        //     decoration: BoxDecoration
                        //     (
                        //       borderRadius: BorderRadius.all(Radius.circular(10)),
                        //       color: Appcolor.darkviolte
                        //     ),
                        //     child: Center(
                        //       child: Text
                        //         (
                        //           'Help',
                        //           style: TextStyle
                        //           (
                        //             color: Colors.white,
                        //             fontSize: 18,
                        //             fontWeight: FontWeight.w500
                        //           ),
                        //         ),
                        //     ),
                        //   ),
                        // )
                        AnimatedButton(),
                        SizedBox
                        (
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox
                (
                  height: 20,
                ),


                //2nd
                Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: 
                  const [
              

                    Expanded(
                      child: Text
                      (
                        'NAME',
                         style: TextStyle
                          (
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w900
                          ),
                      ),
                    ),

                    // SizedBox
                    // (
                    //   width: 20,
                    // ),

                    Expanded(
                      child: Text
                      (
                        'LIQUIDITY %',
                         style: TextStyle
                          (
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w900
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
                        'LOCUP TIME',
                         style: TextStyle
                          (
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w900
                          ),
                      ),
                    ),

                    SizedBox
                    (
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
                      child: Text
                      (
                        'PRICE',
                         style: TextStyle
                          (
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w900
                          ),
                          // overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    // SizedBox
                    // (
                    //   width: 20,
                    // ),


                    Expanded(
                      child: Text
                      (
                        'STATUS',
                         style: TextStyle
                          (
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w900
                          ),
                      ),
                    ),
                  ],
                ),

                SizedBox
                (
                  height: 20,
                ),

                //tok
                // Row
                // (
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: 
                //   [
                //     // Container
                //     // (
                //     //   width: double.infinity,
                //     //   color: Colors.yellow,
                //     //   height: 20,
                //     //   child: FittedBox(
                //     //     child: Row(
                //     //       children: [
                //     //         CircleAvatar
                //     //         (
                //     //           // radius: 20,
                //     //           backgroundColor: Colors.red,
                //     //         ),
                //     //         Text
                //     //         (
                //     //           'NAME',
                //     //            style: TextStyle
                //     //             (
                //     //               color: Colors.white,
                //     //               fontSize: 15,
                //     //               fontWeight: FontWeight.w500
                //     //             ),
                //     //         ),
                //     //       ],
                //     //     ),
                //     //   ),
                //     // ),
                //     Expanded(
                //       child: 
                //           Text
                //           (
                //             'NAME',
                //              style: TextStyle
                //               (
                //                 color: Colors.white,
                //                 fontSize: 15,
                //                 fontWeight: FontWeight.w500
                //               ),
                //           ),
                //     ),

                //     // SizedBox
                //     // (
                //     //   width: 20,
                //     // ),

                //     Expanded(
                //       child: Center(
                //         child: Text
                //         (
                //           'LIQUIDITY %',
                //            style: TextStyle
                //             (
                //               color: Colors.white,
                //               fontSize: 15,
                //               fontWeight: FontWeight.w500
                //             ),
                //         ),
                //       ),
                //     ),

                //     SizedBox
                //     (
                //       width: 10,
                //     ),

                //     Expanded(
                //       child: Center(
                //         child: Text
                //         (
                //           'LOCKUP TIME',
                //            style: TextStyle
                //             (
                //               color: Colors.white,
                //               fontSize: 15,
                //               fontWeight: FontWeight.w500
                //             ),
                //             overflow: TextOverflow.ellipsis,
                //         ),
                //       ),
                //     ),

                //     SizedBox
                //     (
                //       width: 10,
                //     ),


                //     // Expanded(
                //     //   child: Text
                //     //   (
                //     //     'LISTING PRICE',
                //     //      style: TextStyle
                //     //       (
                //     //         color: Colors.white,
                //     //         fontSize: 15,
                //     //         fontWeight: FontWeight.w900
                //     //       ),
                //     //   ),
                //     // ),

                //     // SizedBox
                //     // (
                //     //   width: 20,
                //     // ),


                //     Expanded(
                //       child: Text
                //       (
                //         'PRICE',
                //          style: TextStyle
                //           (
                //             color: Colors.white,
                //             fontSize: 15,
                //             fontWeight: FontWeight.w500
                //           ),
                //           overflow: TextOverflow.ellipsis,
                //       ),
                //     ),

                //     // SizedBox
                //     // (
                //     //   width: 20,
                //     // ),


                //     Expanded(
                //       child: Text
                //       (
                //         'STATUS',
                //          style: TextStyle
                //           (
                //             color: Colors.white,
                //             fontSize: 15,
                //             fontWeight: FontWeight.w500
                //           ),
                //       ),
                //     ),
                //   ],
                // ),

                ...buildLastJobs1()

                
              
                
            ],
          ),
        ),
      ),
    );
  }
}