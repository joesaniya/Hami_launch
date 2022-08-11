import 'package:flutter/material.dart';
import '/theme/appcolor.dart';

import '../models/banner_model.dart';

class TradingAndSponsored extends StatefulWidget {
  const TradingAndSponsored({Key? key}) : super(key: key);

  @override
  State<TradingAndSponsored> createState() => _TradingAndSponsoredState();
}

class _TradingAndSponsoredState extends State<TradingAndSponsored> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemExtent: 150,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                margin: EdgeInsets.all(5.0),
                // width: 800,
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  // color: Colors.orangeAccent,
                  color: Appcolor.background
                ),
                child: Column
                (
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: 
                  [
                    SizedBox
                    (
                      height: 20,
                    ),
                    Container(
                      height: 20,
                      width: double.infinity,
                      // color: Colors.pink,
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text
                        (
                          banner[index].title,
                          style: TextStyle
                          (
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                    SizedBox
                    (
                      height: 10,
                    ),
                    
                    Container(
                      height: 30,
                      width: double.infinity,
                      // color: Colors.pink,
                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0,right: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text
                              (
                                banner[index].subtitle,
                                style: TextStyle
                                (
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w300
                                ),
                                maxLines: 3,
                              ),
                            ),
                            Image.asset(
                              // banner[index].topImage,
                              banner[index].imageBanner,
                              width: size.height * 0.05,
                              height: size.height * 0.06,
                              // height: size.height * 0.04,//optional
                              // color: Colors.deepPurpleAccent,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
          itemCount: banner.length
        ),
    );
  }
}

