import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hami_launch/screen/Detail_Auditing_Partners.dart';

import '../Dialogbox/dialog_helper.dart';
import '../config.dart';
import '../models/job.dart';

class PartnersAuditing extends StatelessWidget {
  PartnersAuditing({Key? key}) : super(key: key);

  List<Aud> aud1 = getAud();

  // get context => null;

  List<Widget> buildLastJobs1(BuildContext context) {
    List<Widget> list = [];
    for (var i = aud1.length - 1; i > -1; i--) {
      list.add(buildLastJob1(context, aud1[i]));
    }
    return list;
  }

  Widget buildLastJob1(BuildContext context, Aud aud1) {
    log('build1');
    return Column(
      children: [
        Container(
          // height: 600,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            // color: Appcolor.background
            color: currentTheme.isDark ? Colors.black : Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey.shade100,
                radius: 30,
                child: CircleAvatar(
                    radius: 25, backgroundImage: AssetImage(aud1.profileimg)),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                aud1.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: currentTheme.isDark ? Colors.white : Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 22,
              ),
              Text(
                aud1.desc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    height: 1.5),
                // overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      log('View Profile');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const DetailAuditingPartners()));
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      // padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 2, color: Colors.grey.shade100),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          'View Profile',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      log('apply Auditing');
                      DialogHelper.exit(context);
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      // padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          // border:
                          //     Border.all(width: 2, color: Colors.grey.shade100),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                        child: Text(
                          'Apply Auditing',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 45,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey.shade200,
              ),
            ),
          ),
          child: AppBar(
            backgroundColor: currentTheme.isDark ? Colors.black : Colors.white,
            // backgroundColor: Appcolor.darkviolte6,
            // backgroundColor: currentTheme.isDark ? Colors.white : Colors.black,
            title: Text(
              "Auditing Partners",
              style: TextStyle(
                  color: currentTheme.isDark ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            centerTitle: false,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: currentTheme.isDark ? Colors.white : Colors.black,
              ),
            ),
            elevation: 0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),

            //content

            // Container(
            //   height: 500,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     borderRadius: const BorderRadius.all(Radius.circular(10)),
            //     // color: Appcolor.background
            //     color: currentTheme.isDark ? Colors.black : Colors.white,
            //   ),
            // ),
            ...buildLastJobs1(context),

            SizedBox(height: MediaQuery.of(context).size.height * 0.09),

            //disclaimer
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                // style: const TextStyle(color: Colors.black, fontSize: 36),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Disclaimer:',
                      style: TextStyle(
                          fontSize: 16,
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                          height: 1.5)),
                  // const TextSpan(text: 'dot '),
                  const TextSpan(
                      text:
                          'The information provided shall not in any way constitute a recommendation as to whether you should invest in any product discussed. We accept no liability for any loss occasioned to any person acting or refraining from action as a result of any material provided or published.',
                      style: TextStyle(
                          color: Colors.grey, fontSize: 16, height: 1.5
                          // decoration: TextDecoration.underline
                          ))
                ],
              ),
              // textScaleFactor: 0.5,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.09),
          ],
        ),
      ),
    );
  }
}
















// import 'dart:developer';

// import 'package:align_positioned/align_positioned.dart';
// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'package:hami_launch/screen/Detail_Auditing_Partners.dart';
// import 'package:wave_transition/wave_transition.dart';

// import '../config.dart';
// import '../theme/appcolor.dart';
// import '../widgets/appbar_widget.dart';

// class AuditingPartners extends StatefulWidget {
//   const AuditingPartners({Key? key}) : super(key: key);

//   @override
//   State<AuditingPartners> createState() => _AuditingPartnersState();
// }

