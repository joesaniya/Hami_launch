import 'package:flutter/material.dart';
import 'package:hami_launch/alertScreen/currentlylisted.dart';
import '/alertScreen/NewlyListed.dart';
import '/screen/AlertScreen.dart';
import '/theme/appcolor.dart';
import 'package:underline_indicator/underline_indicator.dart';

import '../searchPage/search_company.dart';
import '../searchPage/sponsored.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  // var size = MediaQuery.of(context).size;
  final bool _flag = true;

  String _tabbed = '1';

  // bool _flag1 = true;
  // bool _flag2 = true;
  // bool _flag3 = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                  color: Appcolor.darkviolte1,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // _flag = !_flag;
                          _tabbed = '1';
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                              color: _tabbed == '1'
                                  ? Appcolor.background
                                  : Colors.transparent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          // height: 50,
                          // width: 150,
                          child: Center(
                              child: Text(
                            'Newly Listed',
                            style: TextStyle(
                              fontFamily: 'PT Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color:
                                  _tabbed == '1' ? Colors.white : Colors.grey,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ),

                  //2
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // _flag = !_flag;
                          _tabbed = '2';
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                              color: _tabbed == '2'
                                  ? Appcolor.background
                                  : Colors.transparent,
                              // color: _flag ? Appcolor.background:Colors.transparent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          // height: 50,
                          // width: 150,
                          child: Center(
                              child: Text(
                            'Currently Listed',
                            style: TextStyle(
                              fontFamily: 'PT Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color:
                                  _tabbed == '2' ? Colors.white : Colors.grey,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // _flag = !_flag;
                          _tabbed = '3';
                        });
                        // buildLastJob(Pay[]);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                              color: _tabbed == '3'
                                  ? Appcolor.background
                                  : Colors.transparent,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Center(
                              child: Text(
                            'Sponsored',
                            style: TextStyle(
                              fontFamily: 'PT Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color:
                                  _tabbed == '3' ? Colors.white : Colors.grey,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ),
                  // Expanded(child: Container())
                ],
              ),

              // buildLastJobs()
            ),
          ),
          SingleChildScrollView(
            // child: _flag ? SearchCompanies():SponsoredTab()
            child: _tabbed == '1'
                ? NewlyListed()
                : _tabbed == '2'
                    ? CurrentlyListed()
                    : SponsoredTab(),
          )
        ],
      ),
    );
  }
}
