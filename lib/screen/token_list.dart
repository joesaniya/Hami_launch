import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hami_launch/screen/Trending_tokens.dart';
import 'package:hami_launch/screen/all_tokens.dart';

import '../config.dart';

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

  String dropdownValue = 'ALL Tokens';

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
              "All Tokens",
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
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              DropdownButtonFormField2(
                focusColor: Colors.purple,
                // focusColor: const Color.fromARGB(115, 230, 224, 224),
                decoration: InputDecoration(
                  //Add isDense true and zero Padding.
                  //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(115, 230, 224, 224),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  //Add more decoration as you want here
                  //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                ),
                isExpanded: true,
                hint: Text(
                  dropdownValue,
                  style: const TextStyle(fontSize: 14, color: Colors.deepPurple
                      // color: Color.fromARGB(115, 230, 224, 224),
                      ),
                ),
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: currentTheme.isDark
                      ? Colors.deepPurple
                      : Colors.deepPurple,
                  // color: Color.fromARGB(115, 230, 224, 224),
                ),
                iconSize: 30,
                buttonHeight: 60,
                buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // color: Appcolor.background,
                    color: Colors.grey.shade100),
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.deepPurpleAccent
                                // color: Color.fromARGB(115, 230, 224, 224),
                                ),
                          ),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Please select gender.';
                  }
                  return null;
                },
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                    log(newValue);
                  });
                },
                // onChanged: (value) {
                //   //Do something when changing the item if you want.
                // },
                // onSaved: (value) {
                //   selectedValue = value.toString();
                // },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),

              SizedBox(
                  child: dropdownValue == 'All Tokens'
                      ? const AllTokens()
                      : dropdownValue == 'Trending'
                          ? const TrendingTokens()
                          : const AllTokens()),
              // Container(
              //   height: MediaQuery.of(context).size.height * 0.9,
              //   width: double.infinity,
              //   color: Colors.yellow,
              //   child: ListView.separated(
              //       itemBuilder: (context, index) {
              //         return const AllTokens();
              //       },
              //       separatorBuilder: (context, index) {
              //         return SizedBox(
              //           height: MediaQuery.of(context).size.height * 0.03,
              //         );
              //       },
              //       itemCount: 8),
              //   // child: GridView.extent(
              //   //   primary: false,
              //   //   padding: const EdgeInsets.all(16),
              //   //   crossAxisSpacing: 10,
              //   //   mainAxisSpacing: 10,
              //   //   maxCrossAxisExtent: 200.0,
              //   //   children: const [NotificationWidget()],
              //   // ),
              //   // child: GridView.count(
              //   //     crossAxisCount: 3,
              //   //     crossAxisSpacing: 4.0,
              //   //     mainAxisSpacing: 8.0,
              //   //     children: List.generate(8, (index) {
              //   //       return Flexible(child: const NotificationWidget());
              //   //       // return const Center(child: Text('data'));
              //   //     })),
              // )
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
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
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
          )),
    );
  }

  //   final List<String> items = [
  //   'All Tokens',
  //   'Trending',
  //   'Recently Created',
  // ];

  // String dropdownValue = 'ALL';

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold
  //   (
  //     backgroundColor: Appcolor.darkviolte6,
  //     appBar: MyAppBar(title: 'Tokens List',),
  //     body: SingleChildScrollView
  //     (
  //       child: Padding(
  //         padding: const EdgeInsets.only(left:20.0,right: 20),
  //         child: Column
  //         (
  //           children:
  //           [
  //             Container
  //               (
  //                 height: MediaQuery.of(context).size.height*0.20,
  //                 width: double.infinity,
  //                 decoration: BoxDecoration
  //                 (
  //                   borderRadius: BorderRadius.all(Radius.circular(10)),
  //                   color: Appcolor.background
  //                 ),
  //                 child: Padding(
  //                   padding: const EdgeInsets.only(left:20.0),
  //                   child: Column
  //                   (
  //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children:
  //                     [
  //                       Row
  //                       (
  //                         children:
  //                         [
  //                           Icon
  //                           (
  //                             FontAwesomeIcons.lightbulb,
  //                             color: Appcolor.darkviolte3,
  //                           ),
  //                           SizedBox
  //                           (
  //                             width: 10,
  //                           ),
  //                           Text
  //                           (
  //                             'Tokens List',
  //                             style: TextStyle
  //                             (
  //                               color: Colors.white,
  //                               fontSize: 20,
  //                               fontWeight: FontWeight.w900
  //                             ),
  //                           ),
  //                           SizedBox
  //                           (
  //                             width: 5,
  //                           ),
  //                           Icon
  //                           (
  //                             Icons.help,
  //                             color: Colors.grey,
  //                           )
  //                         ],
  //                       ),
  //                       Text
  //                           (
  //                             'This is Tokens List',
  //                             style: TextStyle
  //                             (
  //                               color: Colors.white,
  //                               fontSize: 18,
  //                               fontWeight: FontWeight.w500
  //                             ),
  //                           ),

  //                           AnimatedButton()

  //                       // Container
  //                       // (
  //                       //   height: 40,
  //                       //   width: 80,
  //                       //   decoration: BoxDecoration
  //                       //   (
  //                       //     borderRadius: BorderRadius.all(Radius.circular(10)),
  //                       //     color: Appcolor.darkviolte
  //                       //   ),
  //                       //   child: Center(
  //                       //     child: Text
  //                       //       (
  //                       //         'Help',
  //                       //         style: TextStyle
  //                       //         (
  //                       //           color: Colors.white,
  //                       //           fontSize: 18,
  //                       //           fontWeight: FontWeight.w500
  //                       //         ),
  //                       //       ),
  //                       //   ),
  //                       // )
  //                     ],
  //                   ),
  //                 ),
  //               ),

  //               SizedBox
  //               (
  //                 height: 20,
  //               ),

  //               Row(
  //                 children: [
  //                   Text
  //                   (
  //                     'All Launchpads',
  //                      style: TextStyle
  //                      (
  //                         color: Colors.white,
  //                         fontSize: 20,
  //                         fontWeight: FontWeight.w900
  //                      ),
  //                   ),
  //                   SizedBox
  //                   (
  //                     width: 30,
  //                   ),
  //             //       Container(
  //             //   width: 160,
  //             //   // color: Colors.amber,
  //             //   child: DropdownButton(
  //             //     isExpanded: true,
  //             //     hint: Text(
  //             //       'Year(s)*',
  //             //       style: TextStyle(
  //             //           fontFamily: 'PT Sans',
  //             //           fontSize: 9,
  //             //           color: Colors.white,
  //             //           fontWeight: FontWeight.w400),
  //             //     ),
  //             //     value: selectedUser,
  //             //     onChanged: (Item? Value) {
  //             //       setState(() {
  //             //         selectedUser = Value!;
  //             //       });
  //             //     },
  //             //     items: users.map((Item user) {
  //             //       return DropdownMenuItem<Item>(
  //             //         value: user,
  //             //         child: Row(
  //             //           children: <Widget>[
  //             //             // user.icon,
  //             //             // SizedBox(width: 10,),
  //             //             Text(
  //             //               user.name,
  //             //               style: TextStyle(color: Colors.black),
  //             //             ),
  //             //           ],
  //             //         ),
  //             //       );
  //             //     }).toList(),
  //             //   ),
  //             // ),
  //                   Expanded(
  //                     child: DropdownButtonFormField(
  //                       style: TextStyle
  //                       (
  //                         color: Colors.white
  //                       ),
  //                               decoration: InputDecoration(
  //                                 enabledBorder: OutlineInputBorder( //<-- SEE HERE
  //                                   borderSide: BorderSide(color: Colors.grey, width: 1),
  //                                 ),
  //                                 focusedBorder: OutlineInputBorder( //<-- SEE HERE
  //                                   borderSide: BorderSide(color: Colors.grey, width: 1),
  //                                 ),
  //                                 filled: false,
  //                                 fillColor: Colors.transparent,
  //                               ),
  //                               icon: Icon(Icons.arrow_drop_down,color: Colors.grey,),
  //                               dropdownColor: Appcolor.background,
  //                               // value: dropdownValue,
  //                               value: items[0],
  //                               onChanged: (String? newValue) {
  //                                 setState(() {
  //                                   dropdownValue = newValue!;
  //                                   log(newValue);
  //                                 });
  //                               },
  //                               // items: <String>['All','Trending','Recent','Upcoming','Featured',]
  //                               // .map<DropdownMenuItem<String>>((String value) {
  //                               //   return DropdownMenuItem<String>(
  //                               //     value: value,
  //                               //     child: Text(
  //                               //       value,
  //                               //       style: TextStyle
  //                               //       (
  //                               //         fontSize: 15,
  //                               //         color: Colors.white
  //                               //       ),
  //                               //     ),
  //                               //   );
  //                               // }).toList(),
  //                                 items: items
  //                     .map((item) =>
  //                     DropdownMenuItem<String>(
  //                       value: item,
  //                       child: Text(
  //                         item,
  //                         style: const TextStyle(
  //                           fontSize: 14,
  //                           color: Colors.white
  //                           // color: Color.fromARGB(115, 230, 224, 224),
  //                         ),
  //                       ),
  //                     ))
  //                     .toList(),
  //                             ),
  //                   ),
  //                 ],
  //               ),

  //               SizedBox
  //               (
  //                 height: 20,
  //               ),
  //               Align(
  //                 alignment: Alignment.centerLeft,
  //                 child: Text
  //                 (
  //                   '$dropdownValue List',
  //                   style: TextStyle
  //                      (
  //                         color: Colors.white,
  //                         fontSize: 18,
  //                         fontWeight: FontWeight.w600
  //                      ),
  //                 ),
  //               ),

  //               // SizedBox
  //               // (
  //               //   height: 20,
  //               // ),

  //               // dropdownValue==''?

  //               SizedBox
  //               (
  //                 height: 20,
  //               ),

  //               SizedBox
  //               (
  //                 height: MediaQuery.of(context).size.height*0.90,
  //                 child: dropdownValue=='All Tokens'?
  //                 SideToken()
  //                 // Container(height: 300,width: double.infinity,color: Colors.red,)
  //                 :dropdownValue=='Trending'?
  //                 SideToken()
  //                 // Container(height: 300,width: double.infinity,color: Colors.blue,)
  //                 :
  //                 SideToken()
  //                 // Container
  //                 // (
  //                 //   height: 300,
  //                 //   width: double.infinity,
  //                 //   color: Colors.pink,
  //                 // )
  //               )

  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
