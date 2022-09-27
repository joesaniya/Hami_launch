import 'dart:developer';

import 'package:flutter/material.dart';

import '../Dialogbox/dialog_helper.dart';
import '../config.dart';
import '../theme/appcolor.dart';

class CreateTokenProfile extends StatefulWidget {
  const CreateTokenProfile({Key? key}) : super(key: key);

  @override
  State<CreateTokenProfile> createState() => _CreateTokenProfileState();
}

class _CreateTokenProfileState extends State<CreateTokenProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
              "Create Token Profile",
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
                  height: MediaQuery.of(context).size.height * 0.30,
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
                                'Smartcontract Address *',
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
                                'Enter you Token address here. We Automatically import your Token to Hami Launchpad *',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey
                                        // color: currentTheme.isDark
                                        //     ? Colors.white
                                        //     : Colors.black,
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
                                onPressed: () {},
                                color: Appcolor.darkviolte,
                                // onPressed: ()
                                // {
                                //   log('wallet connect');
                                //   DialogHelper3.exit(context);
                                // },
                                child: const Text('Create',
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