// class _AuditingPartnersState extends State<AuditingPartners> {
//   final List<dynamic> _partners = [
//     {
//       'name': 'Test',
//       'subtitle':
//           'BlockAudit 2022 is only leading company which performs audit in every technical field of any computer language. HTML, PHP, JS, Node, React, Native, Solidity, Rust, Web3 etc are main framework for DApps, DeFi, GameFi and Metaverse. BlockAudit one of the best Audit Company you can get with a team of engineers and analysts, specialised technology having a great and wide experience in crypto market. We provide the most budget and investor friendly Audit Report.',
//       'avatar': 'assets/images/test.png',
//     },
//     {
//       'name': 'BlockAudit',
//       'subtitle':
//           'BlockAudit 2022 is only leading company which performs audit in every technical field of any computer language. HTML, PHP, JS, Node, React, Native, Solidity, Rust, Web3 etc are main framework for DApps, DeFi, GameFi and Metaverse. BlockAudit one of the best Audit Company you can get with a team of engineers and analysts, specialised technology having a great and wide experience in crypto market. We provide the most budget and investor friendly Audit Report.',
//       'avatar': 'assets/images/BlockAudit.png',
//     },
//     {
//       'name': 'Test',
//       'subtitle':
//           'BlockAudit 2022 is only leading company which performs audit in every technical field of any computer language. HTML, PHP, JS, Node, React, Native, Solidity, Rust, Web3 etc are main framework for DApps, DeFi, GameFi and Metaverse. BlockAudit one of the best Audit Company you can get with a team of engineers and analysts, specialised technology having a great and wide experience in crypto market. We provide the most budget and investor friendly Audit Report.',
//       'avatar': 'assets/images/test.png',
//     },
//     {
//       'name': 'BlockAudit',
//       'subtitle':
//           'BlockAudit 2022 is only leading company which performs audit in every technical field of any computer language. HTML, PHP, JS, Node, React, Native, Solidity, Rust, Web3 etc are main framework for DApps, DeFi, GameFi and Metaverse. BlockAudit one of the best Audit Company you can get with a team of engineers and analysts, specialised technology having a great and wide experience in crypto market. We provide the most budget and investor friendly Audit Report.',
//       'avatar': 'assets/images/BlockAudit.png',
//     },
//     {
//       'name': 'Test',
//       'subtitle':
//           'BlockAudit 2022 is only leading company which performs audit in every technical field of any computer language. HTML, PHP, JS, Node, React, Native, Solidity, Rust, Web3 etc are main framework for DApps, DeFi, GameFi and Metaverse. BlockAudit one of the best Audit Company you can get with a team of engineers and analysts, specialised technology having a great and wide experience in crypto market. We provide the most budget and investor friendly Audit Report.',
//       'avatar': 'assets/images/test.png',
//     },
//     {
//       'name': 'BlockAudit',
//       'subtitle':
//           'BlockAudit 2022 is only leading company which performs audit in every technical field of any computer language. HTML, PHP, JS, Node, React, Native, Solidity, Rust, Web3 etc are main framework for DApps, DeFi, GameFi and Metaverse. BlockAudit one of the best Audit Company you can get with a team of engineers and analysts, specialised technology having a great and wide experience in crypto market. We provide the most budget and investor friendly Audit Report.',
//       'avatar': 'assets/images/BlockAudit.png',
//     },
//   ];

//   user(int index, double number) {
//     index = number ~/ 60;
//     return FadeInRight(
//       delay: const Duration(seconds: 1),
//       duration: Duration(milliseconds: (index * 100) + 500),
//       child: GestureDetector(
//         onTap: () {
//           // Navigator.push(context,
//           //   MaterialPageRoute(
//           //     builder: (context) => ContactPay(
//           //       name: _partners[index]['name'],
//           //       avatar: _partners[index]['avatar']
//           //     )
//           //   )
//           // );
//         },
//         child: Container(
//           margin: const EdgeInsets.only(right: 20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Transform.rotate(
//                 angle: number / 60 * 5.2,
//                 child: CircleAvatar(
//                   radius: 30,
//                   backgroundColor: Colors.green.shade100,
//                   backgroundImage: AssetImage(_partners[index]['avatar']),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Appcolor.darkviolte6,
//       appBar: MyAppBar(
//         title: 'Our Partners',
//       ),
//       body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 20.0, right: 20),
//               child: Container(
//                 // height: MediaQuery.of(context).size.height*0.20,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.all(Radius.circular(10)),
//                     color: Appcolor.background),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20.0),
//                       child: Text(
//                         'Our Partners',
//                         style: TextStyle(
//                             color: currentTheme.isDark
//                                 ? Colors.white
//                                 : Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.w900),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     )
//                   ],
//                 ),
//               ),
//             ),

//             //
//             const SizedBox(
//               height: 50,
//             ),
//             FadeInUp(
//               duration: const Duration(milliseconds: 500),
//               child: Container(
//                 width: double.infinity,
//                 height: 300,
//                 padding: const EdgeInsets.all(90.0),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   border: Border.all(color: Colors.grey.shade200, width: 1.0),
//                 ),
//                 child: Stack(
//                   children: [
//                     for (double i = 0; i < 360; i += 60)
//                       AnimChain(initialDelay: Duration(milliseconds: i.toInt()))
//                           .next(
//                             wait: const Duration(milliseconds: 1000),
//                             widget: AnimatedAlignPositioned(
//                               dx: 0,
//                               dy: 150,
//                               duration: const Duration(seconds: 1),
//                               rotateDegrees: 0,
//                               touch: Touch.middle,
//                               child: user(0, i),
//                             ),
//                           )
//                           .next(
//                             wait: const Duration(seconds: 2),
//                             widget: AnimatedAlignPositioned(
//                               dx: i / 360,
//                               dy: 150,
//                               duration: const Duration(seconds: 1),
//                               rotateDegrees: i,
//                               touch: Touch.middle,
//                               child: user(0, i),
//                             ),
//                           ),
//                   ],
//                 ),
//               ),
//             ),

