import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hami_launch/screen/notification_widget.dart';

import '../config.dart';

class LaunchPads extends StatefulWidget {
  const LaunchPads({Key? key}) : super(key: key);

  @override
  State<LaunchPads> createState() => _LaunchPadsState();
}

class _LaunchPadsState extends State<LaunchPads> {
  // DateTime startTime = DateTime(2020, 03, 04);
  // Duration remaining = DateTime.now().difference(DateTime.now());
  // late Timer t;
  // int days = 0, hrs = 0, mins = 0;

  // @override
  // void initState() {
  //   super.initState();
  //   startTimer();
  // }

  // startTimer() async {
  //   t = Timer.periodic(const Duration(seconds: 1), (timer) {
  //     setState(() {
  //       remaining = DateTime.now().difference(startTime);
  //       mins = remaining.inMinutes;
  //       hrs = mins >= 60 ? mins ~/ 60 : 0;
  //       days = hrs >= 24 ? hrs ~/ 24 : 0;
  //       hrs = hrs % 24;
  //       mins = mins % 60;
  //     });
  //   });
  // }

  // String time = "";
  // @override
  // void initState() {
  //   Timer mytimer = Timer.periodic(const Duration(seconds: 1), (timer) {
  //     DateTime timenow = DateTime.now(); //get current date and time
  //     time =
  //         "${timenow.day}:${timenow.hour}:${timenow.minute}:${timenow.second}";
  //     setState(() {});
  //     //mytimer.cancel() //to terminate this timer
  //   });
  //   super.initState();
  // }
  //  @override
  // void dispose() {
  //   // Cancels the timer when the page is disposed.
  //   time.ca;

