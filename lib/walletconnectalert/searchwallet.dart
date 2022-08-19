import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hami_launch/theme/appcolor.dart';

import '../helper/company_helper.dart';
import '../models/company.dart';
import '../views/tile.dart';

class SearchWallet extends StatefulWidget {
  const SearchWallet({Key? key}) : super(key: key);

  @override
  State<SearchWallet> createState() => _SearchWalletState();
}

class _SearchWalletState extends State<SearchWallet> {

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
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.center,
          child: Text
          (
            'Choose your preferred wallet',
            style: TextStyle
            (
              fontSize: 25,
              color: Colors.grey
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Container(
                          height: 50,
                          width: double.infinity,
                          // margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Appcolor.grey),
                          child: TextField(
                            onChanged: (value) => _runFilter(value),
                            
                            style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
                            maxLines: 1,
                            textInputAction: TextInputAction.search,
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.black.withOpacity(0.2)),
                              prefixIconConstraints: BoxConstraints(maxHeight: 20),
                              contentPadding: EdgeInsets.symmetric(horizontal: 17),
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              // prefixIcon: Visibility(
                              //   visible: (searchInputController.text.isEmpty) ? true : false,
                              //   child: Container(
                              //     margin: EdgeInsets.only(left: 10, right: 12),
                              //     child: SvgPicture.asset(
                              //       'assets/icons/search.svg',
                              //       width: 20,
                              //       height: 20,
                              //       color: Colors.white,
                              //     ),
                              //   ),
                              // ),
                            ),
                          ),
                        ),
                ),
                // Search Keyword Recommendation
              ],
            ),
          ),
           foundCompany!.isNotEmpty
               ? Container(
                 padding: EdgeInsets.all(16.0),
                 width: MediaQuery.of(context).size.width,
                 child: SingleChildScrollView(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       
                       ListView.separated(
                           shrinkWrap: true,
                           physics: NeverScrollableScrollPhysics(),
                           separatorBuilder: (context,index)
                           {
                             return SizedBox(height: 16,);
                           },
                           itemCount: foundCompany!.length,
                           itemBuilder: (context,index){
                             return RecipeTile
                             (
                               data: foundCompany![index],
                             );
                           }
                         ),
                     ],
                   ),
                 ),
               )
               : Container(
                 padding: EdgeInsets.symmetric(vertical: 70.0,horizontal: 40.0),
                 // color: AppColor.primary,
                 // width: double.infinity,
                 // height: double.infinity,
                 child: Center(
                   child: const Text(
                       'Oops!!,Sorry No recipe\'s Found',
                       style: TextStyle(fontSize: 17,fontFamily: 'inter',fontWeight: FontWeight.bold),
                     ),
                 ),
               ),
      ],
    );
  }
}