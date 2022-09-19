import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hami_launch/models/alertnetwork.dart';

import '../theme/appcolor.dart';

class RecentReports extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final String Description;
  RecentReports
  (
    {
      required this.image,
      required this.title,
      required this.subtitle,
      required this.Description,
    }
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: 
      // Auditor1.length==0?CircularProgressIndicator():
      GestureDetector(
        onTap: ()
        {
          log('report');
          log('length:$Auditor1.length');
        },
      // onTap: ()=>selectMeal(context),
      
      child: Container(
        height: 90,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Appcolor.whiteSoft,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            // Recipe Photo
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blueGrey,
                image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
              ),
            ),
            // Recipe Info
            Flexible(
              child: Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Recipe title
                    Container(
                      margin: EdgeInsets.only(bottom: 12),
                      child: Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'inter'),
                      ),
                    ),
                    // Recipe Calories and Time
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/fire-filled.svg',
                          color: Colors.black,
                          width: 12,
                          height: 12,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          // child:Text(calories!=null?calories:'$calories'),
                          child: Text(
                            title.toString(),
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.alarm,
                          size: 14,
                          color: Colors.black,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            title.toString(),
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
        ),
    );
  }
}