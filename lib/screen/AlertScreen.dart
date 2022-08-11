import 'package:flutter/material.dart';
import 'package:underline_indicator/underline_indicator.dart';

import '../searchPage/search_company.dart';
import '../searchPage/sponsored.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController
    (
      length: 3, 
      child: Column
      (
        children: 
        [
          Container
          (
            constraints: BoxConstraints.expand(height: 50),
            child: TabBar
            (
              indicator:UnderlineIndicator
              (
                strokeCap: StrokeCap.round,
                borderSide: BorderSide
                (
                  color: Colors.pink,
                  width: 4
                )
              ),
              tabs: 
              [
                Tab
                (
                  text: 'Newly Listed',
                ),
                Tab
                (
                  text: 'Currently Listed',
                ),
                Tab
                (
                  text: 'Sponsored',
                )
              ],
              indicatorColor: Colors.pinkAccent,
              // indicatorPadding: EdgeInsets.all(30),
            ),
          ),
          Expanded
          (
            child: Container
            (
              child: TabBarView
              (
                children: 
                [
                  SearchCompanies(),
                  SponsoredTab(),
                  SponsoredTab()
                ]
              ),
            )
          )
        ],
      )
    );
  }
}