import 'dart:developer';

import 'package:align_positioned/align_positioned.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/screen/partners_profile.dart';

import '../theme/appcolor.dart';
import '../widgets/appbar_widget.dart';

class AuditingPartners extends StatefulWidget {
  const AuditingPartners({Key? key}) : super(key: key);

  @override
  State<AuditingPartners> createState() => _AuditingPartnersState();
}

class _AuditingPartnersState extends State<AuditingPartners> {

  List<dynamic> _partners = [
    {
      'name': 'Test',
      'subtitle':'do',
      'avatar': 'assets/images/test.png',
      'verify':'verified'
    },
    {
      'name': 'BlockAudit',
      'subtitle':'LaunchPad',
      'avatar': 'assets/images/BlockAudit.png',
      'verify':'not verified'
    },
    {
      'name': 'Test',
      'subtitle':'BlockAudit 2022 is only leading company which performs audit in every technical field of any computer language. HTML, PHP, JS, Node, React, Native, Solidity, Rust, Web3 etc are main framework for DApps, DeFi, GameFi and Metaverse. BlockAudit one of the best Audit Company you can get with a team of engineers and analysts, specialised technology having a great and wide experience in crypto market. We provide the most budget and investor friendly Audit Report.',
      'avatar': 'assets/images/test.png',
      'verify':'not verified'
    },
    {
      'name': 'BlockAudit',
      'subtitle':'BlockAudit 2022 is only leading company which performs audit in every technical field of any computer language. HTML, PHP, JS, Node, React, Native, Solidity, Rust, Web3 etc are main framework for DApps, DeFi, GameFi and Metaverse. BlockAudit one of the best Audit Company you can get with a team of engineers and analysts, specialised technology having a great and wide experience in crypto market. We provide the most budget and investor friendly Audit Report.',
      'avatar': 'assets/images/BlockAudit.png',
      'verify':'verified'
    },
    {
      'name': 'Test',
      'subtitle':'BlockAudit 2022 is only leading company which performs audit in every technical field of any computer language. HTML, PHP, JS, Node, React, Native, Solidity, Rust, Web3 etc are main framework for DApps, DeFi, GameFi and Metaverse. BlockAudit one of the best Audit Company you can get with a team of engineers and analysts, specialised technology having a great and wide experience in crypto market. We provide the most budget and investor friendly Audit Report.',
      'avatar': 'assets/images/test.png',
      'verify':'not verified'
    },
    {
      'name': 'BlockAudit',
      'subtitle':'BlockAudit 2022 is only leading company which performs audit in every technical field of any computer language. HTML, PHP, JS, Node, React, Native, Solidity, Rust, Web3 etc are main framework for DApps, DeFi, GameFi and Metaverse. BlockAudit one of the best Audit Company you can get with a team of engineers and analysts, specialised technology having a great and wide experience in crypto market. We provide the most budget and investor friendly Audit Report.',
      'avatar': 'assets/images/BlockAudit.png',
      'verify':'verified'
    },
  ];

