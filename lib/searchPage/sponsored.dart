import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/models/sponsored.dart';
import '/theme/appcolor.dart';

class SponsoredTab extends StatelessWidget {
  SponsoredTab({Key? key}) : super(key: key);

 List<Sponsored> sponsored = getSponsored();

  List<Widget> buildLastJobs1(){
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
  Widget buildLastJob1(Sponsored sponsored){
    return ListView
    (
      shrinkWrap: true,
      children: 
      [
        Container
        (
          decoration: BoxDecoration
            (
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Appcolor.background
            ),
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  // SizedBox
                  // (
                  //   height: 10,
                  // ),
                  Row
                  (
                    children: 
                    [
                      // SizedBox(width: 10,),
                      CircleAvatar
                      (
                        backgroundImage: NetworkImage(sponsored.image),
                      ),
                      SizedBox
                      (
                        width: 10,
                      ),
                      Text
                      (
                        sponsored.heading,
                        style: TextStyle
                        (
                          color: Colors.white
                        ),
                      ),
                    
                      Spacer(),
                      Text
                      (
                        sponsored.trailing,
                        style: TextStyle
                        (
                          color: Colors.white
                        ),
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
                      padding: const EdgeInsets.only(left:50.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text
                                (
                                  sponsored.subheading,
                                  style: TextStyle
                                  (
                                    // color: Colors.white
                                    color: Colors.grey
                                  ),
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
        SizedBox
        (
          height: 10,
        )
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20),
        child: Column(
          children: [
            SizedBox
            (
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
            Container
            (
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Card
              (
                color: Appcolor.background,
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  [
                    // SizedBox
                    // (
                    //   width: 10,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Text
                      (
                        'Sponsored',
                        style: TextStyle
                        (
                          color: Colors.white
                        ),
                      ),
                    ),
                    PopupMenuButton<int>
                    (
                      itemBuilder: (context) => 
                      [
                        PopupMenuItem
                        (
                          value: 1,
                          child: Text
                          (
                            'Edit',
                            style: TextStyle
                            (
                              color: Colors.black
                            ),
                          )
                        ),
                        PopupMenuItem
                        (
                          value: 2,
                          child: Text
                          (
                            'Delete',
                            style: TextStyle
                            (
                              color: Colors.black
                            ),
                          )
                        )
                      ],
                      // icon: Icon(Icons.library_add),
                      icon: Icon
                      (
                        FontAwesomeIcons.ellipsis,
                        color: Colors.white,
                      ),
                      offset: Offset(0, 50),
                      onCanceled: ()
                      {
                        log('cancelled');
                      },
                      onSelected: (value)
                      {
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

            sponsored.isEmpty?Container
                    (
                      height: MediaQuery.of(context).size.height*0.3,
                      width: double.infinity,
                      child: Card
                      (
                        // color: Colors.pink,
                        color: Appcolor.background,
                        child:Center(
                          child: Text
                          (
                            'Not Yet Received sponsored Companies',
                            style: TextStyle
                            (
                              color: Colors.grey
                            ),
                          ),
                        )
                      ),
                    ):
                    SizedBox
                    (
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