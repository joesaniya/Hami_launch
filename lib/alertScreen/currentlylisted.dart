import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../config.dart';
import '../models/currentlylisted.dart';
import '../models/newly-listed.dart';
import '../theme/appcolor.dart';

class CurrentlyListed extends StatelessWidget {
  CurrentlyListed({Key? key}) : super(key: key);

  List<CurrentlyListedModel> currentlyListedModel = getCurrentlyListedModel();

  List<Widget> buildLastJobs1() {
    List<Widget> list = [];
    for (var i = currentlyListedModel.length - 1; i > -1; i--) {
      list.add(buildLastJob1(currentlyListedModel[i]));
    }
    return list;
  }

  //demo
  Widget buildLastJob1(CurrentlyListedModel currentlyListedModel) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Appcolor.background),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // SizedBox
                // (
                //   height: 10,
                // ),
                Row(
                  children: [
                    // SizedBox(width: 10,),
                    CircleAvatar(
                      backgroundImage: NetworkImage(currentlyListedModel.image),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      currentlyListedModel.heading,
                      style: TextStyle(
                          color: currentTheme.isDark
                              ? Colors.white
                              : Colors.black),
                    ),

                    Spacer(),
                    Text(
                      currentlyListedModel.trailing,
                      style: TextStyle(
                          color: currentTheme.isDark
                              ? Colors.white
                              : Colors.black),
                    ),
                  ],
                ),
                // SizedBox
                // (
                //   width: 60,
                // ),
                Container(
                  // height: 40,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            currentlyListedModel.subheading,
                            style: TextStyle(
                                // color: Colors.white
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            // Container
            // (
            //   height: MediaQuery.of(context).size.height*0.30,
            //   decoration: BoxDecoration
            //   (
            //     borderRadius: BorderRadius.all(Radius.circular(20.0)),
            //     color: Colors.red
            //   ),
            //   child: buildLastJob1(),
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Card(
                color: Appcolor.background,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox
                    // (
                    //   width: 10,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Current Listed Tokens',
                        style: TextStyle(
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                    PopupMenuButton<int>(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                            value: 1,
                            child: Text(
                              'Edit',
                              style: TextStyle(color: Colors.black),
                            )),
                        PopupMenuItem(
                            value: 2,
                            child: Text(
                              'Delete',
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                      // icon: Icon(Icons.library_add),
                      icon: Icon(FontAwesomeIcons.ellipsis,
                          color: currentTheme.isDark
                              ? Colors.white
                              : Colors.black),
                      offset: Offset(0, 50),
                      onCanceled: () {
                        log('cancelled');
                      },
                      onSelected: (value) {
                        log('value: $value');
                      },
                    )
                    // IconButton
                    // (
                    //   onPressed: (){},
                    //   icon: Icon
                    //   (
                    //     Icons.person
                    //   ),
                    //   color: Colors.white,
                    // )
                  ],
                ),
              ),
            ),

            currentlyListedModel.isEmpty
                ? Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: double.infinity,
                    child: Card(
                        // color: Colors.pink,
                        color: Appcolor.background,
                        child: Center(
                          child: Text(
                            'No Records Found!!',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )),
                  )
                : SizedBox(
                    height: 20,
                  ),
            ...buildLastJobs1()
          ],
        ),
      ),
    );
  }
}
