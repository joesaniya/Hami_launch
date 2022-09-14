import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/models/alertnetwork.dart';

import '../Dialogbox/dialog_helper.dart';
import '../theme/appcolor.dart';
import '../widgets/animated_button.dart';
import '../widgets/appbar_widget.dart';

class WebDevelopers extends StatelessWidget {
 WebDevelopers({Key? key}) : super(key: key);

  List<String> imageUrls = [
    'assets/images/terra.png',
  ];

  Widget _createGridTileWidget(String url) => Builder(
        builder: (context) => GestureDetector(
          onLongPress: () {
            log('_creategrid clicked');
          },
          // onLongPressEnd: (details) => _popupDialog.remove(),
          child: Container
          (
            height: 50,
            width: 150,
            decoration: BoxDecoration
            (
              color: Appcolor.background,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Image.asset(url, fit: BoxFit.cover),
                CircleAvatar
                (
                  backgroundImage: AssetImage(url),
                ),
                // Image.network(url, fit: BoxFit.cover),
                // SizedBox(height: 20,),
                Text
                (
                  'Crypto Hive',
                  style: TextStyle
                  (
                    color: Colors.white
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: Icon(FontAwesomeIcons.globe, color: Colors.white,),
                        alignment: Alignment.center,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Icon(FontAwesomeIcons.telegram, color: Colors.white,),
                        alignment: Alignment.center,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Icon(FontAwesomeIcons.mailchimp, color: Colors.white,),
                        alignment: Alignment.center,
                      ),
                    ),
                    // CircleAvatar
                    // (
                    //   backgroundImage: AssetImage('assets/images/terra.png'),
                    // )
                  ],
                )
              ],
            )
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
    
      appBar: MyAppBar(title: 'Web3Developers',),
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
                  height: MediaQuery.of(context).size.height*0.20,
                  width: double.infinity,
                  decoration: BoxDecoration
                  (
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Appcolor.background
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: 
                      [
                        Row
                        (
                          children: 
                          [
                            Icon
                            (
                              FontAwesomeIcons.lightbulb,
                              color: Appcolor.darkviolte3,
                            ),
                            SizedBox
                            (
                              width: 10,
                            ),
                            Text
                            (
                              'Web3developers',
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
                        
                            AnimatedButton()
                      ],
                    ),
                  ),
                ),

              SizedBox
              (
                height: 20,
              ),
              
              //gridview
              // GridView.count
              // (
              //   shrinkWrap: true,
              //   crossAxisCount: 3,
              //   childAspectRatio: 1.0,
              //   crossAxisSpacing: 20,
              //   mainAxisSpacing: 10,
              //   children: imageUrls.map(_createGridTileWidget).toList(),
              // ),

              // gridviewbuilder
              GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemCount: WebDevelopers1.length,
              itemBuilder: (context, index) {
                // return Container(
                //   color: Colors.blue,
                //   child: Text("index: $index"),
                // );
                return Container
                (
                  // height: 50,
                  // width: double.infinity,
                  decoration: BoxDecoration
                  (
                    color: Appcolor.background,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: 
                    [
                      SizedBox
                      (
                        height: 10,
                      ),
                      CircleAvatar
                      (
                        backgroundImage: AssetImage(WebDevelopers1[index].image)
                      ),

                      Text
                      (
                        WebDevelopers1[index].title,
                        style: TextStyle
                        (
                          color: Colors.white
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox
                          (
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 46,
                              width: 46,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                              child: Icon(FontAwesomeIcons.globe, color: Colors.white,size: 15,),
                              alignment: Alignment.center,
                            ),
                          ),
                          SizedBox
                          (
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 46,
                              width: 46,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                              child: Icon(FontAwesomeIcons.telegram, color: Colors.white,),
                              alignment: Alignment.center,
                            ),
                          ),
                          SizedBox
                          (
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 46,
                              width: 46,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                              child: Icon(Icons.mail_outlined, color: Colors.white,size: 15,),
                              alignment: Alignment.center,
                            ),
                          ),
                          SizedBox
                          (
                            width: 10,
                          ),
                        ],
                      ),
                      SizedBox
                      (
                        height: 10,
                      ),
                    ],
                  ),
                );
              },
            )
            ],
          ),
        ),
      ),
    );

  }
}