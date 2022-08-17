import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/models/job.dart';
import 'package:hami_launch/screen/verifykyc_screen.dart';
import 'package:hami_launch/theme/appcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:timelines/timelines.dart';
import 'package:underline_indicator/underline_indicator.dart';

import '../Dialogbox/dialog_helper.dart';
import '../profile_page/profile-screen.dart';

class ToenDetail extends StatefulWidget {
   String? name;
  // const ToenDetail
 ToenDetail ({
    this.name,}
  );

  @override
  State<ToenDetail> createState() => _ToenDetailState();
}

class _ToenDetailState extends State<ToenDetail> with SingleTickerProviderStateMixin {
  final _advancedDrawerController = AdvancedDrawerController();
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 1, vsync: this);
  }


   void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }

  bool _expanded = false;
  // var _test = "Full Screen";

  var isVisible = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
      // appBar:
      // PreferredSize(
      //   preferredSize: Size(double.infinity, 50),
      //   child: AppBar(
      //     centerTitle: false,

      //     leading: IconButton
      //     (
      //       color:Colors.white,
      //       onPressed: _handleMenuButtonPressed,
      //       icon: ValueListenableBuilder(
      //         valueListenable:  _advancedDrawerController,
      //         builder: (_, value, __ )
      //         {
      //           return AnimatedSwitcher
      //           (
      //             duration: Duration(microseconds: 250),
      //             child: Icon
      //             (
      //               value.visible ?Iconsax.close_square : Iconsax.menu,
      //                     key: ValueKey<bool>(value!.visible),
      //             ),
      //           );
      //         }
      //       ),
                    
      //     ),
      
      //      backgroundColor: Colors.transparent,
      //      elevation: 0.0,
      //      actions: 
      //     [
      //       SizedBox(width: 20,),
      //       IconButton
      //       (
      //         onPressed: ()
      //         {
      //           log('networkicon');
      //           DialogHelper1.exit(context);
      //         }, 
      //         icon: Icon(FontAwesomeIcons.globe)
      //       ),
      //       // SizedBox(width: 20,),
      //       IconButton
      //       (
      //         onPressed: ()
      //         {
      //           log('companyicon');
      //           DialogHelper.exit(context);
      //         }, 
      //         icon: Icon(FontAwesomeIcons.wallet)
      //       ),
            
      //       IconButton
      //       (
      //         onPressed: ()
      //         {
      //           log('Profile Page Clicked');
      //           // DialogHelper.exit(context);
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => ProfileScreen()),
      //           );
      //         }, 
      //         icon: Icon(LineIcons.user)
      //       ),
      //      ],
      //   ),
      // ),
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
          // 'Token Detail',
          widget.name!,
          style: TextStyle
          (
            color: Colors.white
          ),
        ),
      ),
      body: SingleChildScrollView
      (
        physics: BouncingScrollPhysics(),
        child:Padding(
          padding: const EdgeInsets.only(left:10.0,right: 10),
          child: Column
          (
            
            children: 
            [

              SizedBox
              (
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.30,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Appcolor.background,
                  elevation: 10,
                  child: Column
                  (
                    children: 
                    [
                      SizedBox
                            (
                              height: 20,
                            ),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,right: 20),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            
                            CircleAvatar
                            (
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/logo.png'),
                            ),
                            SizedBox
                            (
                              width: 20,
                            ),
                            Container
                            (
                              child: Column
                              (
                                children: 
                                [
                                  Text
                                  (
                                    widget.name!,
                                    // 'ABCD',
                                    style: TextStyle
                                    (
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900
                                    ),
                                  ),
                                  SizedBox
                                  (
                                    height: 10,
                                  ),
                                  Text
                                  (
                                    'ABCD',
                                    style: TextStyle
                                    (
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container
                                (
                                  // width: 40,
                                  // height: 30,
                                  decoration: BoxDecoration
                                  (
                                    color: Appcolor.darkviolte1,
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Row
                                  (
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: 
                                    [
                                      Image.asset('assets/images/lion_meta.png',height: 40,width: 50,),
                                      SizedBox
                                      (
                                        width: 10,
                                      ),
                                      Text
                                      (
                                        'ADD TO METAMASK',
                                        style: TextStyle
                                        (
                                          color: Colors.white,
                                          fontSize: 15
                                        ),
                                      )
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
                height: 20,
              ),

              //2
              Container
              (
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.50,
                // height: MediaQuery.of(context).size.height*0.20,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Appcolor.background,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 10),
                    child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: 
                      [
                        // SizedBox
                        // (
                        //   height: 20,
                        // ),
                        Align(
                          alignment: Alignment.center,
                          child: Text
                          (
                            'Journey Towards Spotlight',
                            style: TextStyle
                            (
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                            )
                            ,
                          ),
                        ),

                        Row
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: 
                          [
                            CircleAvatar
                             (
                              radius: 10,
                              backgroundColor: Colors.grey,
                              child: Center
                                (
                                  child: Icon
                                    (
                                      Icons.done,
                                      size: 15,
                                      color: Colors.white,
                                    )
                                ),
                            ),
                             SizedBox
                              (
                                width: 15,
                              ),
                             Column
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: 
                                  [
                                    Text
                                      (
                                       'KYC verification',
                                        style: TextStyle
                                        (
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    Text
                                      (
                                       'pending',
                                        style: TextStyle
                                        (
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500
                                        ),
                                  )
                               ],
                             )
                          ],
                        ),

                        //2
                        Row
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: 
                          [
                            CircleAvatar
                             (
                              radius: 10,
                              backgroundColor: Colors.grey,
                              child: Center
                                (
                                  child: Icon
                                    (
                                      Icons.done,
                                      size: 15,
                                      color: Colors.white,
                                    )
                                ),
                            ),
                             SizedBox
                              (
                                width: 15,
                              ),
                             Column
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: 
                                  [
                                    Text
                                      (
                                       'Smartcontract Audit',
                                        style: TextStyle
                                        (
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    Text
                                      (
                                       'pending',
                                        style: TextStyle
                                        (
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500
                                        ),
                                  )
                               ],
                             )
                          ],
                        ),


                        //3
                        Row
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: 
                          [
                            CircleAvatar
                             (
                              radius: 10,
                              backgroundColor: Colors.grey,
                              child: Center
                                (
                                  child: Icon
                                    (
                                      Icons.done,
                                      size: 15,
                                      color: Colors.white,
                                    )
                                ),
                            ),
                             SizedBox
                              (
                                width: 15,
                              ),
                             Column
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: 
                                  [
                                    Text
                                      (
                                       'Presale Creation',
                                        style: TextStyle
                                        (
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    Text
                                      (
                                       'pending',
                                        style: TextStyle
                                        (
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500
                                        ),
                                  )
                               ],
                             )
                          ],
                        ),

                        //4
                        Row
                        (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: 
                          [
                            Icon
                              (
                                Icons.rocket,
                                size: 25,
                                color: Colors.grey,
                              ),
                             SizedBox
                              (
                                width: 15,
                              ),
                             Column
                              (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: 
                                  [
                                    Text
                                      (
                                       'Spotlight',
                                        style: TextStyle
                                        (
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    Text
                                      (
                                       'pending',
                                        style: TextStyle
                                        (
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500
                                        ),
                                  )
                               ],
                             )
                          ],
                        )


                        //steps
                        // Row
                        // (
                        //   children: 
                        //   [
                        //     Expanded(
                        //       child: Container
                        //       (
                        //         width: double.infinity,
                        //         height: MediaQuery.of(context).size.height*0.10,
                        //         color: Colors.transparent,
                        //         child: FittedBox(
                        //           child: Row
                        //           (
                        //             mainAxisAlignment: MainAxisAlignment.start,
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: 
                        //             [
                        //               CircleAvatar
                        //               (
                        //                 radius: 10,
                        //                 backgroundColor: Colors.grey,
                        //                 child: Center
                        //                 (
                        //                   child: Icon
                        //                   (
                        //                     Icons.done,
                        //                     size: 15,
                        //                     color: Colors.white,
                        //                   )
                        //                 ),
                        //               ),
                        //               SizedBox
                        //               (
                        //                 width: 15,
                        //               ),
                        //               Column
                        //               (
                        //                 children: 
                        //                 [
                        //                   Text
                        //                   (
                        //                     'KYC verification',
                        //                     style: TextStyle
                        //                     (
                        //                       color: Colors.white,
                        //                       fontSize: 18,
                        //                       fontWeight: FontWeight.w700
                        //                     ),
                        //                   ),
                        //                   Text
                        //                   (
                        //                     'pending',
                        //                     style: TextStyle
                        //                     (
                        //                       color: Colors.white,
                        //                       fontSize: 16,
                        //                       fontWeight: FontWeight.w500
                        //                     ),
                        //                   )
                        //                 ],
                        //               )
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //     ),

                        //     SizedBox
                        //     (
                        //       width: 10,
                        //     ),

                        //     //2
                        //     Expanded(
                        //       child: Container
                        //       (
                        //         width: double.infinity,
                        //         height: MediaQuery.of(context).size.height*0.10,
                        //         color: Colors.transparent,
                        //         child: FittedBox(
                        //           child: Row
                        //           (
                        //             mainAxisAlignment: MainAxisAlignment.start,
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: 
                        //             [
                        //               CircleAvatar
                        //               (
                        //                 radius: 10,
                        //                 backgroundColor: Colors.grey,
                        //                 child: Center
                        //                 (
                        //                   child: Icon
                        //                   (
                        //                     Icons.done,
                        //                     size: 15,
                        //                     color: Colors.white,
                        //                   )
                        //                 ),
                        //               ),
                        //               SizedBox
                        //               (
                        //                 width: 15,
                        //               ),
                        //               Column
                        //               (
                        //                 children: 
                        //                 [
                        //                   Text
                        //                   (
                        //                     'Smartcontract Audit',
                        //                     style: TextStyle
                        //                     (
                        //                       color: Colors.white,
                        //                       fontSize: 18,
                        //                       fontWeight: FontWeight.w700
                        //                     ),
                        //                   ),
                        //                   Text
                        //                   (
                        //                     'pending',
                        //                     style: TextStyle
                        //                     (
                        //                       color: Colors.white,
                        //                       fontSize: 16,
                        //                       fontWeight: FontWeight.w500
                        //                     ),
                        //                   )
                        //                 ],
                        //               )
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //     ),

                        //     SizedBox
                        //     (
                        //       width: 10,
                        //     ),

                        //     //3
                        //     Expanded(
                        //       child: Container
                        //       (
                        //         width: double.infinity,
                        //         height: MediaQuery.of(context).size.height*0.10,
                        //         color: Colors.transparent,
                        //         child: FittedBox(
                        //           child: Row
                        //           (
                        //             mainAxisAlignment: MainAxisAlignment.start,
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: 
                        //             [
                        //               CircleAvatar
                        //               (
                        //                 radius: 10,
                        //                 backgroundColor: Colors.grey,
                        //                 child: Center
                        //                 (
                        //                   child: Icon
                        //                   (
                        //                     Icons.done,
                        //                     size: 15,
                        //                     color: Colors.white,
                        //                   )
                        //                 ),
                        //               ),
                        //               SizedBox
                        //               (
                        //                 width: 15,
                        //               ),
                        //               Column
                        //               (
                        //                 children: 
                        //                 [
                        //                   Text
                        //                   (
                        //                     'Presale Creation',
                        //                     style: TextStyle
                        //                     (
                        //                       color: Colors.white,
                        //                       fontSize: 18,
                        //                       fontWeight: FontWeight.w700
                        //                     ),
                        //                   ),
                        //                   Text
                        //                   (
                        //                     'pending',
                        //                     style: TextStyle
                        //                     (
                        //                       color: Colors.white,
                        //                       fontSize: 16,
                        //                       fontWeight: FontWeight.w500
                        //                     ),
                        //                   )
                        //                 ],
                        //               )
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //     ),

                        //     SizedBox
                        //     (
                        //       width: 10,
                        //     ),

                        //     //4
                        //     Expanded(
                        //       child: Container
                        //       (
                        //         width: double.infinity,
                        //         height: MediaQuery.of(context).size.height*0.10,
                        //         color: Colors.transparent,
                        //         child: FittedBox(
                        //           child: Row
                        //           (
                        //             mainAxisAlignment: MainAxisAlignment.start,
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: 
                        //             [
                        //               CircleAvatar
                        //               (
                        //                 radius: 10,
                        //                 backgroundColor: Colors.grey,
                        //                 child: Center
                        //                 (
                        //                   child: Icon
                        //                   (
                        //                     Icons.done,
                        //                     size: 15,
                        //                     color: Colors.white,
                        //                   )
                        //                 ),
                        //               ),
                        //               SizedBox
                        //               (
                        //                 width: 15,
                        //               ),
                        //               Column
                        //               (
                        //                 children: 
                        //                 [
                        //                   Text
                        //                   (
                        //                     'KYC verification',
                        //                     style: TextStyle
                        //                     (
                        //                       color: Colors.white,
                        //                       fontSize: 18,
                        //                       fontWeight: FontWeight.w700
                        //                     ),
                        //                   ),
                        //                   Text
                        //                   (
                        //                     'pending',
                        //                     style: TextStyle
                        //                     (
                        //                       color: Colors.white,
                        //                       fontSize: 16,
                        //                       fontWeight: FontWeight.w500
                        //                     ),
                        //                   )
                        //                 ],
                        //               )
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //     ),










                            
                        //   ],
                        // )
                      ],
                    ),
                  ),
              ),
              ),

              SizedBox
              (
                height: 20,
              ),

              //3
               Container
              (
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.20,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Appcolor.background,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 10),
                    child: Column
                    (
                      children: 
                      [
                        SizedBox
                        (
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                          (
                            'Token Description',
                            style: TextStyle
                            (
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                            )
                            ,
                          ),
                        ),
                        SizedBox
                        (
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                          (
                            'Token Description',
                            style: TextStyle
                            (
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            )
                            ,
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
              ),

              //4
              SizedBox
              (
                height: 20,
              ),

              //3
               GestureDetector(
                onTap: ()
                {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                 child: Container
                  (
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.10,
                  decoration: BoxDecoration
                  (
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Appcolor.darkgreen,
                        Appcolor.lightgreen
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 10),
                    child: Row
                    (
                      children: 
                      [
                        Icon
                        (
                          Icons.lock_outlined,
                          color: Colors.white,
                        ),
                        SizedBox
                        (
                          width: 20,
                        ),
                        Text
                        (
                          'Smart Lock',
                          style: TextStyle
                          (
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        Spacer(),
                        Icon
                        (
                          Icons.add,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                             ),
               ),
              Visibility
              (
                visible: isVisible,
                child:Container
                (
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.20,
                  decoration: BoxDecoration
                  (
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Appcolor.background,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: 
                      [
                        
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                          (
                            'No Locked Tokens On HAMI Launchpad',
                            style: TextStyle
                            (
                              color: Colors.grey,
                              fontSize: 18
                            ),
                          ),
                        ),
                        // SizedBox()
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                          (
                            'Learn More',
                            style: TextStyle
                            (
                              color: Colors.grey,
                              fontSize: 18,
                              decoration: TextDecoration.underline
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  // child: Card
                  // (
                  //   color: Colors.transparent,
                  //   shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(15.0),
                  // ),
                  // ),
                ),
              ),

              SizedBox
              (
                height: 15,
              ),

              Container
              (
                height: MediaQuery.of(context).size.height*0.64,
                width: double.infinity,
                
                decoration: BoxDecoration
                (
                  color: Appcolor.background,
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Card
                (
                  color: Appcolor.background,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: 
                      [
                        // SizedBox
                        // (
                        //   height: 10,
                        // ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                          (
                            'Smart Contract Address',
                            style: TextStyle
                            (
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                            ),
                          ),
                        ),
                        // SizedBox
                        // (
                        //   height: 10,
                        // ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                          (
                            'Smart Contract Address',
                            style: TextStyle
                            (
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),

                        // SizedBox
                        // (
                        //   height: 40,
                        // ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                          (
                            'Informations',
                            style: TextStyle
                            (
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                            ),
                          ),
                        ),

                        Row
                        (
                          children: 
                          [
                          Text
                            (
                              'Token Type :',
                              style: TextStyle
                              (
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500
                              ),
                            ),

                            SizedBox
                            (
                              width: 20,
                            ),

                            Text
                            (
                              '',
                              style: TextStyle
                              (
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w900
                              ),
                            ),
                          ],
                        ),


                        //2
                        Row
                        (
                          children: 
                          [
                          Text
                            (
                              'Token Name :',
                              style: TextStyle
                              (
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500
                              ),
                            ),

                            SizedBox
                            (
                              width: 20,
                            ),

                            Text
                            (
                              'JOJO INU',
                              style: TextStyle
                              (
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w900
                              ),
                            ),
                          ],
                        ),

                        //3
                        Row
                        (
                          children: 
                          [
                          Text
                            (
                              'Token Symbol :',
                              style: TextStyle
                              (
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500
                              ),
                            ),

                            SizedBox
                            (
                              width: 10,
                            ),

                            Text
                            (
                              'JOJO',
                              style: TextStyle
                              (
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w900
                              ),
                            ),
                          ],
                        ),

                        //4
                        Row
                        (
                          children: 
                          [
                          Text
                            (
                              'Decimal:',
                              style: TextStyle
                              (
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500
                              ),
                            ),

                            SizedBox
                            (
                              width: 55,
                            ),

                            Text
                            (
                              '9',
                              style: TextStyle
                              (
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w900
                              ),
                            ),
                          ],
                        ),

                        //5
                        Row
                        (
                          children: 
                          [
                          Text
                            (
                              'Total Supply :',
                              style: TextStyle
                              (
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500
                              ),
                            ),

                            SizedBox
                            (
                              width: 30,
                            ),

                            Text
                            (
                              '1000000000000000000000',
                              style: TextStyle
                              (
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w900
                              ),
                            ),
                          ],
                        )


                        // SizedBox
                        // (
                        //   height: 20,
                        // ),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Text
                        //   (
                        //     'Token Type',
                        //     style: TextStyle
                        //     (
                        //       fontSize: 18,
                        //       color: Colors.grey,
                        //       fontWeight: FontWeight.w500
                        //     ),
                        //   ),
                        // ),
                        // //
                        // SizedBox
                        // (
                        //   height: 20,
                        // ),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Text
                        //   (
                        //     'Token Name',
                        //     style: TextStyle
                        //     (
                        //       fontSize: 18,
                        //       color: Colors.grey,
                        //       fontWeight: FontWeight.w500
                        //     ),
                        //   ),
                        // ),
                        // SizedBox
                        // (
                        //   height: 5,
                        // ),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Text
                        //   (
                        //     'JOJO INU',
                        //     style: TextStyle
                        //     (
                        //       fontSize: 18,
                        //       color: Colors.white,
                        //       fontWeight: FontWeight.w900
                        //     ),
                        //   ),
                        // ),

                        // //symbol
                        // SizedBox
                        // (
                        //   height: 20,
                        // ),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Text
                        //   (
                        //     'Token Symbol',
                        //     style: TextStyle
                        //     (
                        //       fontSize: 18,
                        //       color: Colors.grey,
                        //       fontWeight: FontWeight.w500
                        //     ),
                        //   ),
                        // ),
                        // SizedBox
                        // (
                        //   height: 5,
                        // ),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Text
                        //   (
                        //     'JOJO',
                        //     style: TextStyle
                        //     (
                        //       fontSize: 18,
                        //       color: Colors.white,
                        //       fontWeight: FontWeight.w900
                        //     ),
                        //   ),
                        // ),

                        // //deci
                        // SizedBox
                        // (
                        //   height: 20,
                        // ),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Text
                        //   (
                        //     'Decimal',
                        //     style: TextStyle
                        //     (
                        //       fontSize: 18,
                        //       color: Colors.grey,
                        //       fontWeight: FontWeight.w500
                        //     ),
                        //   ),
                        // ),
                        // SizedBox
                        // (
                        //   height: 5,
                        // ),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Text
                        //   (
                        //     '9',
                        //     style: TextStyle
                        //     (
                        //       fontSize: 18,
                        //       color: Colors.white,
                        //       fontWeight: FontWeight.w900
                        //     ),
                        //   ),
                        // ),

                        // //su
                        // SizedBox
                        // (
                        //   height: 20,
                        // ),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Text
                        //   (
                        //     'Total Supply',
                        //     style: TextStyle
                        //     (
                        //       fontSize: 18,
                        //       color: Colors.grey,
                        //       fontWeight: FontWeight.w500
                        //     ),
                        //   ),
                        // ),
                        // SizedBox
                        // (
                        //   height: 5,
                        // ),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Text
                        //   (
                        //     '',
                        //     style: TextStyle
                        //     (
                        //       fontSize: 20,
                        //       color: Colors.white,
                        //       fontWeight: FontWeight.w900
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox
              (
                height: 40,
              ),

              //post

              Container
              (
                height: MediaQuery.of(context).size.height*0.30,
                width: double.infinity,
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Appcolor.background
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20),
                  child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: 
                    [
                      Row
                      (
                        children: 
                        [
                          Icon
                          (
                            FontAwesomeIcons.edit,
                            color: Colors.white
                          ),
                          SizedBox
                          (
                            width: 4,
                          ),
                          Text
                          (
                            'Posts',
                            style: TextStyle
                            (
                              color: Colors.white,
                              fontSize: 18
                            ),
                          )
                        ],
                      ),
                      Container
                      (
                        height: MediaQuery.of(context).size.height*0.005,
                        width: double.infinity,
                        color: Appcolor.darkviolte,
                        child: Row
                        (
                          children: 
                          [
                            Container
                            (
                              height: MediaQuery.of(context).size.height*0.005,
                              // width: 100,
                              width: MediaQuery.of(context).size.width*0.20,
                              color: Appcolor.darkviolte4,
                            )
                          ],
                        ),
                      ),
                      Container
                      (
                        height: MediaQuery.of(context).size.height*0.20,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: Center(
                          child: Text
                          (
                            'No Posts Found',
                            style: TextStyle
                            (
                              fontSize: 18,
                              color: Colors.white
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              //tabb
              // Container
              // (
              //   height: MediaQuery.of(context).size.height*0.20,
              //   width: double.infinity,
              //   decoration: BoxDecoration
              //   (
              //     borderRadius: BorderRadius.all(Radius.circular(15)),
              //     color: Appcolor.background
              //   ),
              //   child: Padding
              //   (
              //     padding: const EdgeInsets.only(left:15.0,right: 15),
              //     child: Column(
              //       children: [
              //         Container
              //               (
              //                 height: MediaQuery.of(context).size.height*0.10,
              //                 width: double.infinity,
              //                 child: new TabBar
              //                 (
              //                   controller: _controller,
              //                   tabs: 
              //                   [
              //                     new Tab(
              //                       icon: const Icon(Icons.home),
              //                       text: 'Address',
              //                     ),
              //                   ]
              //                 ),
              //               ),


              //               Container
              //               (
              //                 height: 80,
              //                 child: TabBarView
              //                 (
              //                   controller: _controller,
              //                   children: 
              //                   [
              //                     Text('data')
              //                   ]
              //                 ),
              //               )
              //       ],
              //     ),

                       

              //     // child: Stack
              //     // (
              //     //   fit: StackFit.passthrough,
              //     //   alignment: Alignment.bottomCenter,
              //     //   children: 
              //     //   [
              //     //     Container
              //     //     (
              //     //       decoration: BoxDecoration
              //     //       (
              //     //         border: Border
              //     //         (
              //     //           bottom: BorderSide
              //     //           (
              //     //             color: Colors.white,
              //     //             width: 4
              //     //           )
              //     //         )
              //     //       ),
              //     //     ),
              //     //     Container
              //     //     (
              //     //       height: MediaQuery.of(context).size.height*0.10,
              //     //       width: double.infinity,
              //     //       child: new TabBar
              //     //       (
              //     //         controller: _controller,
              //     //         tabs: 
              //     //         [
              //     //           new Tab(
              //     //             icon: const Icon(Icons.home),
              //     //             text: 'Address',
              //     //           ),
              //     //         ]
              //     //       ),
              //     //     )
              //     //   ],
              //     // ),
              //   ),
              // ),

              SizedBox
              (
                height: 20,
              ),

              //or
              Container
              (
                height: MediaQuery.of(context).size.height*0.10,
                width: double.infinity,
                decoration: BoxDecoration
                (
                  // borderRadius: BorderRadius.all
                  // (
                  //   Radius.circular(15)
                  // ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)
                  ),
                  
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Appcolor.deepOrange,
                        Appcolor.lightOrange
                      ],
                    ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Text
                    (
                      'Quick Links',
                      style: TextStyle
                        (
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                        ),
                    ),
                  ),
                )
              ),
              Container
              (
                height: MediaQuery.of(context).size.height*0.40,
                width: double.infinity,
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)
                  ),
                  color: Appcolor.background
                ),
                child: Column
                (
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: 
                  [
                    // SizedBox
                    // (
                    //   height: 20,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: GestureDetector(
                        onTap: ()
                                      {
                                        log('kyc verification');
  
                                        Navigator.push
                                        (
                                          context, MaterialPageRoute(builder:(context)=>VerifyKYC())
                                        );
                                      },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text
                          (
                            'Verify KYC',
                            style: TextStyle
                            (
                              color: Colors.white,
                              fontSize: 18
                              
                            ),
                          ),
                        ),
                      ),
                    ),

                    Divider
                    (
                      color: Colors.white,
                    ),

                    //2
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text
                        (
                          'Submit For Spotlight',
                          style: TextStyle
                          (
                            color: Colors.white,
                            fontSize: 18
                            
                          ),
                        ),
                      ),
                    ),
                    Divider
                    (
                      color: Colors.white,
                    ),

                    //3
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text
                        (
                          'Create Presale',
                          style: TextStyle
                          (
                            color: Colors.white,
                            fontSize: 18
                            
                          ),
                        ),
                      ),
                    ),
                    Divider
                    (
                      color: Colors.white,
                    ),

                    //4
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text
                        (
                          'Create Lock',
                          style: TextStyle
                          (
                            color: Colors.white,
                            fontSize: 18
                            
                          ),
                        ),
                      ),
                    ),
                    Divider
                    (
                      color: Colors.white,
                    ),

                    //5
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text
                        (
                          'Create Ad',
                          style: TextStyle
                          (
                            color: Colors.white,
                            fontSize: 18
                            
                          ),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              )

              

              //cardexpan
      //       Container(
      //         decoration: BoxDecoration
      //         (
      //           borderRadius: BorderRadius.all(Radius.circular(10)),
      //           color: Colors.green,
      //         ),
      //       child: ExpansionPanelList(
      //       animationDuration: Duration(milliseconds: 2000),
      //       children: [
      //         ExpansionPanel(
      //             headerBuilder: (context, isExpanded) {
      //               return ListTile(
      //                 title: Text('Click To Expand', style: TextStyle(color: Colors.black),),
      //               );
      //             },
      //             body:ListTile(
      //               title: Text('Description text',style: TextStyle(color: Colors.black)),
      //             ),
      //           isExpanded: _expanded,
      //           canTapOnHeader: true,
      //         ),
      //       ],
      //       dividerColor: Colors.grey,
      //       expansionCallback: (panelIndex, isExpanded) {
      //         _expanded = !_expanded;
      //         setState(() {
 
      //         });
      //       },
      //   ),
      //  ),




              // SizedBox
              // (
              //   height: 5,
              // ),
              // Stack(
              //     alignment: Alignment.center,
              //     children: <Widget>[
              //       Column
              //       (
              //         mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              //         Container(
              //             width: double.infinity,
              //             // width: MediaQuery.of(context).size.width * 0.9,
              //             color: Appcolor.darkviolte6,
              //             height: 200,
              //               child: Card
              //               (
              //                 color: Appcolor.background,
              //               ),
              //             ),
              //         Container(
              //           width: double.infinity,
              //             // width: MediaQuery.of(context).size.width * 0.9,
              //             color: Colors.red,
              //             height: 200),
              //       ]),
              //       Container(
              //         width: 100,
              //         height: 100,
              //         decoration: BoxDecoration(
              //             color: Appcolor.darkviolte6,shape: BoxShape.circle),
              //         // child: Center(child: Text("or")
              //         // ),
              //         child: Image(image: AssetImage('assets/images/logo.png')),
              //       ),
              //     ],
              //   )


              // //demostepper
              // Container(
              //   height: 120,
              //   alignment: Alignment.topCenter, 
              //   child: Timeline.tileBuilder(
              //     shrinkWrap: true,
              //     padding: EdgeInsets.zero,
              //     theme: TimelineThemeData(
              //       direction: Axis.horizontal,
              //       connectorTheme: ConnectorThemeData(space: 8.0, thickness: 2.0),
              //     ),
              //     builder: TimelineTileBuilder.connected(
              //       connectionDirection: ConnectionDirection.before,
              //       itemCount: 4,
              //       itemExtentBuilder: (_, __) {
              //         return (MediaQuery.of(context).size.width - 120) / 4.0;
              //       },
              //       oppositeContentsBuilder: (context, index) {
              //         return Container();
              //       },
              //       contentsBuilder: (context, index) {
              //         return Padding(
              //           padding: const EdgeInsets.only(top: 15.0),
              //           child: Text(
              //             // _processes[index]
              //             'hi'
              //           ),
              //         );
              //       },
              //       indicatorBuilder: (_, index) {    

              //         if (index <= 10) {
              //           return DotIndicator(
              //             size: 30.0,
              //             color: Colors.green,                
              //           );
              //         } else {
              //           return OutlinedDotIndicator(
              //             borderWidth: 4.0,
              //             color: Colors.green,
              //           );
              //         }
              //       },
              //       connectorBuilder: (_, index, type) {
              //         if (index > 0) {
              //           return SolidLineConnector(
              //               color: Colors.green,
              //             );
              //         } else {
              //           return null;
              //         }
              //       },
              //     ),
              //   ),
              // )     
            ],
          ),
        )
      ),
    );
  }
}