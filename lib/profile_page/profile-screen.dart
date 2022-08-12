import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hami_launch/profile_page/post.dart';
import 'package:hami_launch/profile_page/projects.dart';
import 'package:hami_launch/profile_page/token.dart';

import '../theme/appcolor.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: CustomScrollView
      (
        slivers: 
        [
          SliverAppBar
          (
            backgroundColor: Appcolor.darkviolte,
            flexibleSpace: FlexibleSpaceBar
            (
              title: Text
              (
                'Hami LaunchPad'
              ),
              background: Image.asset('assets/images/logo.png'),
            ),
            actions: 
            [
              IconButton
              (
                onPressed: ()
                {
                  log('logout clicked');
                }, 
                icon: Icon(Icons.logout)
                )
            ],
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height*0.305,
          ),
          SliverList
          (
            delegate: SliverChildListDelegate
            (
              [
                Container
                (
                  height: MediaQuery.of(context).size.height*0.900,
                  width: double.infinity,
                  // height: 650,
                  // width: 100,
                  decoration: BoxDecoration
                  (
                    color: Appcolor.background,
                    // color: Colors.yellow,
                    // border: Border.all
                    // (
                    //   color: Colors.black,
                    //   width: 2.0
                    // )
                  ),
                  child: Column
                  (
                    children: 
                    [
                      SizedBox
                      (
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar
                            (
                              backgroundColor: Appcolor.darkviolte,
                              radius: 40,
                              backgroundImage: AssetImage('assets/images/lion_meta.png'),
                            ),
                            SizedBox
                            (
                              width: 10,
                            ),
                            Expanded(
                              child: Container
                              (
                                height: 70,
                                width: 300,
                                
                                decoration: BoxDecoration
                                (
                                  color: Appcolor.darkviolte6,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Row
                                (
                                  children: 
                                  [
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        // width: double.infinity,
                                        color: Colors.transparent,
                                        child: Column(
                                          children: [
                                            Text
                                            (
                                              'Tokens',
                                              style: TextStyle
                                              (
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontFamily: 'Inter'
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left:10.0,right: 10),
                                              child: Divider
                                              (
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text
                                            (
                                              '0 Tokens',
                                              style: TextStyle
                                              (
                                                fontWeight: FontWeight.w800,
                                                color: Colors.white.withOpacity(0.9)
                                                // color: Colors.grey.withOpacity(0.4)
                                              )
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 10),
                                      color: Colors.grey.shade600,
                                      width: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        // width: double.infinity,
                                        color: Colors.transparent,
                                        child: Column(
                                          children: [
                                            Text
                                            (
                                              'Projects',
                                              style: TextStyle
                                              (
                                                color: Colors.white,
                                                fontFamily: 'inter',
                                                fontSize: 15
                                              ),
                                            ),
                                
                                            Padding(
                                              padding: const EdgeInsets.only(left:10.0,right: 10),
                                              child: Divider
                                              (
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text
                                            (
                                              '0 Projects',
                                              style: TextStyle
                                              (
                                                fontWeight: FontWeight.w800,
                                                color: Colors.white.withOpacity(0.9)
                                                // color: Colors.grey.withOpacity(0.4)
                                              )
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                  
                      SizedBox
                      (
                        height: 60,
                      ),
                      Container
                      (
                        height: MediaQuery.of(context).size.height*0.500,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: DefaultTabController(
                          length: 3,
                          child: Column(
                            children: <Widget>[
                              Container(
                                constraints: BoxConstraints.expand(height: 50),
                                child: TabBar(
                                  indicatorColor: Colors.pinkAccent,
                                  // indicator: UnderlineTabIndicator(
                                  //   borderSide: BorderSide
                                  //   (
                                  //     width: 1.0,
                                  //     color: Colors.pinkAccent
                                  //   ),
                                  //   insets: EdgeInsets.symmetric(horizontal:16.0)
                                  // ),
                                  // indicatorPadding: EdgeInsets.all(80),
                                  tabs: [
                                  Tab(text: "Token"),
                                  Tab(text: "Projects"),
                                  Tab(text: "Posts"),
                                ]),
                              ),
                              Expanded(
                                child: Container(
                                  child: TabBarView(children: [
                                    Tokens(),
                                    Projects(),
                                    Posts()
                                    // Container(
                                    //   child: Text("Articles Body"),
                                    // ),
                                    // Container(
                                    //   child: Text("User Body"),
                                    // ),
                                  ]),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]
            )
          )
        ],
      ),
    );
  }
}

// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Stack(
//       fit: StackFit.expand,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             color: Appcolor.darkviolte6
//             // gradient: LinearGradient(
//             //   colors: [
//             //     // Color.fromRGBO(4, 9, 35, 1),
//             //     // Color.fromRGBO(39, 105, 171, 1),
//             //     Appcolor.darkviolte6,
//             //     Appcolor.darkviolte2
//             //   ],
//             //   begin: FractionalOffset.bottomCenter,
//             //   end: FractionalOffset.topCenter,
//             // ),
//           ),
//         ),
//         Scaffold(
//           backgroundColor: Appcolor.darkviolte6,
//           body: SingleChildScrollView(
//             physics: BouncingScrollPhysics(),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 73),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       IconButton
//                       (
//                         onPressed: ()
//                         {
//                           Navigator.pop(context);
//                         }, 
//                         icon: Icon
//                         (
//                           AntDesign.arrowleft,
//                           color: Colors.white,
//                         )
//                       ),

//                       Text(
//                     // 'My\nProfile',
//                     'My Profile',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontFamily: 'inter',
//                     ),
//                   ),
//                       IconButton
//                       (
//                         onPressed: ()
//                         {
//                           log('logout clicked');
//                         }, 
//                         icon: Icon
//                         (
//                           AntDesign.logout,
//                           color: Colors.white,
//                         )
//                       ),
//                       // Icon(
//                       //   AntDesign.arrowleft,
//                       //   color: Colors.white,
//                       // ),
//                       // Icon(
//                       //   AntDesign.logout,
//                       //   color: Colors.white,
//                       // ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   // Text(
//                   //   // 'My\nProfile',
//                   //   'My Profile',
//                   //   textAlign: TextAlign.center,
//                   //   style: TextStyle(
//                   //     color: Colors.white,
//                   //     fontSize: 34,
//                   //     fontFamily: 'inter',
//                   //   ),
//                   // ),
//                   // SizedBox(
//                   //   height: 22,
//                   // ),
//                   Container(
//                     height: height * 0.43,
//                     child: LayoutBuilder(
//                       builder: (context, constraints) {
//                         double innerHeight = constraints.maxHeight;
//                         double innerWidth = constraints.maxWidth;
//                         return Stack(
//                           fit: StackFit.expand,
//                           children: [
//                             Positioned(
//                               bottom: 0,
//                               left: 0,
//                               right: 0,
//                               child: Container(
//                                 height: innerHeight * 0.72,
//                                 width: innerWidth,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(30),
//                                   color: Appcolor.background,
//                                 ),
//                                 child: Column(
//                                   children: [
//                                     SizedBox(
//                                       height: 80,
//                                     ),
//                                     Text(
//                                       'Jhone Doe',
//                                       style: TextStyle(
//                                         color: Color.fromRGBO(39, 105, 171, 1),
//                                         fontFamily: 'inter',
//                                         fontSize: 37,
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       height: 5,
//                                     ),
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Column(
//                                           children: [
//                                             Text(
//                                               'Orders',
//                                               style: TextStyle(
//                                                 color: Colors.grey[700],
//                                                 fontFamily: 'inter',
//                                                 fontSize: 25,
//                                               ),
//                                             ),
//                                             Text(
//                                               '10',
//                                               style: TextStyle(
//                                                 color: Color.fromRGBO(
//                                                     39, 105, 171, 1),
//                                                 fontFamily: 'inter',
//                                                 fontSize: 25,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         Padding(
//                                           padding: const EdgeInsets.symmetric(
//                                             horizontal: 25,
//                                             vertical: 8,
//                                           ),
//                                           child: Container(
//                                             height: 50,
//                                             width: 3,
//                                             decoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(100),
//                                               color: Colors.grey,
//                                             ),
//                                           ),
//                                         ),
//                                         Column(
//                                           children: [
//                                             Text(
//                                               'Pending',
//                                               style: TextStyle(
//                                                 color: Colors.grey[700],
//                                                 fontFamily: 'Nunito',
//                                                 fontSize: 25,
//                                               ),
//                                             ),
//                                             Text(
//                                               '1',
//                                               style: TextStyle(
//                                                 color: Color.fromRGBO(
//                                                     39, 105, 171, 1),
//                                                 fontFamily: 'Nunito',
//                                                 fontSize: 25,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               top: 110,
//                               right: 20,
//                               child: Icon(
//                                 AntDesign.setting,
//                                 color: Colors.grey[700],
//                                 size: 30,
//                               ),
//                             ),
//                             Positioned(
//                               top: 0,
//                               left: 0,
//                               right: 0,
//                               child: Center(
//                                 child: Container(
//                                   child: CircleAvatar
//                                   (
//                                     radius: 60,
//                                     backgroundColor:  Appcolor.background,
//                                     backgroundImage: AssetImage('assets/images/logo.png',),
//                                   ),
//                                   // child: Image.asset(
//                                   //   'images/flower1.jpg',
//                                   //   width: innerWidth * 0.45,
//                                   //   fit: BoxFit.fitWidth,
//                                   // ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         );
//                       },
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Container(
//                     height: height * 0.5,
//                     width: width,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Appcolor.background,
//                       // color: Colors.white,
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 15),
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             'My Orders',
//                             style: TextStyle(
//                               color: Color.fromRGBO(39, 105, 171, 1),
//                               fontSize: 27,
//                               fontFamily: 'Nunito',
//                             ),
//                           ),
//                           Divider(
//                             thickness: 2.5,
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Container(
//                             height: height * 0.15,
//                             decoration: BoxDecoration(
//                               color: Colors.grey,
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Container(
//                             height: height * 0.15,
//                             decoration: BoxDecoration(
//                               color: Colors.grey,
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }