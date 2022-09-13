import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Dialogbox/dialog_helper.dart';
import '../theme/appcolor.dart';
import '../widgets/animated_button.dart';
import '../widgets/appbar_widget.dart';

class ExchangeListing extends StatelessWidget {
  const ExchangeListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
    
      appBar: MyAppBar(title: 'Exchange Listing',),
      body: SingleChildScrollView
      (
        child: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: Column
          (
            children: 
            [
              Container
                (
                  height: MediaQuery.of(context).size.height*0.20,
                  width: double.infinity,
                  decoration: BoxDecoration
                  (
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Appcolor.background
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Column
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: 
                      [
                        Row
                        (
                          children: 
                          [
                            Icon
                            (
                              FontAwesomeIcons.lightbulb,
                              color: Appcolor.darkviolte3,
                            ),
                            SizedBox
                            (
                              width: 10,
                            ),
                            Text
                            (
                              'Exchange Listing',
                              style: TextStyle
                              (
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w900
                              ),
                            ),
                            SizedBox
                            (
                              width: 5,
                            ),
                            Icon
                            (
                              Icons.help,
                              color: Colors.grey,
                            )
                          ],
                        ),
                        
                            AnimatedButton()
                      ],
                    ),
                  ),
                ),

              SizedBox
              (
                height: 20,
              ),
              Container
              (
                height: MediaQuery.of(context).size.height*0.10,
                width: double.infinity,
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Appcolor.background
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        log('connectWallet');
                        DialogHelper.exit(context);
                      },
                      child: Container
                      (
                        height: 40,
                        width: 160,
                        decoration: BoxDecoration
                          (
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Appcolor.darkviolte
                          ),
                          child: Center(
                            child: Text
                            (
                              'Connect Wallet',
                              style: TextStyle
                              (
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}