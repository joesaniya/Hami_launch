import 'package:flutter/material.dart';

import '../models/currentlylisted.dart';
import '../theme/appcolor.dart';

class Projects extends StatelessWidget {
Projects({Key? key}) : super(key: key);



  List<CurrentlyListedModel> currentlyListedModel = getCurrentlyListedModel();

  List<Widget> buildLastJobs1(){
    List<Widget> list = [];
    for (var i = currentlyListedModel.length - 1; i > -1; i--) {
      list.add(buildLastJob1(currentlyListedModel[i]));
    }
    return list;
  }

  //demo
  Widget buildLastJob1(CurrentlyListedModel currentlyListedModel){
    return ListView
    (
      shrinkWrap: true,
      children: 
      [
        Container
        (
          decoration: BoxDecoration
            (
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Appcolor.darkviolte6
            ),
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  // SizedBox
                  // (
                  //   height: 10,
                  // ),
                  Row
                  (
                    children: 
                    [
                      // SizedBox(width: 10,),
                      CircleAvatar
                      (
                        backgroundImage: NetworkImage(currentlyListedModel.image),
                      ),
                      SizedBox
                      (
                        width: 10,
                      ),
                      Text
                      (
                        currentlyListedModel.heading,
                        style: TextStyle
                        (
                          color: Colors.white
                        ),
                      ),
                    
                      Spacer(),
                      Text
                      (
                        currentlyListedModel.trailing,
                        style: TextStyle
                        (
                          color: Colors.white
                        ),
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
                      padding: const EdgeInsets.only(left:50.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text
                                (
                                  currentlyListedModel.subheading,
                                  style: TextStyle
                                  (
                                    // color: Colors.white
                                    color: Colors.grey
                                  ),
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
        // SizedBox
        // (
        //   height: 10,
        // )
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left:10.0,right: 10),
        child: Column(
          children: [
            SizedBox
            (
              height: 5,
            ),
            Container
            (
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Card
              (
                color: Appcolor.darkviolte6,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text
                    (
                      'Current Listed Projects',
                      style: TextStyle
                      (
                        color: Colors.white
                      ),
                      // textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
            ),
    
            currentlyListedModel.isEmpty?Container
                    (
                      height: MediaQuery.of(context).size.height*0.3,
                      width: double.infinity,
                      child: Card
                      (
                        // color: Colors.pink,
                        color: Appcolor.background,
                        child:Center(
                          child: Text
                          (
                            'No Records Found!!',
                            style: TextStyle
                            (
                              color: Colors.grey
                            ),
                          ),
                        )
                      ),
                    ):
                    SizedBox
                    (
                      height: 0,
                    ),
            ...buildLastJobs1()
            
          ],
        ),
      ),
    );
  }
}