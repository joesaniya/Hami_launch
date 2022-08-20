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
  List<Company> searchDesktop = CompanyHelper.SarchResultDesktop;
  List<Company>? foundDesktop;

@override
  initState() {
    print('init');
    foundDesktop = searchDesktop;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    print('runFilters');
    List results = [];
    if (enteredKeyword.isEmpty) {
      print('runFilters if');
      results = searchDesktop.cast<Map<String, dynamic>>();
    } else {
      print('runFilters else');
      results = searchDesktop
          .where((Company) =>
              Company.title.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
        print(results);
    }

     setState(() {
      print('set state');
      foundDesktop = results.cast<Company>();
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
           foundDesktop!.isNotEmpty
               ? Container(
                 padding: EdgeInsets.all(16.0),
                 width: MediaQuery.of(context).size.width,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     GridView.builder
                      (
                        
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                        crossAxisCount: 4,  
                        crossAxisSpacing: 10.0,  
                        mainAxisSpacing: 4.0  
                        ),
                        itemCount: foundDesktop!.length,
                        itemBuilder:(context,index)
                        {
                        return RecipeTile
                                (
                                  data: foundDesktop![index],
                                );
                        // return Container
                        // (
                        //   // child: Image.network(network[index].image)
                          
                        //     height: MediaQuery.of(context).size.height*0.20,
                        //     // width: double.infinity,
                        //     decoration: BoxDecoration
                        //     (
                        //       borderRadius: BorderRadius.all(Radius.circular(5)),
                        //       color: Colors.grey.shade300
                        //     ),
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       children: [
                        //         Image
                        //         (
                        //           height: 50,
                        //           image: NetworkImage
                        //           (test[index].image)),
                        //         SizedBox
                        //         (
                        //           height: 10,
                        //         ),
                        //         Text(test[index].title),
                        //         SizedBox
                        //         (
                        //           height: 10,
                        //         ),
                        //         Text(test[index].subtitle),
                        //       ],
                        //     ),
                        // );
                        }
                      ),
                    //  ListView.separated(
                    //      shrinkWrap: true,
                    //      physics: NeverScrollableScrollPhysics(),
                    //      separatorBuilder: (context,index)
                    //      {
                    //        return SizedBox(height: 16,);
                    //      },
                    //      itemCount: foundCompany!.length,
                    //      itemBuilder: (context,index){
                    //        return RecipeTile
                    //        (
                    //          data: foundCompany![index],
                    //        );
                    //      }
                    //    ),
                   ],
                 ),
               )
               : Container(
                 padding: EdgeInsets.symmetric(vertical: 70.0,horizontal: 40.0),
                 // color: AppColor.primary,
                 // width: double.infinity,
                 // height: double.infinity,
                 child: Center(
                   child: const Text(
                       'Oops!!,Sorry No Desktop\'s Found',
                       style: TextStyle(fontSize: 17,fontFamily: 'inter',fontWeight: FontWeight.bold),
                     ),
                 ),
               ),
      ],
    );
  }
}