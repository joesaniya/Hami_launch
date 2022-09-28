import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../config.dart';
import 'notification_widget.dart';

class LaunchPadList extends StatefulWidget {
  const LaunchPadList({Key? key}) : super(key: key);

  @override
  State<LaunchPadList> createState() => _LaunchPadListState();
}

class _LaunchPadListState extends State<LaunchPadList> {
  final List<String> items = [
    'All',
    'Trending',
    'Recent',
    'Upcoming',
    'Featured',
  ];

  String? selectedValue;
  String dropdownValue = 'ALL';
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
              "All Launchpads",
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
          child: Padding(
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
                    style:
                        const TextStyle(fontSize: 14, color: Colors.deepPurple
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
                // const NotificationWidget(),
                SizedBox(
                  // height: 400,
                  // width: double.infinity,
                  child: dropdownValue == 'All'
                      ? const NotificationWidget()
                      : dropdownValue == 'Trending'
                          ? const NotificationWidget()
                          : dropdownValue == 'Recent'
                              ? const NotificationWidget()
                              : dropdownValue == 'Upcoming'
                                  ? Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          LineIcons.rocket,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          'No LaunchPads Found',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w900),
                                        )
                                      ],
                                    )
                                  // Container(
                                  //     height: 400,
                                  //     width: double.infinity,
                                  //     color: Colors.blue,
                                  //   )
                                  : const NotificationWidget(),
                ),

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
            ),
          )),
    );
  }
  // final List<String> items = [
  //   'All',
  //   'Trending',
  //   'Recent',
  //   'Upcoming',
  //   'Featured',
  // ];

  // String? selectedValue;

  // String dropdownValue = 'ALL';

  // late bool _isLoading;

  // @override
  // void initState() {
  //   _isLoading = true;
  //   Future.delayed(const Duration(seconds: 2), () async {
  //     setState(() {
  //       _isLoading = false;
  //     });
  //   });
  //   super.initState();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Appcolor.darkviolte6,
  //     appBar: MyAppBar(
  //       title: 'LaunchPad List',
  //     ),
  //     body: SingleChildScrollView(
  //       child: Padding(
  //         padding: const EdgeInsets.only(left: 20.0, right: 20),
  //         child: Column(
  //           children: [
  //             Container(
  //               height: MediaQuery.of(context).size.height * 0.20,
  //               width: double.infinity,
  //               decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.all(Radius.circular(10)),
  //                   color: Appcolor.background),
  //               child: Padding(
  //                 padding: const EdgeInsets.only(left: 20.0),
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Row(
  //                       children: [
  //                         Icon(
  //                           FontAwesome.rocket,
  //                           color: Appcolor.darkviolte4,
  //                         ),
  //                         SizedBox(
  //                           width: 10,
  //                         ),
  //                         Text(
  //                           'Launchpad List',
  //                           style: TextStyle(
  //                               color: Colors.white,
  //                               fontSize: 20,
  //                               fontWeight: FontWeight.w900),
  //                         ),
  //                         SizedBox(
  //                           width: 5,
  //                         ),
  //                         Icon(
  //                           Icons.help,
  //                           color: Colors.grey,
  //                         )
  //                       ],
  //                     ),
  //                     Text(
  //                       'This is Launchpad List',
  //                       style: TextStyle(
  //                           color: Colors.white,
  //                           fontSize: 18,
  //                           fontWeight: FontWeight.w500),
  //                     ),

  //                     AnimatedButton()

  //                     // Container
  //                     // (
  //                     //   height: 40,
  //                     //   width: 80,
  //                     //   decoration: BoxDecoration
  //                     //   (
  //                     //     borderRadius: BorderRadius.all(Radius.circular(10)),
  //                     //     color: Appcolor.darkviolte
  //                     //   ),
  //                     //   child: Center(
  //                     //     child: Text
  //                     //       (
  //                     //         'Help',
  //                     //         style: TextStyle
  //                     //         (
  //                     //           color: Colors.white,
  //                     //           fontSize: 18,
  //                     //           fontWeight: FontWeight.w500
  //                     //         ),
  //                     //       ),
  //                     //   ),
  //                     // )
  //                   ],
  //                 ),
  //               ),
  //             ),
  //             SizedBox(
  //               height: 20,
  //             ),
  //             Row(
  //               children: [
  //                 Text(
  //                   'All Launchpads',
  //                   style: TextStyle(
  //                       color: Colors.white,
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.w900),
  //                 ),
  //                 SizedBox(
  //                   width: 30,
  //                 ),
  //                 //       Container(
  //                 //   width: 160,
  //                 //   // color: Colors.amber,
  //                 //   child: DropdownButton(
  //                 //     isExpanded: true,
  //                 //     hint: Text(
  //                 //       'Year(s)*',
  //                 //       style: TextStyle(
  //                 //           fontFamily: 'PT Sans',
  //                 //           fontSize: 9,
  //                 //           color: Colors.white,
  //                 //           fontWeight: FontWeight.w400),
  //                 //     ),
  //                 //     value: selectedUser,
  //                 //     onChanged: (Item? Value) {
  //                 //       setState(() {
  //                 //         selectedUser = Value!;
  //                 //       });
  //                 //     },
  //                 //     items: users.map((Item user) {
  //                 //       return DropdownMenuItem<Item>(
  //                 //         value: user,
  //                 //         child: Row(
  //                 //           children: <Widget>[
  //                 //             // user.icon,
  //                 //             // SizedBox(width: 10,),
  //                 //             Text(
  //                 //               user.name,
  //                 //               style: TextStyle(color: Colors.black),
  //                 //             ),
  //                 //           ],
  //                 //         ),
  //                 //       );
  //                 //     }).toList(),
  //                 //   ),
  //                 // ),
  //                 Expanded(
  //                   child: DropdownButtonFormField(
  //                     style: TextStyle(color: Colors.white),
  //                     decoration: InputDecoration(
  //                       enabledBorder: OutlineInputBorder(
  //                         //<-- SEE HERE
  //                         borderSide: BorderSide(color: Colors.grey, width: 1),
  //                       ),
  //                       focusedBorder: OutlineInputBorder(
  //                         //<-- SEE HERE
  //                         borderSide: BorderSide(color: Colors.grey, width: 1),
  //                       ),
  //                       filled: false,
  //                       fillColor: Colors.transparent,
  //                     ),
  //                     icon: Icon(
  //                       Icons.arrow_drop_down,
  //                       color: Colors.grey,
  //                     ),
  //                     dropdownColor: Appcolor.background,
  //                     // value: dropdownValue,
  //                     value: items[0],
  //                     onChanged: (String? newValue) {
  //                       setState(() {
  //                         dropdownValue = newValue!;
  //                         log(newValue);
  //                       });
  //                     },
  //                     // items: <String>['All','Trending','Recent','Upcoming','Featured',]
  //                     // .map<DropdownMenuItem<String>>((String value) {
  //                     //   return DropdownMenuItem<String>(
  //                     //     value: value,
  //                     //     child: Text(
  //                     //       value,
  //                     //       style: TextStyle
  //                     //       (
  //                     //         fontSize: 15,
  //                     //         color: Colors.white
  //                     //       ),
  //                     //     ),
  //                     //   );
  //                     // }).toList(),
  //                     items: items
  //                         .map((item) => DropdownMenuItem<String>(
  //                               value: item,
  //                               child: Text(
  //                                 item,
  //                                 style: const TextStyle(
  //                                     fontSize: 14, color: Colors.white
  //                                     // color: Color.fromARGB(115, 230, 224, 224),
  //                                     ),
  //                               ),
  //                             ))
  //                         .toList(),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             SizedBox(
  //               height: 20,
  //             ),
  //             Align(
  //               alignment: Alignment.centerLeft,
  //               child: Text(
  //                 '$dropdownValue List',
  //                 style: TextStyle(
  //                     color: Colors.white,
  //                     fontSize: 18,
  //                     fontWeight: FontWeight.w600),
  //               ),
  //             ),
  //             SizedBox(
  //               height: 20,
  //             ),
  //             SizedBox(
  //                 height: MediaQuery.of(context).size.height * 0.90,
  //                 child: dropdownValue == 'All'
  //                     ? AllLaunch()
  //                     // Container(height: 300,width: double.infinity,color: Colors.red,)
  //                     : dropdownValue == 'Trending'
  //                         ? AllLaunch()
  //                         // Container(height: 300,width: double.infinity,color: Colors.blue,)
  //                         : dropdownValue == 'Recent'
  //                             ? AllLaunch()
  //                             // Container(height: 300,width: double.infinity,color: Colors.green,)
  //                             : dropdownValue == 'Upcoming'
  //                                 ? AllLaunch()
  //                                 // Container(height: 300,width: double.infinity,color: Colors.yellow,)
  //                                 : AllLaunch()
  //                 // Container
  //                 // (
  //                 //   height: 300,
  //                 //   width: double.infinity,
  //                 //   color: Colors.pink,
  //                 // )

  //                 )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}

class Item {
  const Item(this.name);
  final String name;
}