  user(int index, double number) {
    index = number ~/ 60;
    return FadeInRight(
      delay: Duration(seconds: 1),
      duration: Duration(milliseconds: (index * 100) + 500),
      child: GestureDetector(
        onTap: () {
          // Navigator.push(context, 
          //   MaterialPageRoute(
          //     builder: (context) => ContactPay(
          //       name: _partners[index]['name'], 
          //       avatar: _partners[index]['avatar']
          //     )
          //   )
          // );
        },
        child: Container(
          margin: EdgeInsets.only(right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Transform.rotate(
                angle: number / 60 * 5.2,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green.shade100,
                  backgroundImage: AssetImage(_partners[index]['avatar']),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
      appBar: MyAppBar(title: 'Our Partners',),

      body: SingleChildScrollView
      (
        physics: BouncingScrollPhysics(),
        child: Column
        (
          children: 
          [

            // Padding(
            //   padding: const EdgeInsets.only(left:20.0,right: 20),
            //   child: Container
            //   (
            //     // height: MediaQuery.of(context).size.height*0.20,
            //     width: double.infinity,
            //     decoration: BoxDecoration
            //     (
            //       borderRadius: BorderRadius.all(Radius.circular(10)),
            //       color: Appcolor.background
            //     ),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         SizedBox
            //         (
            //           height: 20,
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(left:20.0),
            //           child: Text
            //           (
            //             'Our Partners',
            //               style: TextStyle
            //                 (
            //                   color: Colors.white,
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.w900
            //                 ),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 20,
            //         )
            //       ],
            //     ),
            //   ),
            // ),

            //
            SizedBox(height: 50,),
            FadeInUp(
              duration: Duration(milliseconds: 500),
              child: Container(
                width: double.infinity,
                height: 300,
                padding: EdgeInsets.all(90.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade200, width: 1.0),
                ),
                child: Stack(
                  children: [
                    for (double i = 0; i < 360; i += 60)
                      AnimChain(
                        initialDelay: Duration(milliseconds: i.toInt())
                      )
                      .next(
                        wait: Duration(milliseconds: 1000),
                        widget: AnimatedAlignPositioned(
                          dx: 0,
                          dy: 150,
                          duration: Duration(seconds: 1),
                          rotateDegrees: 0,
                          touch: Touch.middle,
                          child: user(0, i),
                        ),
                      )
                      .next(
                        wait: Duration(seconds: 2),
                        widget: AnimatedAlignPositioned(
                          dx: i / 360,
                          dy: 150,
                          duration: Duration(seconds: 1),
                          rotateDegrees: i,
                          touch: Touch.middle,
                          child: user(0, i),
                        ),
                      ),
                  ],
                ),
              ),
            ),


            //
            SizedBox(height: 30,),
            FadeInRight(
              duration: Duration(milliseconds: 500),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 15.0, top: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('All Partners', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
                  // textAlign: TextAlign.centerLeft,
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 200,
              padding: EdgeInsets.only(left: 20),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: _partners.length,
                itemBuilder: (context, index) {
                  return FadeInRight(
                    duration: Duration(milliseconds: (index * 100) + 500),
                    // child: Container(
                    //   margin: EdgeInsets.only(bottom: 20),
                    //   child: Row(
                    //     children: <Widget>[
                    //       Row(
                    //         children: [
                    //           CircleAvatar(
                    //             radius: 30,
                    //             backgroundColor: Colors.red[100],
                    //             backgroundImage: AssetImage(_partners[index]['avatar']),
                    //           ),
                    //           SizedBox(width: 10,),
                    //           Column(
                    //             children: [
                    //               Text
                    //               (
                    //                 _partners[index]['name'], style: TextStyle
                    //                 (
                    //                   fontSize: 14, fontWeight: FontWeight.w600,color: Colors.white
                    //                 ),
                    //               ),

                    //               SizedBox
                    //               (
                    //                 height: 10,
                    //               ),
                    //               Text
                    //               (
                                    
                    //                 _partners[index]['subtitle'], style: TextStyle
                    //                 (
                    //                   fontSize: 12, fontWeight: FontWeight.w300,color: Colors.grey
                    //                 ),
                    //                 maxLines: 4,
                    //                 overflow: TextOverflow.ellipsis,
                    //               ),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //       Spacer(),
                    //       IconButton(
                    //         icon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,),
                    //         onPressed: () 
                    //         {
                    //           log('Partns detail');
                    //           // Navigator.push(context, 
                    //           //   MaterialPageRoute(
                    //           //     builder: (context) => ContactPay(
                    //           //       name: _partners[index]['name'], 
                    //           //       avatar: _partners[index]['avatar']
                    //           //     )
                    //           //   )
                    //           // );
                    //         },
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Appcolor.background,
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical:20.0),
                            child: ListTile
                            (
                              onTap: ()
                              {
                                log('Auditor clicked');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>
                                  PartnersDetailScreen()
                                  )
                                );
                              },
                              leading:CircleAvatar
                              (
                                radius: 30,
                                backgroundColor: Colors.red[100],
                                backgroundImage: AssetImage(_partners[index]['avatar']),
                              ),
                              title: Container(
                                child: Row(
                                  children: [
                                    Text
                                    (
                                      _partners[index]['name'], style: TextStyle
                                      (
                                        fontSize: 14, fontWeight: FontWeight.w600,color: Colors.white
                                      ),
                                    ),

                                    // SizedBox
                                    // (
                                    //   width: 5,
                                    // ),

                                    // CircleAvatar
                                    // (
                                    //   radius: 8,
                                    //   backgroundColor: Appcolor.darkviolte4,
                                    //   child:  _partners[index]['name']=='verified'?Icon(Icons.cancel,color: Colors.amber,):SizedBox(),
                                    // )
                                  ],
                                ),
                              ),
                              subtitle: Text
                              (
                                _partners[index]['subtitle'], style: TextStyle
                                 (
                                    fontSize: 12, fontWeight: FontWeight.w300,color: Colors.grey
                                 ),
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,),
                            ),
                          ),
                        ),
                        SizedBox
                        (
                          height: 20,
                        )
                      ],
                    ),
                    
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}