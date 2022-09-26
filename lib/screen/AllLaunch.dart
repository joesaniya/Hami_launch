import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../config.dart';
import 'notification_widget.dart';

class LaunchPads extends StatefulWidget {
  const LaunchPads({Key? key}) : super(key: key);

  @override
  State<LaunchPads> createState() => _LaunchPadsState();
}

class _LaunchPadsState extends State<LaunchPads> {
  final List<String> items = [
    'All',
    'Trending',
    'Recent',
    'Upcoming',
    'Featured',
  ];

  String? selectedValue;
  String dropdownValue = 'ALL';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            children: [
              DropdownButtonFormField2(
                focusColor: Colors.purple,
                // focusColor: const Color.fromARGB(115, 230, 224, 224),
                decoration: InputDecoration(
                  //Add isDense true and zero Padding.
                  //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.purple),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(115, 230, 224, 224),
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  //Add more decoration as you want here
                  //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                ),
                isExpanded: true,
                hint: Text(
                  dropdownValue,
                  style: const TextStyle(fontSize: 14, color: Colors.deepPurple
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
                buttonPadding: const EdgeInsets.only(left: 20, right: 10),
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
                                fontSize: 14, color: Colors.deepPurpleAccent
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              // const NotificationWidget(),
              SizedBox(
                // height: 400,
                // width: double.infinity,
                child: dropdownValue == 'All'
                    ? const NotificationWidget()
                    : dropdownValue == 'Trending'
                        ? const NotificationWidget()
                        : dropdownValue == 'Recent'
                            ? const NotificationWidget()
                            : dropdownValue == 'Upcoming'
                                ? Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        LineIcons.rocket,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        'No LaunchPads Found',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900),
                                      )
                                    ],
                                  )
                                // Container(
                                //     height: 400,
                                //     width: double.infinity,
                                //     color: Colors.blue,
                                //   )
                                : const NotificationWidget(),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.09),

              //disclaimer
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
            ],
          ),
        ),
      ),
    );
  }
}
