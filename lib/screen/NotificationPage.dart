import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/notifications_model.dart';
import '../theme/appcolor.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key}) : super(key: key);

  // List<Notifications> notifications = getNotifications();

  // List<Widget> buildLastJobs1(){
  //   List<Widget> list = [];
  //   for (var i = notifications.length - 1; i > -1; i--) {
  //     // if(notifications.length==0)
  //     // {
  //     //   log('notificationno');
  //     //   Nodata();
  //     // }
  //     list.add(buildLastJob1(notifications[i]));
  //   }
  //   return list;
  // }

  // Widget Nodata()
  // {
  //   return Container
  //   (
  //     height: 200,
  //     width: 300,
  //     color: Colors.red,
  //     child: Text('no data'),
  //   );

  // }

  // Widget buildLastJob1(Notifications notifications){
  //   return Container(
  //     height: 100,
  //     // color: Colors.white,
  //     color: Appcolor.background,
  //     child: Column(
  //       children: [
  //         notifications.heading==null
  //         ?
  //         Container(
  //           height: 200,
  //           // width: MediaQuery.of(context).size.width,
  //           color: Colors.yellow,
  //           child: Card
  //           (
  //             child: Text
  //             (
  //               'no record',
  //               style: TextStyle
  //               (
  //                 color: Colors.white
  //               ),
  //             )
  //           ),
  //         ):
  //         Container
  //         (
  //           // width: MediaQuery.of(context).size.width,
  //           // height: MediaQuery.of(context).size.height*0.20,
  //           // height: 200,
  //           // color: Colors.transparent,
  //           child: Card(
  //             // color: Co,
  //             color: Appcolor.background,
  //             child: Column(
  //               children: [
  //                 Row
  //                 (
  //                   children: 
  //                   [
  //                     CircleAvatar
  //                     (
  //                       backgroundImage: NetworkImage(notifications.image),
  //                     ),
  //                     SizedBox
  //                     (
  //                       width: 10,
  //                     ),
  //                     Text
  //                     (
  //                       notifications.heading,
  //                       style: TextStyle
  //                       (
  //                         color: Colors.white
  //                       ),
  //                     ),
                     
  //                     Spacer(),
  //                     Text
  //                     (
  //                       notifications.trailing,
  //                       style: TextStyle
  //                       (
  //                         color: Colors.white
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //                 // SizedBox
  //                 // (
  //                 //   width: 60,
  //                 // ),
  //                 Container(
  //                   height: 20,
  //                   width: double.infinity,
  //                   color: Colors.transparent,
  //                   child: Padding(
  //                     padding: const EdgeInsets.only(left:50.0),
  //                     child: Row(
  //                       children: [
  //                         Expanded(
  //                           child: Text
  //                               (
  //                                 notifications.subheading,
  //                                 style: TextStyle
  //                                 (
  //                                   // color: Colors.white
  //                                   color: Colors.grey
  //                                 ),
  //                               ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }


  //demo
   //demo
  // Widget buildLastJob1(Notifications notifications){
  //   return ListView
  //   (
  //     shrinkWrap: true,
  //     children: 
  //     [
  //       Container
  //       (
  //         decoration: BoxDecoration
  //           (
  //             borderRadius: BorderRadius.all(Radius.circular(10.0)),
  //             color: Appcolor.background
  //           ),
  //         child: Padding(
  //             padding: const EdgeInsets.all(10.0),
  //             child: Column(
  //               children: [
  //                 // SizedBox
  //                 // (
  //                 //   height: 10,
  //                 // ),
  //                 Row
  //                 (
  //                   children: 
  //                   [
  //                     // SizedBox(width: 10,),
  //                     CircleAvatar
  //                     (
  //                       backgroundImage: NetworkImage(notifications.image),
  //                     ),
  //                     SizedBox
  //                     (
  //                       width: 10,
  //                     ),
  //                     Text
  //                     (
  //                       notifications.heading,
  //                       style: TextStyle
  //                       (
  //                         color: Colors.white
  //                       ),
  //                     ),
                    
  //                     Spacer(),
  //                     Text
  //                     (
  //                       notifications.trailing,
  //                       style: TextStyle
  //                       (
  //                         color: Colors.white
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //                 // SizedBox
  //                 // (
  //                 //   width: 60,
  //                 // ),
  //                 Container(
  //                   // height: 40,
  //                   width: double.infinity,
  //                   color: Colors.transparent,
  //                   child: Padding(
  //                     padding: const EdgeInsets.only(left:50.0),
  //                     child: Row(
  //                       children: [
  //                         Expanded(
  //                           child: Text
  //                               (
  //                                 notifications.subheading,
  //                                 style: TextStyle
  //                                 (
  //                                   // color: Colors.white
  //                                   color: Colors.grey
  //                                 ),
  //                               ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //       ),
  //       SizedBox
  //       (
  //         height: 10,
  //       )
  //     ],
  //   );
  // }


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
                        'Notifications',
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
            SizedBox
            (
              height: 10,
            ),

            // Container
            // (
            //   height: MediaQuery.of(context).size.height*0.3,
            //   width: double.infinity,
            //   child: Card
            //   (
            //     color: Appcolor.background,
            //     child:Center(
            //       child: Text
            //       (
            //         'Not Yet Received Any Notifications',
            //         style: TextStyle
            //         (
            //           color: Colors.grey
            //         ),
            //       ),
            //     )
            //   ),
            // ),
            // ...buildLastJobs1()

          notifications.isEmpty?
          Container
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
                            'Not Yet Received Any Notifications',
                            style: TextStyle
                            (
                              color: Colors.grey
                            ),
                          ),
                        )
                      ),
                    )
          :Container(
              // height: MediaQuery.of(context).size.height*0.20,
              height: 600,
              width: double.infinity,
              color: Colors.transparent,
              child: ListView.builder
              (
                itemCount: notifications.length,
                itemBuilder: (context,index)
                {
                  log(notifications.length.toString());
                  return Container
                  (
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.20,
                    // height: 600,
                    // color: Colors.yellow,
                    child: Card(
                      color: Appcolor.background,
                      // color: Appcolor.background,
                      child:Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            SizedBox
                            (
                              height: 10,
                            ),
                            Row
                            (
                              children: 
                              [
                                CircleAvatar
                                (
                                  backgroundImage: NetworkImage(notifications[index].image),
                                ),
                                SizedBox
                                (
                                  width: 10,
                                ),
                                Text
                                (
                                  notifications[index].heading,
                                  style: TextStyle
                                  (
                                    color: Colors.white
                                  ),
                                ),
                              
                                Spacer(),
                                Text
                                (
                                  notifications[index].trailing,
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
                              height: 30,
                              width: double.infinity,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.only(left:50.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text
                                          (
                                            notifications[index].subheading,
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
                      )
                      
                    ),
                  );
                  
                },
              ),
            )
            
          ],
        ),
      ),
    );
  }

}