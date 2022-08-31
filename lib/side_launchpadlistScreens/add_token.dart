import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Dialogbox/dialog_helper.dart';
import '../theme/appcolor.dart';
import '../widgets/animated_button.dart';

class AddToken extends StatelessWidget {
  const AddToken({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
      appBar: AppBar
      (
        elevation: 0.0,
        backgroundColor: Appcolor.darkviolte6,
        automaticallyImplyLeading: false,
        leading: IconButton
        (
          onPressed:()
          {
            Navigator.pop(context);
          }, 
          icon: Icon
          (
            Icons.arrow_back_ios,
            color: Colors.white,
          )
        ),
        title: Text
        (
          'Add Token',
          style: TextStyle
          (
            color: Colors.white
          ),
        ),
      ),
      body:SingleChildScrollView
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
                                'Add Token',
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
                                'This is Add Tokens',
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
                    height: MediaQuery.of(context).size.height*0.26,
                    width: double.infinity,
                    decoration: BoxDecoration
                      (
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Appcolor.background
                      ),
                    child: Padding(
                      padding: const EdgeInsets.only(left:20.0,right: 20),
                      child: Column
                      (
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: 
                        [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text
                              (
                                'Smartcontract Address *',
                                style: TextStyle
                                (
                                  fontSize: 18,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            
                            TextFormField
                              (
                                style: TextStyle
                                (
                                  color: Colors.white
                                ),
                                decoration:const InputDecoration
                                  (
                                    focusedBorder: OutlineInputBorder
                                    (
                                        borderSide: BorderSide
                                        (
                                          color: Colors.grey, 
                                          width: 1.0
                                        ),
                                    ),
                                    enabledBorder: OutlineInputBorder
                                    (
                                        borderSide: BorderSide
                                        (
                                          color: Colors.grey, 
                                          width: 1.0
                                        ),
                                    ),
                                    errorBorder: OutlineInputBorder
                                    (
                                      borderSide: BorderSide
                                        (
                                          color: Colors.grey, 
                                          width: 1.0
                                        ),
                                    ),
                                    labelText: 'Smartcontract Address',
                                    labelStyle: TextStyle
                                    (
                                      color: Colors.grey
                                    )
                                  )
                              ),

                            Align(
                              alignment: Alignment.centerRight,
                              child: FlatButton(
                                // onPressed: _stepContinue,
                                onPressed: ()
                                {
                                  log('wallet connect');
                                  DialogHelper3.exit(context);
                                },
                                child: const Text('Connect',
                                style: TextStyle(color: Colors.white)),
                                color: Appcolor.darkviolte,
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
            ],
          ),
        ),
      )
    );
  }
}