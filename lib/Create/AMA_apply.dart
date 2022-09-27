import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../Dialogbox/dialog_helper.dart';
import '../config.dart';
import '../theme/appcolor.dart';

class AMAApply extends StatefulWidget {
  const AMAApply({Key? key}) : super(key: key);

  @override
  State<AMAApply> createState() => _AMAApplyState();
}

class _AMAApplyState extends State<AMAApply> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController website =
      TextEditingController(text: "Hani Telegram Group");

  final List<String> items = [
    'LP Token',
    'Liquidity Generator Token',
  ];

  String? selectedValue;
  String dropdownValue = 'ALL';
  DateTime? _selectedDate;
  final TextEditingController _datecont = TextEditingController();

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

  //Method for showing the date picker
  void _pickDateDialog() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            //which date will display when user open the picker
            firstDate: DateTime(1950),
            //what will be the previous supported year in picker
            lastDate: DateTime
                .now()) //what will be the up to supported date in picker
        .then((pickedDate) {
      //then usually do the future job
      if (pickedDate == null) {
        //if user tap cancel then this function will stop
        return;
      }
      setState(() {
        //for rebuilding the ui
        _selectedDate = pickedDate;
      });
    });
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
              "Apply For AMA",
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
                  height: MediaQuery.of(context).size.height * 0.80,
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

                            //date
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Date and Time *',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Enter the date and time you wish to start AMA',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ),

                            GestureDetector(
                              onTap: _pickDateDialog,
                              child: Container(
                                width: double.infinity,
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(width: 2, color: Colors.grey),
                                  color: Colors.transparent,
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      _selectedDate ==
                                              null //ternary expression to check if date is null
                                          ? 'No date was chosen!'
                                          :
                                          // 'Your Selected Date: $_selectedDate',
                                          'Picked Date: ',
                                      // ${DateFormat.yMMMd().format(_selectedDate)}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: currentTheme.isDark
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                    // Text(
                                    //   'Hami Telegram Group',
                                    //   style: TextStyle(
                                    //     fontSize: 18,
                                    //     color: currentTheme.isDark
                                    //         ? Colors.white
                                    //         : Colors.black,
                                    //   ),
                                    // ),
                                    const Icon(
                                      Icons.arrow_circle_down,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            ),

                            TextFormField(
                                controller: _datecont,
                                style: TextStyle(
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                validator: (String? address) {
                                  if (address!.isEmpty) {
                                    return '* Please enter date and time';
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
                                    labelText: 'Transaction Id',
                                    labelStyle: TextStyle(color: Colors.grey))),
                            //venue
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Venue *',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(width: 2, color: Colors.grey),
                                color: Colors.transparent,
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                'Hami Telegram Group',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),

                            //tr
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Transaction Id *',
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
                                    return '* Please enter Transaction Id';
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
                                    labelText: 'Transaction Id',
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
                                child: const Text('Submit',
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
