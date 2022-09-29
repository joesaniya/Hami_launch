import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hami_launch/models/alertnetwork.dart';
import 'package:hami_launch/screen/view_detail_token.dart';
import 'package:wave_transition/wave_transition.dart';

import '../config.dart';
import '../theme/appcolor.dart';

class TokedTokens extends StatefulWidget {
  const TokedTokens({Key? key}) : super(key: key);

  @override
  State<TokedTokens> createState() => _TokedTokensState();
}

class _TokedTokensState extends State<TokedTokens> {
  List<Locked>? displayedtoken;
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
              "Locked Tokens",
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

              // Column(),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02),

              //token

              // Container(
              //   height: 100,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //       color: Colors.grey.shade100,
              //       border:
              //           Border.all(width: 2, color: Colors.blueGrey.shade100)),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Expanded(
              //         child: Text(
              //           'TOKEN NAME',
              //           style: TextStyle(
              //               color: currentTheme.isDark
              //                   ? Colors.white
              //                   : Colors.black,
              //               fontSize: 18,
              //               fontWeight: FontWeight.w900),
              //         ),
              //       ),
              //       Expanded(child: Container()),
              //       Expanded(
              //         child: Text(
              //           'TOKEN SUPPLY',
              //           style: TextStyle(
              //               color: currentTheme.isDark
              //                   ? Colors.white
              //                   : Colors.black,
              //               fontSize: 18,
              //               fontWeight: FontWeight.w900),
              //         ),
              //       ),
              //       Expanded(child: Container()),
              //       Expanded(
              //         child: Text(
              //           'TOKENS TO BE LOCKED',
              //           style: TextStyle(
              //               color: currentTheme.isDark
              //                   ? Colors.white
              //                   : Colors.black,
              //               fontSize: 18,
              //               fontWeight: FontWeight.w900),
              //         ),
              //       ),
              //       Expanded(child: Container()),
              //       Expanded(
              //         child: Text(
              //           'LOCKING DATE',
              //           style: TextStyle(
              //               color: currentTheme.isDark
              //                   ? Colors.white
              //                   : Colors.black,
              //               fontSize: 18,
              //               fontWeight: FontWeight.w900),
              //         ),
              //       ),
              //       const Spacer()
              //     ],
              //   ),
              // ),

              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: Colors.blueGrey.shade100)),
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView.separated(
                    physics: const ScrollPhysics(),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    itemBuilder: (context, index) {
                      return locked.isEmpty
                          ? const Text('No tokens')
                          : SingleChildScrollView(
                              child: GestureDetector(
                                onTap: () {
                                  log('view token clicked');
                                  Navigator.push(
                                      context,
                                      WaveTransition(
                                          child: const ViewToken(),
                                          center: const FractionalOffset(
                                              0.90, 0.90),
                                          duration: const Duration(seconds: 1
                                              // milliseconds:
                                              //     3000
                                              ) // optional
                                          ));
                                },
                                child: Container(
                                  height: 130,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Appcolor.whiteSoft,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      // Recipe Photo
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.blueGrey,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  locked[index].Profileimage),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      // Recipe Info
                                      Flexible(
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // Recipe title
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 12),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      locked[index].title,
                                                      style: TextStyle(
                                                          color: currentTheme
                                                                  .isDark
                                                              ? Colors
                                                                  .deepPurple
                                                              : Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontFamily: 'inter'),
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      locked[index].subtitle,
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Colors.grey,
                                                          fontFamily: 'inter'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              // Recipe Calories and Time
                                              Row(
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 5),
                                                    // child:Text(calories!=null?calories:'$calories'),
                                                    child: Text(
                                                      locked[index].Supply,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: currentTheme
                                                                  .isDark
                                                              ? Colors
                                                                  .deepPurple
                                                              : Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 5),
                                                    child: Text(
                                                      locked[index].locked,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: currentTheme
                                                                  .isDark
                                                              ? Colors
                                                                  .deepPurple
                                                              : Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 5),
                                                child: Text(
                                                  locked[index].date,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: currentTheme.isDark
                                                          ? Colors.deepPurple
                                                          : Colors.black,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ),

                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    log('view token clicked');
                                                    Navigator.push(
                                                        context,
                                                        WaveTransition(
                                                            child:
                                                                const ViewToken(),
                                                            center:
                                                                const FractionalOffset(
                                                                    0.90, 0.90),
                                                            duration: const Duration(
                                                                seconds: 1
                                                                // milliseconds:
                                                                //     3000
                                                                ) // optional
                                                            ));
                                                  },
                                                  child: Container(
                                                    height: 30,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.deepPurple,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8)),
                                                    child: const Center(
                                                      child: Text(
                                                        'View',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
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
                            );
                      // REusecardToken(
                      //     Profileimage: displayedtoken![index].Profileimage,
                      //     title: displayedtoken![index].title,
                      //     subtitle: displayedtoken![index].subtitle,
                      //     Supply: displayedtoken![index].Supply,
                      //     locked: displayedtoken![index].locked,
                      //     date: displayedtoken![index].date,
                      //   );

                      //d
                      // SizedBox(
                      //     height: 20,
                      //     // height: MediaQuery.of(context).size.height * 0.5,
                      //     width: double.infinity,

                      //     child: Row(
                      //       children: [
                      //         Expanded(
                      //             child: Container(
                      //           child: Row(
                      //             children: [
                      //               CircleAvatar(
                      //                 backgroundImage: AssetImage(
                      //                     locked[index].Profileimage),
                      //               ),
                      //               Text(locked[index].title)
                      //             ],
                      //           ),
                      //         ))
                      //       ],
                      //     ),
                      //   );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      );
                    },
                    itemCount: locked.length),
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
          )),
    );
  }
}