  //   super.dispose();
  // }

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
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
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
              hint: const Text(
                'All',
                style: TextStyle(fontSize: 14, color: Colors.deepPurple
                    // color: Color.fromARGB(115, 230, 224, 224),
                    ),
              ),
              icon: Icon(
                Icons.arrow_drop_down,
                color:
                    currentTheme.isDark ? Colors.deepPurple : Colors.deepPurple,
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
            Expanded(
                child: dropdownValue == 'All'
                    ? const NotificationWidget()
                    : dropdownValue == 'Trending'
                        ? const NotificationWidget()
                        : dropdownValue == 'Recent'
                            ? const NotificationWidget()
                            : dropdownValue == 'Upcoming'
                                ? Container(
                                    height: 400,
                                    width: double.infinity,
                                    color: Colors.blue,
                                  )
                                : Container(
                                    height: 400,
                                    width: double.infinity,
                                    color: Colors.black,
                                  )),
            // Container(
            //   height: 500,
            //   width: double.infinity,
            //   decoration:
            //       BoxDecoration(borderRadius: BorderRadius.circular(20)),
            //   child: Stack(
            //     alignment: Alignment.center,
            //     children: <Widget>[
            //       // background image and bottom contents
            //       Column(
            //         children: <Widget>[
            //           Container(
            //             height: 120.0,
            //             width: double.infinity,
            //             decoration: const BoxDecoration(
            //                 color: Colors.amber,
            //                 borderRadius: BorderRadius.only(
            //                   topRight: Radius.circular(
            //                     10,
            //                   ),
            //                   topLeft: Radius.circular(
            //                     10,
            //                   ),
            //                 )),
            //             child: const ClipRRect(
            //               borderRadius: BorderRadius.only(
            //                 topRight: Radius.circular(
            //                   10,
            //                 ),
            //                 topLeft: Radius.circular(
            //                   10,
            //                 ),
            //               ),
            //               child: Image(
            //                 image: AssetImage('assets/images/launch_bg.jpg'),
            //                 fit: BoxFit.cover,
            //               ),
            //             ),
            //             // child: const Center(
            //             //   child: Text('Background image goes here'),
            //             // ),
            //           ),
            //           Expanded(
            //             child: Container(
            //               decoration: const BoxDecoration(
            //                   color: Colors.white,
            //                   borderRadius: BorderRadius.only(
            //                     bottomRight: Radius.circular(
            //                       10,
            //                     ),
            //                     bottomLeft: Radius.circular(
            //                       10,
            //                     ),
            //                   )),
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                 children: [
            //                   const SizedBox(
            //                     height: 60,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     crossAxisAlignment: CrossAxisAlignment.center,
            //                     children: [
            //                       const Text(
            //                         'HAMI',
            //                         style: TextStyle(
            //                             // color: currentTheme.isDark
            //                             //     ? Colors.black
            //                             //     : Colors.black,
            //                             color: Colors.black,
            //                             fontSize: 20),
            //                       ),
            //                       const SizedBox(
            //                         width: 10,
            //                       ),
            //                       const Text(
            //                         'HAMI',
            //                         style: TextStyle(
            //                             // color: currentTheme.isDark
            //                             //     ? Colors.black
            //                             //     : Colors.black,
            //                             color: Colors.grey,
            //                             fontWeight: FontWeight.w500,
            //                             fontSize: 20),
            //                       ),
            //                       const SizedBox(
            //                         width: 10,
            //                       ),
            //                       Container(
            //                         height: 20,
            //                         width: 20,
            //                         decoration: BoxDecoration(
            //                             shape: BoxShape.circle,
            //                             color: Appcolor.darkviolte2),
            //                         child: const Icon(
            //                           Icons.done,
            //                           color: Colors.white,
            //                           size: 15,
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                   Padding(
            //                     padding: const EdgeInsets.only(
            //                         left: 30.0, right: 30),
            //                     child: Row(
            //                       children: [
            //                         Expanded(
            //                           child: Container(
            //                             height: 20,
            //                             width: double.infinity,
            //                             decoration: BoxDecoration(
            //                                 borderRadius:
            //                                     BorderRadius.circular(4),
            //                                 color: Colors.deepPurple),
            //                             child: const Center(
            //                               child: Text(
            //                                 'Seeding',
            //                                 style: TextStyle(
            //                                     color: Colors.white,
            //                                     fontSize: 15),
            //                               ),
            //                             ),
            //                           ),
            //                         ),
            //                         const SizedBox(
            //                           width: 10,
            //                         ),
            //                         Expanded(
            //                           child: Container(
            //                             height: 20,
            //                             width: double.infinity,
            //                             decoration: BoxDecoration(
            //                                 borderRadius:
            //                                     BorderRadius.circular(4),
            //                                 color: Colors.orangeAccent),
            //                             child: const Center(
            //                               child: Text(
            //                                 'Spotlight',
            //                                 style: TextStyle(
            //                                     color: Colors.white,
            //                                     fontSize: 15),
            //                               ),
            //                             ),
            //                           ),
            //                         ),
            //                         const SizedBox(
            //                           width: 10,
            //                         ),
            //                         Expanded(
            //                           child: Container(
            //                             height: 20,
            //                             width: double.infinity,
            //                             decoration: BoxDecoration(
            //                                 borderRadius:
            //                                     BorderRadius.circular(4),
            //                                 color: Colors.blueAccent),
            //                             child: const Center(
            //                               child: Text(
            //                                 'KYC',
            //                                 style: TextStyle(
            //                                     color: Colors.white,
            //                                     fontSize: 15),
            //                               ),
            //                             ),
            //                           ),
            //                         ),
            //                         const SizedBox(
            //                           width: 10,
            //                         ),
            //                         Expanded(
            //                           child: Container(
            //                             height: 20,
            //                             width: double.infinity,
            //                             decoration: BoxDecoration(
            //                                 borderRadius:
            //                                     BorderRadius.circular(4),
            //                                 color: Colors.redAccent),
            //                             child: const Center(
            //                               child: Text(
            //                                 '# Trending',
            //                                 style: TextStyle(
            //                                     color: Colors.white,
            //                                     fontSize: 15),
            //                               ),
            //                             ),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),

            //                   //hardcap
            //                   Padding(
            //                     padding: const EdgeInsets.only(
            //                         left: 20.0, right: 20),
            //                     child: Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                       children: const [
            //                         Text(
            //                           'Hard Cap',
            //                           style: TextStyle(
            //                               color: Colors.grey, fontSize: 20),
            //                         ),
            //                         Text(
            //                           '2440BNB',
            //                           style: TextStyle(
            //                               color: Colors.grey, fontSize: 20),
            //                         )
            //                       ],
            //                     ),
            //                   ),

            //                   //soft cap
            //                   Padding(
            //                     padding: const EdgeInsets.only(
            //                         left: 20.0, right: 20),
            //                     child: Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                       children: const [
            //                         Text(
            //                           'Soft Cap',
            //                           style: TextStyle(
            //                               color: Colors.grey, fontSize: 20),
            //                         ),
            //                         Text(
            //                           '1220BNB',
            //                           style: TextStyle(
            //                               color: Colors.grey, fontSize: 20),
            //                         )
            //                       ],
            //                     ),
            //                   ),

            //                   //seeding
            //                   Padding(
            //                     padding: const EdgeInsets.only(
            //                         left: 20.0, right: 20),
            //                     child: Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                       children: const [
            //                         Text(
            //                           'Seeding rate',
            //                           style: TextStyle(
            //                               color: Colors.grey, fontSize: 20),
            //                         ),
            //                         Text(
            //                           '10000 HAMI/BNB',
            //                           style: TextStyle(
            //                               color: Colors.grey, fontSize: 20),
            //                         )
            //                       ],
            //                     ),
            //                   ),

            //                   //progreess
            //                   Padding(
            //                     padding: const EdgeInsets.only(
            //                         left: 20.0, right: 20),
            //                     child: Column(
            //                       mainAxisAlignment: MainAxisAlignment.start,
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         const Align(
            //                           alignment: Alignment.centerLeft,
            //                           child: Text(
            //                             'Progress',
            //                             style: TextStyle(
            //                                 color: Colors.black, fontSize: 20),
            //                           ),
            //                         ),
            //                         Container(
            //                           margin: const EdgeInsets.symmetric(
            //                               vertical: 20),
            //                           // width: 300,
            //                           width: double.infinity,
            //                           height: 20,
            //                           // child: LinearPercentIndicator(
            //                           //   // width: MediaQuery.of(context)
            //                           //   //         .size
            //                           //   //         .width -
            //                           //   //     50,
            //                           //   width: 300,
            //                           //   animation: true,
            //                           //   lineHeight: 20.0,
            //                           //   animationDuration: 2000,
            //                           //   percent: 0.9,
            //                           //   linearStrokeCap:
            //                           //       LinearStrokeCap.roundAll,
            //                           //   progressColor: Colors.greenAccent,
            //                           // )
            //                           child: ClipRRect(
            //                             borderRadius: const BorderRadius.all(
            //                                 Radius.circular(10)),
            //                             child: LinearProgressIndicator(
            //                                 value: 0.7,
            //                                 valueColor:
            //                                     AlwaysStoppedAnimation<Color>(
            //                                         // Color(0xff00ff00)
            //                                         Appcolor.darkgreen),
            //                                 backgroundColor: Colors.grey
            //                                 // const Color(0xffD6D6D6),
            //                                 ),
            //                           ),
            //                         ),
            //                         //
            //                         Row(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.spaceBetween,
            //                           children: [
            //                             Expanded(
            //                               child: Container(
            //                                 child: Row(
            //                                   children: const [
            //                                     Text(
            //                                       'Soft Cap: ',
            //                                       style: TextStyle(
            //                                           color: Colors.grey,
            //                                           fontSize: 20),
            //                                     ),
            //                                     Text(
            //                                       '1220 BNB',
            //                                       style: TextStyle(
            //                                           color: Colors.grey,
            //                                           fontSize: 20),
            //                                     ),
            //                                   ],
            //                                 ),
            //                               ),
            //                             ),
            //                             Container(
            //                               child: Row(
            //                                 children: const [
            //                                   Text(
            //                                     'Hard Cap: ',
            //                                     style: TextStyle(
            //                                         color: Colors.grey,
            //                                         fontSize: 20),
            //                                   ),
            //                                   Text(
            //                                     '1220 BNB',
            //                                     style: TextStyle(
            //                                         color: Colors.grey,
            //                                         fontSize: 20),
            //                                   ),
            //                                 ],
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //                       ],
            //                     ),
            //                   ),

            //                   //timer
            //                   Padding(
            //                     padding: const EdgeInsets.only(
            //                         left: 20.0, right: 20),
            //                     child: Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Column(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.start,
            //                           crossAxisAlignment:
            //                               CrossAxisAlignment.start,
            //                           children: const [
            //                             Text(
            //                               'Ends In',
            //                               style: TextStyle(
            //                                   color: Colors.grey, fontSize: 20),
            //                             ),

            //                             Text(
            //                               '00:07:40:32',
            //                               // time,
            //                               style: TextStyle(
            //                                   color: Colors.redAccent,
            //                                   fontSize: 20),
            //                             ),
            //                             // Row(
            //                             //   children: [
            //                             //     Text(
            //                             //       '$days',
            //                             //       style: const TextStyle(
            //                             //           color: Colors.redAccent,
            //                             //           fontSize: 20),
            //                             //     ),
            //                             //     Text(
            //                             //       '$hrs',
            //                             //       style: const TextStyle(
            //                             //           color: Colors.redAccent,
            //                             //           fontSize: 20),
            //                             //     ),
            //                             //     Text(
            //                             //       '$mins',
            //                             //       style: const TextStyle(
            //                             //           color: Colors.redAccent,
            //                             //           fontSize: 20),
            //                             //     ),
            //                             //   ],
            //                             // ),
            //                           ],
            //                         ),
            //                         Container(
            //                           height: 40,
            //                           width: 100,
            //                           decoration: BoxDecoration(
            //                               color: Colors.deepPurple,
            //                               borderRadius:
            //                                   BorderRadius.circular(5)),
            //                           child: const Center(
            //                             child: Text(
            //                               'View',
            //                               style: TextStyle(
            //                                   color: Colors.white,
            //                                   fontSize: 20),
            //                             ),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   )
            //                 ],
            //               ),
            //               // child: const Center(
            //               //   child: Text('Content goes here'),
            //               // ),
            //             ),
            //           )
            //         ],
            //       ),
            //       // Profile image
            //       Positioned(
            //         top: 70,
            //         // top:
            //         //     150.0, // (background container size) - (circle height / 2)
            //         child: Container(
            //           height: 100.0,
            //           width: 100.0,
            //           decoration: const BoxDecoration(
            //               shape: BoxShape.circle, color: Colors.deepPurple),
            //           child: const Image(
            //               image: AssetImage('assets/images/launch_lohgo.png')),
            //         ),
            //       )
            //     ],
            //   ),
            // ),

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
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
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
      ),
    );
  }
}