//             //
//             const SizedBox(
//               height: 30,
//             ),
//             FadeInRight(
//               duration: const Duration(milliseconds: 500),
//               child: Padding(
//                 padding:
//                     const EdgeInsets.only(left: 20.0, bottom: 15.0, top: 10.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'All Partners',
//                     style: TextStyle(
//                         fontSize: 16,
//                         color:
//                             currentTheme.isDark ? Colors.white : Colors.black,
//                         fontWeight: FontWeight.w500),
//                     // textAlign: TextAlign.centerLeft,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height - 200,
//               padding: const EdgeInsets.only(left: 20),
//               child: ListView.builder(
//                 physics: const BouncingScrollPhysics(),
//                 itemCount: _partners.length,
//                 itemBuilder: (context, index) {
//                   return FadeInRight(
//                     duration: Duration(milliseconds: (index * 100) + 500),
//                     // child: Container(
//                     //   margin: EdgeInsets.only(bottom: 20),
//                     //   child: Row(
//                     //     children: <Widget>[
//                     //       Row(
//                     //         children: [
//                     //           CircleAvatar(
//                     //             radius: 30,
//                     //             backgroundColor: Colors.red[100],
//                     //             backgroundImage: AssetImage(_partners[index]['avatar']),
//                     //           ),
//                     //           SizedBox(width: 10,),
//                     //           Column(
//                     //             children: [
//                     //               Text
//                     //               (
//                     //                 _partners[index]['name'], style: TextStyle
//                     //                 (
//                     //                   fontSize: 14, fontWeight: FontWeight.w600,color: Colors.white
//                     //                 ),
//                     //               ),

//                     //               SizedBox
//                     //               (
//                     //                 height: 10,
//                     //               ),
//                     //               Text
//                     //               (

//                     //                 _partners[index]['subtitle'], style: TextStyle
//                     //                 (
//                     //                   fontSize: 12, fontWeight: FontWeight.w300,color: Colors.grey
//                     //                 ),
//                     //                 maxLines: 4,
//                     //                 overflow: TextOverflow.ellipsis,
//                     //               ),
//                     //             ],
//                     //           ),
//                     //         ],
//                     //       ),
//                     //       Spacer(),
//                     //       IconButton(
//                     //         icon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15,),
//                     //         onPressed: ()
//                     //         {
//                     //           log('Partns detail');
//                     //           // Navigator.push(context,
//                     //           //   MaterialPageRoute(
//                     //           //     builder: (context) => ContactPay(
//                     //           //       name: _partners[index]['name'],
//                     //           //       avatar: _partners[index]['avatar']
//                     //           //     )
//                     //           //   )
//                     //           // );
//                     //         },
//                     //       ),
//                     //     ],
//                     //   ),
//                     // ),
//                     child: Column(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 WaveTransition(
//                                     child: const DetailAuditingPartners(),
//                                     center: const FractionalOffset(0.90, 0.90),
//                                     duration: const Duration(
//                                         milliseconds: 3000) // optional
//                                     ));
//                           },
//                           child: Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             color: Appcolor.background,
//                             elevation: 10,
//                             child: Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(vertical: 20.0),
//                               child: ListTile(
//                                 leading: CircleAvatar(
//                                   radius: 30,
//                                   backgroundColor: Colors.red[100],
//                                   backgroundImage:
//                                       AssetImage(_partners[index]['avatar']),
//                                 ),
//                                 title: Text(
//                                   _partners[index]['name'],
//                                   style: TextStyle(
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w600,
//                                       color: currentTheme.isDark
//                                           ? Colors.white
//                                           : Colors.black),
//                                 ),
//                                 subtitle: Text(
//                                   _partners[index]['subtitle'],
//                                   style: const TextStyle(
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w300,
//                                       color: Colors.grey),
//                                   maxLines: 4,
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                                 trailing: Icon(
//                                   Icons.arrow_forward_ios,
//                                   color: currentTheme.isDark
//                                       ? Colors.white
//                                       : Colors.black,
//                                   size: 15,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         )
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
