import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hami_launch/theme/appcolor.dart';
import '/widgets/button_home.dart';

import '../widgets/banner_widget.dart';
import '../widgets/logo_header.dart';
import '../widgets/trading_sponsored_banner widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return RefreshIndicator(
      displacement: 380,
      backgroundColor: Appcolor.darkviolte,
      color: Appcolor.darkviolte6,
      strokeWidth: 3,
      triggerMode: RefreshIndicatorTriggerMode.onEdge,
      onRefresh: () async {
        await Future.delayed(const Duration(milliseconds: 1500));
        setState(() {
          // itemCount = itemCount + 1;
          log('refresh');
        });
      },
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: BnnerWidget(size: size),
              ),

              SizedBox(
                // height: 5,
                height: MediaQuery.of(context).size.height * 0.05,
              ),

              //text
              Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: SizedBox(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Lorem Ipsum is simply dummy text.',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          Icon(
                            Icons.menu,
                            color: Colors.grey,
                          )
                        ],
                      ))),
              SizedBox(
                // height: 20,
                height: MediaQuery.of(context).size.height * 0.05,
              ),

              //header
              const IconHeade(),

              SizedBox(
                // height: 20,
                height: MediaQuery.of(context).size.height * 0.05,
              ),

              //
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20),
                child: TradingAndSponsored(),
              ),

              // SizedBox(
              //   height: 100,
              //   width: 400,
              //   child: ListView.builder(
              //       itemExtent: 550,
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: (context, index) => Container(
              //             margin: const EdgeInsets.all(5.0),
              //             color: Colors.orangeAccent,
              //           ),
              //       itemCount: 20),
              // ),

              SizedBox(
                // height: 20,
                height: MediaQuery.of(context).size.height * 0.05,
              ),

              //button
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20),
                child: ButtonHome(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
