import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../Dialogbox/dialog_helper.dart';
import '../config.dart';
import '../theme/appcolor.dart';

class LockCreate extends StatefulWidget {
  const LockCreate({Key? key}) : super(key: key);

  @override
  State<LockCreate> createState() => _LockCreateState();
}

class _LockCreateState extends State<LockCreate> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final List<String> items = [
    'All',
    'Trending',
    'Recent',
    'Upcoming',
    'Featured',
  ];

  String? selectedValue;
  String dropdownValue = 'ALL';

  Connect() {
    log('connected');
    if (_formKey.currentState!.validate()) {
      log('validated');
      _formKey.currentState!.save();
      try {
        log('wallet connect');
        DialogHelper3.exit(context);
      } catch (e) {
        log(e.toString());
        // showError(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey.shade200,
              ),
            ),
          ),
          child: AppBar(
            backgroundColor: currentTheme.isDark ? Colors.black : Colors.white,
            // backgroundColor: Appcolor.darkviolte6,
            // backgroundColor: currentTheme.isDark ? Colors.white : Colors.black,
            title: Text(
              "Create Lock",
              style: TextStyle(
                  color: currentTheme.isDark ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            centerTitle: false,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: currentTheme.isDark ? Colors.white : Colors.black,
              ),
            ),
            elevation: 0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: currentTheme.isDark ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Token Type *',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),

                            //drop

                            DropdownButtonFormField2(
                              focusColor: Colors.purple,
                              // focusColor: const Color.fromARGB(115, 230, 224, 224),
                              decoration: InputDecoration(
                                //Add isDense true and zero Padding.
                                //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.purple),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(115, 230, 224, 224),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                //Add more decoration as you want here
                                //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                              ),
                              isExpanded: true,
                              hint: Text(
                                dropdownValue,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.deepPurple
                                    // color: Color.fromARGB(115, 230, 224, 224),
                                    ),
                              ),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: currentTheme.isDark
                                    ? Colors.deepPurple
                                    : Colors.deepPurple,
                                // color: Color.fromARGB(115, 230, 224, 224),
                              ),
                              iconSize: 30,
                              buttonHeight: 60,
                              buttonPadding:
                                  const EdgeInsets.only(left: 20, right: 10),
                              dropdownDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  // color: Appcolor.background,
                                  color: Colors.grey.shade100),
                              items: items
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              color: Colors.deepPurpleAccent
                                              // color: Color.fromARGB(115, 230, 224, 224),
                                              ),
                                        ),
                                      ))
                                  .toList(),
                              validator: (value) {
                                if (value == null) {
                                  return 'Please select gender.';
                                }
                                return null;
                              },
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                  log(newValue);
                                });
                              },
                              // onChanged: (value) {
                              //   //Do something when changing the item if you want.
                              // },
                              // onSaved: (value) {
                              //   selectedValue = value.toString();
                              // },
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Smartcontract Address *',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                            TextFormField(
                                style: TextStyle(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                validator: (String? address) {
                                  if (address!.isEmpty) {
                                    return '* Please enter smartContract Address';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                    errorStyle: TextStyle(color: Colors.orange),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1.0),
                                    ),
                                    labelText: 'Smartcontract Address',
                                    labelStyle: TextStyle(color: Colors.grey))),
                            Align(
                              alignment: Alignment.centerRight,
                              child: FlatButton(
                                // onPressed: _stepContinue,
                                onPressed: Connect,
                                color: Appcolor.darkviolte,
                                // onPressed: ()
                                // {
                                //   log('wallet connect');
                                //   DialogHelper3.exit(context);
                                // },
                                child: const Text('Connect',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    // style: const TextStyle(color: Colors.black, fontSize: 36),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Disclaimer:',
                          style: TextStyle(
                              fontSize: 16,
                              color: currentTheme.isDark
                                  ? Colors.white
                                  : Colors.black,
                              height: 1.5)),
                      // const TextSpan(text: 'dot '),
                      const TextSpan(
                          text:
                              'The information provided shall not in any way constitute a recommendation as to whether you should invest in any product discussed. We accept no liability for any loss occasioned to any person acting or refraining from action as a result of any material provided or published.',
                          style: TextStyle(
                              color: Colors.grey, fontSize: 16, height: 1.5
                              // decoration: TextDecoration.underline
                              ))
                    ],
                  ),
                  // textScaleFactor: 0.5,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.09),
              ]),
        ),
      ),
    );
  }
}
