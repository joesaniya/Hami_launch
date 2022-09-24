import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../config.dart';
import '/searchPage/sponsored.dart';

import '../helper/company_helper.dart';
import '../models/company.dart';
import '../theme/appcolor.dart';
import '../widgets/searchWidget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchInputController = TextEditingController();
  List<Company> searchResult = CompanyHelper.SarchResultCompany;
  List<Company>? foundCompany;

  @override
  initState() {
    print('init');
    foundCompany = searchResult;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    print('runFilters');
    List results = [];
    if (enteredKeyword.isEmpty) {
      print('runFilters if');
      results = searchResult.cast<Map<String, dynamic>>();
    } else {
      print('runFilters else');
      results = searchResult
          .where((Company) => Company.title
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      print(results);
    }

    setState(() {
      print('set state');
      foundCompany = results.cast<Company>();
      // foundrecipe = searchResult;
    });
  }

  @override
  Widget build(BuildContext context) {
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
          body: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                // height: 300,
                // color: Appcolor.darkviolte,
                color: Colors.transparent,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Container(
                            height: 50,
                            margin: const EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Appcolor.background
                              color: currentTheme.isDark
                                  ? Colors.deepPurple.shade100
                                  : Colors.grey.shade200,
                            ),
                            child: TextField(
                              onChanged: (value) => _runFilter(value),
                              style: const TextStyle(
                                  // color: Colors.white,
                                  color: Colors.deepPurple,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                              textInputAction: TextInputAction.search,
                              decoration: InputDecoration(
                                  hintText: 'Search Your Partner Companies',
                                  hintStyle: const TextStyle(
                                      color: Colors.deepPurpleAccent
                                      // color: Colors.white.withOpacity(0.2)
                                      ),
                                  prefixIconConstraints:
                                      const BoxConstraints(maxHeight: 20),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 17),
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  prefixIcon: Visibility(
                                    visible:
                                        (searchInputController.text.isEmpty)
                                            ? true
                                            : false,
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          left: 10, right: 12),
                                      child: SvgPicture.asset(
                                        'assets/icons/search.svg',
                                        width: 20,
                                        height: 20,
                                        color: Colors.deepPurpleAccent,
                                        // color: Colors.white.withOpacity(0.2)
                                        // color: Colors.white,
                                      ),
                                    ),
                                  )),
                            ),
                          )),
                          //Filter Icon
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentTheme.isDark
                                    ? Colors.deepPurple.shade100
                                    : Colors.grey.shade200,
                                // color: Appcolor.background
                              ),
                              child: SvgPicture.asset('assets/icons/filter.svg',
                                  // color: Colors.white.withOpacity(0.2)
                                  color: Colors.deepPurpleAccent),
                            ),
                          )
                        ],
                      ),
                    ),
                    // SponsoredTab()
                  ],
                ),
              ),

              //2

              foundCompany!.isNotEmpty
                  ? Container(
                      padding: const EdgeInsets.all(16.0),
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.060,
                              width: double.infinity,
                              color: Colors.transparent,
                              child: Text(
                                'Sponsored Companies',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                            // Container
                            // (
                            //   margin: EdgeInsets.only(bottom: 15),
                            //   child: Text
                            //   (
                            //     'This is the result of your search..',
                            //      style: TextStyle(color: Colors.grey, fontSize: 12),
                            //   ),
                            // ),
                            //listview
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: foundCompany!.length,
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  height: 10,
                                );
                              },
                              itemBuilder: (context, index) {
                                // return Container();
                                return CompanyTile(
                                  data: foundCompany![index],
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 70.0, horizontal: 40.0),
                      child: const Center(
                        child: Text(
                          'Oops!!,Sorry No Partner Companie\'s Found',
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'inter',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                    ),
              SponsoredTab()
            ],
          ),
        ));
  }
}
