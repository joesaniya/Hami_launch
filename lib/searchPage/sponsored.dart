import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../config.dart';
import '/models/sponsored.dart';
import '/theme/appcolor.dart';

class SponsoredTab extends StatelessWidget {
  SponsoredTab({Key? key}) : super(key: key);

  List<Sponsored> sponsored = getSponsored();

  List<Widget> buildLastJobs1() {
    List<Widget> list = [];
    for (var i = sponsored.length - 1; i > -1; i--) {
      list.add(buildLastJob1(sponsored[i]));
    }
    return list;
  }

  //   Widget buildLastJob1(Sponsored sponsored){
  //   return Container(
  //     height: 100,
  //     // color: Appcolor.background,
  //     decoration: BoxDecoration
  //           (
  //             borderRadius: BorderRadius.all(Radius.circular(20.0)),
  //             color: Colors.red
  //             // color: Appcolor.background
  //           ),
  //     child: Column(
  //       children: [
  //         Container
  //         (
  //           // width: MediaQuery.of(context).size.width,
  //           // height: MediaQuery.of(context).size.height*0.20,
  //           // height: 200,
  //           // color: Colors.transparent,
  //           decoration: BoxDecoration
  //           (
  //             borderRadius: BorderRadius.all(Radius.circular(20.0)),
  //             color: Colors.transparent
  //           ),
  //           child: Card(
  //             // color: Colors.amber,
  //             color: Appcolor.background,
  //             shape: RoundedRectangleBorder(
  //               // side: BorderSide(color: Colors.white70, width: 1),
  //               borderRadius: BorderRadius.circular(20),
  //             ),
  //             elevation: 0.0,
  //             child: Padding(
  //               padding: const EdgeInsets.all(10.0),
  //               child: Column(
  //                 children: [
  //                   // SizedBox
  //                   // (
  //                   //   height: 10,
  //                   // ),
  //                   Row
  //                   (
  //                     children:
  //                     [
  //                       // SizedBox(width: 10,),
  //                       CircleAvatar
  //                       (
  //                         backgroundImage: NetworkImage(sponsored.image),
  //                       ),
  //                       SizedBox
  //                       (
  //                         width: 10,
  //                       ),
  //                       Text
  //                       (
  //                         sponsored.heading,
  //                         style: TextStyle
  //                         (
  //                           color: Colors.white
  //                         ),
  //                       ),

  //                       Spacer(),
  //                       Text
  //                       (
  //                         sponsored.trailing,
  //                         style: TextStyle
  //                         (
  //                           color: Colors.white
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                   // SizedBox
  //                   // (
  //                   //   width: 60,
  //                   // ),
  //                   Container(
  //                     // height: 40,
  //                     width: double.infinity,
  //                     color: Colors.transparent,
  //                     child: Padding(
  //                       padding: const EdgeInsets.only(left:50.0),
  //                       child: Row(
  //                         children: [
  //                           Expanded(
  //                             child: Text
  //                                 (
  //                                   sponsored.subheading,
  //                                   style: TextStyle
  //                                   (
  //                                     // color: Colors.white
  //                                     color: Colors.grey
  //                                   ),
  //                                 ),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  //demo
  Widget buildLastJob1(Sponsored sponsored) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            // color: Appcolor.background
            color: currentTheme.isDark
                ? Colors.deepPurple.shade100
                : Colors.grey.shade200,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // SizedBox
                // (
                //   height: 10,
                // ),
                Row(
                  children: [
                    // SizedBox(width: 10,),
                    CircleAvatar(
                      backgroundImage: NetworkImage(sponsored.image),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      sponsored.heading,
                      style: const TextStyle(color: Colors.deepPurpleAccent
                          // color:
                          //     currentTheme.isDark ? Colors.white : Colors.black,
                          ),
                    ),

                    const Spacer(),
                    Text(
                      sponsored.trailing,
                      style: const TextStyle(color: Colors.deepPurpleAccent),
                    ),
                  ],
                ),
                // SizedBox
                // (
                //   width: 60,
                // ),
                Container(
                  // height: 40,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            sponsored.subheading,
                            style: const TextStyle(
                                // color: Colors.white
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            // Container
            // (
            //   height: MediaQuery.of(context).size.height*0.30,
            //   decoration: BoxDecoration
            //   (
            //     borderRadius: BorderRadius.all(Radius.circular(20.0)),
            //     color: Colors.red
            //   ),
            //   child: buildLastJob1(),
            // ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Card(
                // color: Appcolor.background,
                color: currentTheme.isDark
                    ? Colors.deepPurple.shade100
                    : Colors.grey.shade200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox
                    // (
                    //   width: 10,
                    // ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Sponsored',
                        style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    PopupMenuButton<int>(
                      color: currentTheme.isDark
                          ? Colors.deepPurple.shade100
                          : const Color.fromARGB(255, 255, 250, 250),
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                            value: 1,
                            child: Text(
                              'Edit',
                              style: TextStyle(color: Colors.black),
                            )),
                        const PopupMenuItem(
                            value: 2,
                            child: Text(
                              'Delete',
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                      // icon: Icon(Icons.library_add),
                      icon: const Icon(
                        FontAwesomeIcons.ellipsis,
                        color: Colors.deepPurpleAccent,
                      ),
                      offset: const Offset(0, 50),
                      onCanceled: () {
                        log('cancelled');
                      },
                      onSelected: (value) {
                        log('value: $value');
                      },
                    )
                    // IconButton
                    // (
                    //   onPressed: (){},
                    //   icon: Icon
                    //   (
                    //     Icons.person
                    //   ),
                    //   color: Colors.white,
                    // )
                  ],
                ),
              ),
            ),

            sponsored.isEmpty
                ? SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: double.infinity,
                    child: Card(
                        // color: Colors.pink,
                        color: Appcolor.background,
                        child: const Center(
                          child: Text(
                            'Not Yet Received sponsored Companies',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )),
                  )
                : const SizedBox(
                    height: 20,
                  ),
            // Container
            // (
            //   height: MediaQuery.of(context).size.height*0.060,
            //   width: double.infinity,
            //   color: Colors.transparent,
            //   child: Text
            //   (
            //     'Sponsored Companies',
            //     style: TextStyle
            //     (
            //       fontSize: 20,
            //       color: Colors.white
            //     ),
            //   ),
            // ),
            ...buildLastJobs1()
            // Container
            // (
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height*0.20,
            //   child: Card
            //   (
            //     color: Appcolor.background,
            //     child: buildLastJob1(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
