import 'package:flutter/material.dart';
import 'package:hami_launch/Journey.dart';
import 'package:hami_launch/sale_ended.dart';
import 'package:hami_launch/widgets/scrollwidget.dart';
import 'package:hami_launch/widgets/token_widget1.dart';

import '../config.dart';
import '../testimonial_auditor.dart';

class ViewToken extends StatefulWidget {
  const ViewToken({Key? key}) : super(key: key);

  @override
  State<ViewToken> createState() => _ViewTokenState();
}

class _ViewTokenState extends State<ViewToken> {
  // var data = "0xc19999988888666";
  var isVisible = false;

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
              "HAMI",
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
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const ToeknWidget1(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.09),

              // const ScrollWidget1(),
              const SaleEnded(),

              //sale ended

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

              const Tabwidget(),

              //tabbar
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

              //Journey
              const Journey(),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

              //smartLock

              GestureDetector(
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    // gradient: LinearGradient(
                    //   begin: Alignment.centerLeft,
                    //   end: Alignment.centerRight,
                    //   colors: [Appcolor.darkgreen, Appcolor.lightgreen],
                    // ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.lock_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Smart Lock',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                        Spacer(),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: isVisible,
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.20,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    color: currentTheme.isDark ? Colors.black : Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'No Locked Tokens On HAMI Launchpad',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        // SizedBox()
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Learn More',
                            style: TextStyle(
                                color: Colors.purpleAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline),
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

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

              //audi
              const AuditorsTextimonial(),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

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
        ),
      ),

      // body: Padding(
      //   padding: const EdgeInsets.only(left: 20.0, right: 20),
      //   child: ListView(
      //     children: [
      //       SizedBox(
      //         height: MediaQuery.of(context).size.height * 0.03,
      //       ),
      //       const ToeknWidget1(),
      //       SizedBox(height: MediaQuery.of(context).size.height * 0.09),

      //       // const ScrollWidget1(),
      //       const Tabwidget(),

      //       //disclaimer
      //       RichText(
      //         textAlign: TextAlign.center,
      //         text: TextSpan(
      //           // style: const TextStyle(color: Colors.black, fontSize: 36),
      //           children: <TextSpan>[
      //             TextSpan(
      //                 text: 'Disclaimer:',
      //                 style: TextStyle(
      //                     fontSize: 16,
      //                     color:
      //                         currentTheme.isDark ? Colors.white : Colors.black,
      //                     height: 1.5)),
      //             // const TextSpan(text: 'dot '),
      //             const TextSpan(
      //                 text:
      //                     'The information provided shall not in any way constitute a recommendation as to whether you should invest in any product discussed. We accept no liability for any loss occasioned to any person acting or refraining from action as a result of any material provided or published.',
      //                 style: TextStyle(
      //                     color: Colors.grey, fontSize: 16, height: 1.5
      //                     // decoration: TextDecoration.underline
      //                     ))
      //           ],
      //         ),
      //         // textScaleFactor: 0.5,
      //       ),
      //       SizedBox(height: MediaQuery.of(context).size.height * 0.09),
      //     ],
      //   ),
      // ),
    );
  }
}
