import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/job.dart';
import '../side_launchpadlistScreens/side_Token.dart';
import '../theme/appcolor.dart';
import '../widgets/animated_button.dart';
import '../widgets/appbar_widget.dart';

class TokenSList extends StatefulWidget {
  const TokenSList({Key? key}) : super(key: key);

  @override
  State<TokenSList> createState() => _TokenSListState();
}

class _TokenSListState extends State<TokenSList> {
    final List<String> items = [
    'All Tokens',
    'Trending',
    'Recently Created',
  ];



  String dropdownValue = 'ALL';

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
      appBar: MyAppBar(title: 'Tokens List',),
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
                              'Tokens List',
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
                        Text
                            (
                              'This is Tokens List',
                              style: TextStyle
                              (
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                              ),
                            ),

                            AnimatedButton()

                        // Container
                        // (
                        //   height: 40,
                        //   width: 80,
                        //   decoration: BoxDecoration
                        //   (
                        //     borderRadius: BorderRadius.all(Radius.circular(10)),
                        //     color: Appcolor.darkviolte
                        //   ),
                        //   child: Center(
                        //     child: Text
                        //       (
                        //         'Help',
                        //         style: TextStyle
                        //         (
                        //           color: Colors.white,
                        //           fontSize: 18,
                        //           fontWeight: FontWeight.w500
                        //         ),
                        //       ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),

                SizedBox
                (
                  height: 20,
                ),

                Row(
                  children: [
                    Text
                    (
                      'All Launchpads',
                       style: TextStyle
                       (
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900
                       ),
                    ),
                    SizedBox
                    (
                      width: 30,
                    ),
              //       Container(
              //   width: 160,
              //   // color: Colors.amber,
              //   child: DropdownButton(
              //     isExpanded: true,
              //     hint: Text(
              //       'Year(s)*',
              //       style: TextStyle(
              //           fontFamily: 'PT Sans',
              //           fontSize: 9,
              //           color: Colors.white,
              //           fontWeight: FontWeight.w400),
              //     ),
              //     value: selectedUser,
              //     onChanged: (Item? Value) {
              //       setState(() {
              //         selectedUser = Value!;
              //       });
              //     },
              //     items: users.map((Item user) {
              //       return DropdownMenuItem<Item>(
              //         value: user,
              //         child: Row(
              //           children: <Widget>[
              //             // user.icon,
              //             // SizedBox(width: 10,),
              //             Text(
              //               user.name,
              //               style: TextStyle(color: Colors.black),
              //             ),
              //           ],
              //         ),
              //       );
              //     }).toList(),
              //   ),
              // ),
                    Expanded(
                      child: DropdownButtonFormField(
                        style: TextStyle
                        (
                          color: Colors.white
                        ),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder( //<-- SEE HERE
                                    borderSide: BorderSide(color: Colors.grey, width: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder( //<-- SEE HERE
                                    borderSide: BorderSide(color: Colors.grey, width: 1),
                                  ),
                                  filled: false,
                                  fillColor: Colors.transparent,
                                ),
                                icon: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                                dropdownColor: Appcolor.background,
                                // value: dropdownValue,
                                value: items[0],
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                    log(newValue);
                                  });
                                },
                                // items: <String>['All','Trending','Recent','Upcoming','Featured',]
                                // .map<DropdownMenuItem<String>>((String value) {
                                //   return DropdownMenuItem<String>(
                                //     value: value,
                                //     child: Text(
                                //       value,
                                //       style: TextStyle
                                //       (
                                //         fontSize: 15,
                                //         color: Colors.white
                                //       ),
                                //     ),
                                //   );
                                // }).toList(),
                                  items: items
                      .map((item) =>
                      DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white
                            // color: Color.fromARGB(115, 230, 224, 224),
                          ),
                        ),
                      ))
                      .toList(),
                              ),
                    ),
                  ],
                ),

                SizedBox
                (
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text
                  (
                    '$dropdownValue List',
                    style: TextStyle
                       (
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                       ),
                  ),
                ),

                // SizedBox
                // (
                //   height: 20,
                // ),

                // dropdownValue==''?

                SizedBox
                (
                  height: 20,
                ),

                SizedBox
                (
                  height: MediaQuery.of(context).size.height*0.90,
                  child: dropdownValue=='All Tokens'?
                  SideToken()
                  // Container(height: 300,width: double.infinity,color: Colors.red,)
                  :dropdownValue=='Trending'?
                  SideToken()
                  // Container(height: 300,width: double.infinity,color: Colors.blue,)
                  :
                  SideToken()
                  // Container
                  // (
                  //   height: 300,
                  //   width: double.infinity,
                  //   color: Colors.pink,
                  // )
                )
                
            ],
          ),
        ),
      ),
    );
  }
}