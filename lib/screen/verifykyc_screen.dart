import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hami_launch/widgets/appbar_widget.dart';

import '../Dialogbox/dialog_helper.dart';
import '../theme/appcolor.dart';
import '../widgets/animated_button.dart';

class VerifyKYC extends StatefulWidget {
  const VerifyKYC({Key? key}) : super(key: key);

  @override
  State<VerifyKYC> createState() => _VerifyKYCState();
}

class _VerifyKYCState extends State<VerifyKYC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
      // appBar: AppBar
      // (
      //   elevation: 0.0,
      //   backgroundColor: Appcolor.darkviolte6,
      //   automaticallyImplyLeading: false,
      //   leading: IconButton
      //   (
      //     onPressed:()
      //     {
      //       Navigator.pop(context);
      //     }, 
      //     icon: Icon
      //     (
      //       Icons.arrow_back_ios,
      //       color: Colors.white,
      //     )
      //   ),
      //   title: Text
      //   (
      //     'Verify KYC',
      //     style: TextStyle
      //     (
      //       color: Colors.white
      //     ),
      //   ),
      // ),
      appBar: MyAppBar(title: 'Verify KYC',),
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
                            Icons.verified_outlined,
                            color: Appcolor.darkviolte3,
                          ),
                          SizedBox
                          (
                            width: 10,
                          ),
                          Text
                          (
                            'Verify KYC',
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
                      Text
                          (
                            'Verify KYC',
                            style: TextStyle
                            (
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                            ),
                          ),

                          AnimatedButton()

                      // Container
                      // (
                      //   height: 40,
                      //   width: 80,
                      //   decoration: BoxDecoration
                      //   (
                      //     borderRadius: BorderRadius.all(Radius.circular(10)),
                      //     color: Appcolor.darkviolte
                      //   ),
                      //   child: Center(
                      //     child: Text
                      //       (
                      //         'Help',
                      //         style: TextStyle
                      //         (
                      //           color: Colors.white,
                      //           fontSize: 18,
                      //           fontWeight: FontWeight.w500
                      //         ),
                      //       ),
                      //   ),
                      // )
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


