import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/theme/appcolor.dart';

import '../screen/Presale_screen.dart';
import '../screen/create_ad.dart';
import '../screen/lock.dart';
import '../screen/spotlight_screen.dart';
import '../screen/verifykyc_screen.dart';


class DetailToken extends StatefulWidget {
  const DetailToken({Key? key}) : super(key: key);

  @override
  State<DetailToken> createState() => _DetailTokenState();
}

class _DetailTokenState extends State<DetailToken> {
  late ScrollController _scrollController;
   var isVisible = false;

   @override
  void initState() {
    super.initState();
    _scrollController = ScrollController(initialScrollOffset: 0.0);
    _scrollController.addListener(() {
      changeAppBarColor(_scrollController);
    });
  }

    Color appBarColor = Colors.transparent;

  changeAppBarColor(ScrollController scrollController) {
    if (scrollController.position.hasPixels) {
      if (scrollController.position.pixels > 2.0) {
        setState(() {
          appBarColor = Appcolor.darkviolte6;
        });
      }
      if (scrollController.position.pixels <= 2.0) {
        setState(() {
          appBarColor = Colors.transparent;
        });
      }
    } else {
      setState(() {
        appBarColor = Colors.transparent;
      });
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AnimatedContainer(
          color: Colors.transparent,
          duration: Duration(milliseconds: 200),
          child: AppBar(
            backgroundColor: Appcolor.darkviolte6,
            brightness: Brightness.dark,
            elevation: 0,
            centerTitle: true,
            title: Text('Recipe Details', 
            style: TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w400, fontSize: 16)),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            // actions: [
            //   IconButton(onPressed: () {}, 
            //   icon: SvgPicture.asset('assets/icons/bookmark.svg', color: Colors.white)),
            // ],
          ),
        ),
      ),

      body: ListView
      (
        controller: _scrollController,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        children: 
        [
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(image: DecorationImage
              (
                image: AssetImage('assets/images/logo.png'), 
                fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration
                (
                  gradient: Appcolor.linearBlackTop
                ),
                height: 280,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),

          //
          Container(
                // width: double.infinity,
                // height: MediaQuery.of(context).size.height*0.24,//->a10
                // height: MediaQuery.of(context).size.height*0.30,
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
                                    'widget.name!,',
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
                height: MediaQuery.of(context).size.height*0.40,
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
                // height: MediaQuery.of(context).size.height*0.64,
                height: MediaQuery.of(context).size.height*0.54,
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
                height: MediaQuery.of(context).size.height*0.07,
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
                // height: MediaQuery.of(context).size.height*0.40,
                height: MediaQuery.of(context).size.height*0.35,
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
                      child: GestureDetector(
                        onTap: ()
                          {
                            log('Spotlight Clicked');
        
                            Navigator.push
                              (
                                context, MaterialPageRoute(builder:(context)=>SpotLightScreen())
                              );
                          },
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
                    ),
                    Divider
                    (
                      color: Colors.white,
                    ),
        
                    //3
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: GestureDetector(
                        onTap: ()
                          {
                            log('Launchpad Clicked');
        
                            Navigator.push
                              (
                                context, MaterialPageRoute(builder:(context)=>Launchpad())
                              );
                          },
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
                    ),
                    Divider
                    (
                      color: Colors.white,
                    ),
        
                    //4
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: GestureDetector(
                        onTap: ()
                        {
                          log('Lockscreen Clicked');
        
                            Navigator.push
                              (
                                context, MaterialPageRoute(builder:(context)=>CreateLock())
                              );
                        },
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
                    ),
                    Divider
                    (
                      color: Colors.white,
                    ),
        
                    //5
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: GestureDetector(
                        onTap: ()
                        {
                          log('Ad Clicked');
        
                          Navigator.push
                            (
                              context, MaterialPageRoute(builder:(context)=>CreateAd())
                            );
                        },
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
                    ),
                    
                  ],
                ),
              ),
              SizedBox
                    (
                      height: 20,
                    ),
        ],
      ),
    );
  }
}