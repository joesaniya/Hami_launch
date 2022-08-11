import 'package:flutter/material.dart';
import 'package:underline_indicator/underline_indicator.dart';

import '../searchPage/search_company.dart';
import '../searchPage/sponsored.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // var size = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController
    (
      length: 2, 
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
                  text: 'Companies',
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
                  SponsoredTab()
                  // Container
                  // (
                  //   child: Center(
                  //     child: Text
                  //     (
                  //       'Companies',
                  //       style: TextStyle
                  //       (
                  //         color: Colors.white
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Container
                  // (
                  //   child: Center(
                  //     child: Text
                  //     (
                  //       'Sponsored',
                  //       style: TextStyle
                  //       (
                  //         color: Colors.white
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ]
              ),
            )
          )
        ],
      )
    );
  }
}