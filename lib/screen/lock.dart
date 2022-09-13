import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Dialogbox/dialog_helper.dart';
import '../theme/appcolor.dart';
import '../widgets/animated_button.dart';
import '../widgets/appbar_widget.dart';

class CreateLock extends StatefulWidget {
  const CreateLock({Key? key}) : super(key: key);

  @override
  State<CreateLock> createState() => _CreateLockState();
}

class _CreateLockState extends State<CreateLock> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //dropdown
  final List<String> items = [
    'Token',
    'LP Token',
  ];


  String? selectedValue;

  String dropdownValue = 'Token';

  Connect()
  {
    log('connected');
    if(_formKey.currentState!.validate())
    {
      log('validated');
      _formKey.currentState!.save();
      try{
        log('wallet connect');
        DialogHelper3.exit(context);

      }
      catch(e)
      {
        log(e.toString());
        showError(e.toString());
      }
    }
  }


  //errror
    showError(String errormessage) {
    print('show error');
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('ERROR'),
            content: Text(errormessage,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.white)),
            backgroundColor: Colors.purple,
            shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15)),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)))
            ],
          );
        });
  }

  Item? selectedUser;
  List<Item> users = <Item>[
    const Item(
      '1',
      // Icon(Icons.android,color:  const Color(0xFF167F67),)
    ),
    const Item(
      '2',
      // Icon(Icons.flag,color:  const Color(0xFF167F67),)
    ),
    const Item(
      '3',
      // Icon(Icons.format_indent_decrease,color:  const Color(0xFF167F67),)
    ),
    const Item(
      '4',
      // Icon(Icons.mobile_screen_share,color:  const Color(0xFF167F67),)
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor: Appcolor.darkviolte6,
      appBar: MyAppBar(title: 'Create Lock',),
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
                child: Padding
                (
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
                          'Create Lock',
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
                         'This is Create Lock',
                          style: TextStyle
                          (
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),

                        AnimatedButton()

                      //   Container
                      //   (
                      //     height: 40,
                      //     width: 80,
                      //     decoration: BoxDecoration
                      //     (
                      //       borderRadius: BorderRadius.all(Radius.circular(10)),
                      //       color: Appcolor.darkviolte
                      //     ),
                      //     child: Center
                      //     (
                      //       child: Text
                      //         (
                      //           'Help',
                      //           style: TextStyle
                      //           (
                      //             color: Colors.white,
                      //             fontSize: 18,
                      //             fontWeight: FontWeight.w500
                      //       ),
                      //     ),
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
                height: MediaQuery.of(context).size.height*0.40,
                width: double.infinity,
                decoration: BoxDecoration
                  (
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Appcolor.background
                  ),
                child: Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20),
                  child: Form(
                    key: _formKey,
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
                            'Select Token Type*',
                            style: TextStyle
                            (
                              color: Colors.white,
                              fontSize: 15
                            ),
                          ),
                        ),
                  
                  
                              //   DropdownButtonFormField2(
                              //     focusColor: Color.fromARGB(115, 230, 224, 224),
                              //   decoration: InputDecoration(
                              //     //Add isDense true and zero Padding.
                              //     //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                              //     isDense: true,
                              //     contentPadding: EdgeInsets.zero,
                              //     border: OutlineInputBorder(
                              //       borderSide: BorderSide(color: Color.fromARGB(115, 230, 224, 224),),
                              //       borderRadius: BorderRadius.circular(15),
                              //     ),
                              //     //Add more decoration as you want here
                              //     //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                              //   ),
                              //   isExpanded: true,
                              //   hint: const Text(
                              //     'Token',
                              //     style: TextStyle
                              //     (
                              //       fontSize: 14,
                              //       color: Colors.grey
                              //       // color: Color.fromARGB(115, 230, 224, 224),
                              //     ),
                              //   ),
                              //   icon: const Icon(
                              //     Icons.arrow_drop_down,
                              //     color: Color.fromARGB(115, 230, 224, 224),
                              //   ),
                              //   iconSize: 30,
                              //   buttonHeight: 60,
                              //   buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                              //   dropdownDecoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(15),
                              //     color: Appcolor.background,
                              //   ),
                              //   items: items
                              //           .map((item) =>
                              //           DropdownMenuItem<String>(
                              //             value: item,
                              //             child: Text(
                              //               item,
                              //               style: const TextStyle(
                              //                 fontSize: 14,
                              //                 color: Color.fromARGB(115, 230, 224, 224),
                              //               ),
                              //             ),
                              //           ))
                              //           .toList(),
                              //   validator: (value) {
                              //     if (value == null) {
                              //       return 'Please select gender.';
                              //     }
                              //   },
                              //   onChanged: (value) {
                              //     //Do something when changing the item if you want.
                              //   },
                              //   onSaved: (value) {
                              //     selectedValue = value.toString();
                              //   },
                              // ),
                  
                        DropdownButtonFormField(
                          style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder( //<-- SEE HERE
                                borderSide: BorderSide(color: Colors.grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder( //<-- SEE HERE
                                borderSide: BorderSide(color: Colors.grey, width: 1),
                              ),
                              filled: false,
                              fillColor: Colors.transparent,
                            ),
                            icon: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                            dropdownColor: Appcolor.background,
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: <String>['Token', 'LP Token'].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle
                                  (
                                    fontSize: 15,
                                    color: Colors.white
                                  ),
                                ),
                              );
                            }).toList(),
                            validator: (String? token)
                                {
                                  if(token!.isEmpty)
                                  {
                                    return 'Please Select Token Type';
                                  }
                                },
                          ),
                  
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
                              
                              style: TextStyle(color: Colors.white),
                              validator: (String? address)
                                {
                                  if(address!.isEmpty)
                                  {
                                    return '* Please enter smartContract Address';
                                  }
                                },
                              decoration:const InputDecoration
                                (
                                  errorStyle: TextStyle(color: Colors.orange),
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
                            alignment: Alignment.center,
                            child: FlatButton(
                              // onPressed: _stepContinue,
                              onPressed: Connect,
                              // onPressed: ()
                              // {
                              //   log('wallet connect');
                              //   DialogHelper3.exit(context);
                              // },
                              child: const Text('Connect',
                              style: TextStyle(color: Colors.white)),
                              color: Appcolor.darkviolte,
                            ),
                          )
                      ],
                    ),
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

class Item {
  const Item(this.name);
  final String name;
}