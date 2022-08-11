import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/theme/appcolor.dart';

import '../helper/company_helper.dart';
import '../models/company.dart';
import '../widgets/searchWidget.dart';

class SearchCompanies extends StatefulWidget {
  const SearchCompanies({Key? key}) : super(key: key);

  @override
  State<SearchCompanies> createState() => _SearchCompaniesState();
}

class _SearchCompaniesState extends State<SearchCompanies> {

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
          .where((Company) =>
              Company.title.toLowerCase().contains(enteredKeyword.toLowerCase()))
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
    return ListView
    (
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: 
      [
        Container
        (
          width: MediaQuery.of(context).size.width,
          height: 120,
          // color: Appcolor.darkviolte,
          color: Colors.transparent,
          child: Column
          (
            children: 
            [
              Padding
              (
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  [
                    Expanded
                    (
                      child: Container
                      (
                        height: 50,
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration
                        (
                          borderRadius: BorderRadius.circular(10), 
                          color: Appcolor.background
                        ),
                        child: TextField
                        (
                          onChanged: (value) => _runFilter(value),
                          style: TextStyle
                          (
                            color: Colors.white, 
                            fontSize: 16, 
                            fontWeight: FontWeight.w400
                          ),
                          maxLines: 1,
                          textInputAction: TextInputAction.search,
                          decoration: InputDecoration
                          (
                            hintText: 'Search Your Partner Companies',
                            hintStyle: TextStyle
                            (
                              color: Colors.white.withOpacity(0.2)
                            ),
                            prefixIconConstraints: BoxConstraints(maxHeight: 20),
                            contentPadding: EdgeInsets.symmetric(horizontal: 17),
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                            prefixIcon: Visibility
                            (
                              visible: (searchInputController.text.isEmpty) ? true : false,
                              child: Container(
                                  margin: EdgeInsets.only(left: 10, right: 12),
                                  child: SvgPicture.asset(
                                    'assets/icons/search.svg',
                                    width: 20,
                                    height: 20,
                                    color: Colors.white.withOpacity(0.2)
                                    // color: Colors.white,
                                  ),
                                ),
                            )
                          ),
                        ),
                      )
                    ),
                    //Filter Icon
                    GestureDetector
                    (
                      onTap: (){},
                      child: Container
                      (
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration
                        (
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolor.background
                        ),
                        child: SvgPicture.asset
                        (
                          'assets/icons/filter.svg',
                          color: Colors.white.withOpacity(0.2)
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        //2

        foundCompany!.isNotEmpty
        ?
         Container
          (
            padding: EdgeInsets.all(16.0),
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView
            (
              child: Column
              (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: 
                [
                  Container
                  (
                    margin: EdgeInsets.only(bottom: 15),
                    child: Text
                    (
                      'This is the result of your search..',
                       style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  //listview
                  ListView.separated
                  (
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: foundCompany!.length,
                    separatorBuilder: (context,index)
                    {
                      return SizedBox
                      (
                        height: 10,
                      );
                    },
                    itemBuilder: (context,index)
                    {
                      // return Container();
                      return CompanyTile
                      (
                        data: foundCompany![index],
                      );
                    }, 
                  )
                ],
              ),
            ),
          )

          :
          Container
          (
            padding: EdgeInsets.symmetric(vertical: 70.0,horizontal: 40.0),
            child: Center
            (
              child: Text
              (
                'Oops!!,Sorry No Partner Companie\'s Found',
                style: TextStyle
                (
                  fontSize: 17,
                  fontFamily: 'inter',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
                ),
              ),
            ),
          )
      ],
    );
    // return Container
    // (
    //   child: SingleChildScrollView
    //   (
    //     child: Column
    //     (
    //       children: 
    //       [

    //       ],
    //     ),
    //   ),
    // );
  }
}