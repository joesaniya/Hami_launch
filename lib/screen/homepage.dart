import 'package:flutter/material.dart';
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
    return SingleChildScrollView
    (
      physics: const BouncingScrollPhysics(),
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
            child: BnnerWidget(size: size),
          ),

          SizedBox
          (
            height: 5,
          ),

          //text
          Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20),
            child: SizedBox
            (
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Lorem Ipsum is simply dummy text.',style: TextStyle(fontSize: 15,color: Colors.grey),),
                  Icon(Icons.menu,color: Colors.grey,)
                ],
              ))
          ),
          SizedBox
          (
            height: 20,
          ),

          //header
          IconHeade(),

          SizedBox
          (
            height: 20,
          ),

          //
          const Padding(
            padding: EdgeInsets.only(left:20.0,right: 20),
            child: TradingAndSponsored(),
          ),

          SizedBox
          (
            height: 20,
          ),

          //button
          const Padding(
            padding: EdgeInsets.only(left:20.0,right: 20),
            child: ButtonHome(),
          )

        ],
      ),
    );
  }
}