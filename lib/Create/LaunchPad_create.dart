import 'dart:developer';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../config.dart';
import '../theme/appcolor.dart';

class LaunchPadCreate extends StatefulWidget {
  const LaunchPadCreate({Key? key}) : super(key: key);

  @override
  State<LaunchPadCreate> createState() => _LaunchPadCreateState();
}

enum OS { BNB, BUSD }

enum OS1 { threeBNB, twoBnB }

enum OS2 { Presale, Fair }

class Currency {
  String? name;
  int? index;
  Currency({this.name, this.index});
}

class _LaunchPadCreateState extends State<LaunchPadCreate> {
  // Default Radio Button Item
  String radioItem = 'BNB';

  // Group Value for Radio Button.
  int id = 1;

  List<Currency> CList = [
    Currency(
      index: 1,
      name: "BNB",
    ),
    Currency(
      index: 2,
      name: "BUSD",
    ),
  ];

  int? _groupValue;

  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    _focusNodes = Iterable<int>.generate(3).map((e) => FocusNode()).toList();

    _focusNodes[0].requestFocus();
  }

  Widget _buildItem(String text, int value) {
    return ListTile(
      title: Text(text),
      leading: Radio<int>(
        groupValue: _groupValue,
        value: value,
        onChanged: (int? value) {
          setState(() {
            _groupValue = value;
          });
        },
      ),
      // toggleable: true,
      // other arguments
    );
  }

  //
  OS? _os = OS.BNB;
  OS1? _os1 = OS1.threeBNB;
  OS2 _os2 = OS2.Presale;
  // String radioItem = '';
  int _currentStep = 0;

  final bool _isVerticalStepper = true;

  _stepTapped(int step) {
    setState(() => _currentStep = step);
  }

  _stepContinue() {
    log('login fuction');
    if (_formKey.currentState!.validate()) {
      log('validated');
      _formKey.currentState!.save();
      try {
        log('try');
        _currentStep < 3 ? setState(() => _currentStep += 1) : null;
      } catch (e) {
        log(e.toString());
      }
    }
  }

  // _stepContinue() {
  //    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  // }

  _stepCancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }

  final TextEditingController _address = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey3 = GlobalKey<FormState>();

  List<Step> getPresale() => [
        //1
        Step(
          title: Text(
            'Verify Token',
            style: TextStyle(
                color: currentTheme.isDark ? Colors.white : Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900),
          ),
          content: Form(
            key: _formKey,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Smart Contract Address *',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'To avoid errors, copy and paste your smartcontract address.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    height: 1.5,
                  ),
                  // controller: _desccontroller,
                  // minLines: 1,
                  // maxLines: 7,
                  validator: (String? tname) {
                    if (tname!.isEmpty) {
                      return '* Enter Token Name';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      hintText: 'Ex: 0x001EDAJJUIU2FBHHGG',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        height: 1.5,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Pool creation fee: 1 BNB',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.blue,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //rad1
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Currency *',
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 18,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'To avoid errors, copy and paste your smartcontract address.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.grey,
                    ),
                  ),
                ),

                //bu

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BNB'),
                //   value: 'Item 1',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BUSD'),
                //   value: 'Item 2',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                ListTile(
                    // contentPadding: null,
                    title: const Text('BNB'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS>(
                        value: OS.BNB,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                          });
                        },
                      ),
                    )),
                ListTile(
                    title: const Text('BUSD'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS>(
                        value: OS.BUSD,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                          });
                        },
                      ),
                    )),

                //cl
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Users will pay with BNB',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.blue,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //fee
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Fee Options *',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),

                //bu

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BNB'),
                //   value: 'Item 1',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BUSD'),
                //   value: 'Item 2',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                ListTile(
                    // contentPadding: null,
                    title: const Text('3% BNB raised only'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS1>(
                        value: OS1.threeBNB,
                        groupValue: _os1,
                        onChanged: (OS1? value) {
                          setState(() {
                            _os1 = value;
                          });
                        },
                      ),
                    )),

                ListTile(
                    // contentPadding: null,
                    title: const Text('2% BNB raised & 2% Token'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS1>(
                        value: OS1.twoBnB,
                        groupValue: _os1,
                        onChanged: (OS1? value) {
                          setState(() {
                            _os1 = value;
                          });
                        },
                      ),
                    )),

                //cl
                // const Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     'Users will pay with BNB',
                //     style: TextStyle(
                //       fontSize: 16,
                //       color: Colors.blue,
                //     ),
                //   ),
                // ),

                //pres
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Presale Type *',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Find out more about Presale type? Learn More',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                //bu

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BNB'),
                //   value: 'Item 1',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BUSD'),
                //   value: 'Item 2',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                ListTile(
                    // contentPadding: null,
                    title: const Text('Presale'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS2>(
                        value: OS2.Presale,
                        groupValue: _os2,
                        onChanged: (OS2? value) {
                          setState(() {
                            _os2 = value!;
                          });
                        },
                      ),
                    )),
                ListTile(
                    title: const Text('Fair Launch'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS>(
                        value: OS.BUSD,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                          });
                        },
                      ),
                    )),

                //cl
                // const Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     'Users will pay with BNB',
                //     style: TextStyle(
                //       fontSize: 16,
                //       color: Colors.blue,
                //     ),
                //   ),
                // ),

                //connectflat
                Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    // onPressed: _stepContinue,
                    onPressed: _stepContinue,
                    color: Appcolor.darkviolte,
                    child: const Text('Connect',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
        ),

        //2
        Step(
          title: Text(
            'Presale Information',
            style: TextStyle(
                color: currentTheme.isDark ? Colors.white : Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900),
          ),
          content: Form(
            key: _formKey1,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Smart Contract Address *',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'To avoid errors, copy and paste your smartcontract address.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    height: 1.5,
                  ),
                  // controller: _desccontroller,
                  // minLines: 1,
                  // maxLines: 7,
                  validator: (String? tname) {
                    if (tname!.isEmpty) {
                      return '* Enter Token Name';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      hintText: 'Ex: 0x001EDAJJUIU2FBHHGG',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        height: 1.5,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Pool creation fee: 1 BNB',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.blue,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //rad1
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Currency *',
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 18,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'To avoid errors, copy and paste your smartcontract address.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.grey,
                    ),
                  ),
                ),

                //bu

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BNB'),
                //   value: 'Item 1',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BUSD'),
                //   value: 'Item 2',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                ListTile(
                    // contentPadding: null,
                    title: const Text('BNB'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS>(
                        value: OS.BNB,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                          });
                        },
                      ),
                    )),
                ListTile(
                    title: const Text('BUSD'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS>(
                        value: OS.BUSD,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                          });
                        },
                      ),
                    )),

                //cl
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Users will pay with BNB',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.blue,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //fee
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Fee Options *',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),

                //bu

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BNB'),
                //   value: 'Item 1',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BUSD'),
                //   value: 'Item 2',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                ListTile(
                    // contentPadding: null,
                    title: const Text('3% BNB raised only'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS1>(
                        value: OS1.threeBNB,
                        groupValue: _os1,
                        onChanged: (OS1? value) {
                          setState(() {
                            _os1 = value;
                          });
                        },
                      ),
                    )),

                ListTile(
                    // contentPadding: null,
                    title: const Text('2% BNB raised & 2% Token'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS1>(
                        value: OS1.twoBnB,
                        groupValue: _os1,
                        onChanged: (OS1? value) {
                          setState(() {
                            _os1 = value;
                          });
                        },
                      ),
                    )),

                //cl
                // const Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     'Users will pay with BNB',
                //     style: TextStyle(
                //       fontSize: 16,
                //       color: Colors.blue,
                //     ),
                //   ),
                // ),

                //pres
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Presale Type *',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Find out more about Presale type? Learn More',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                //bu

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BNB'),
                //   value: 'Item 1',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BUSD'),
                //   value: 'Item 2',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                ListTile(
                    // contentPadding: null,
                    title: const Text('Presale'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS2>(
                        value: OS2.Presale,
                        groupValue: _os2,
                        onChanged: (OS2? value) {
                          setState(() {
                            _os2 = value!;
                          });
                        },
                      ),
                    )),
                ListTile(
                    title: const Text('Fair Launch'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS>(
                        value: OS.BUSD,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                          });
                        },
                      ),
                    )),

                //cl
                // const Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     'Users will pay with BNB',
                //     style: TextStyle(
                //       fontSize: 16,
                //       color: Colors.blue,
                //     ),
                //   ),
                // ),

                //connectflat
                Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    // onPressed: _stepContinue,
                    onPressed: _stepContinue,
                    color: Appcolor.darkviolte,
                    child: const Text('Connect',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
        ),

        //3
        Step(
          title: Text(
            'Project Information',
            style: TextStyle(
                color: currentTheme.isDark ? Colors.white : Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900),
          ),
          content: Form(
            key: _formKey2,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Smart Contract Address *',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'To avoid errors, copy and paste your smartcontract address.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    height: 1.5,
                  ),
                  // controller: _desccontroller,
                  // minLines: 1,
                  // maxLines: 7,
                  validator: (String? tname) {
                    if (tname!.isEmpty) {
                      return '* Enter Token Name';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      hintText: 'Ex: 0x001EDAJJUIU2FBHHGG',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        height: 1.5,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Pool creation fee: 1 BNB',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.blue,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //rad1
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Currency *',
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 18,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'To avoid errors, copy and paste your smartcontract address.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.grey,
                    ),
                  ),
                ),

                //bu

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BNB'),
                //   value: 'Item 1',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BUSD'),
                //   value: 'Item 2',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                ListTile(
                    // contentPadding: null,
                    title: const Text('BNB'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS>(
                        value: OS.BNB,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                          });
                        },
                      ),
                    )),
                ListTile(
                    title: const Text('BUSD'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS>(
                        value: OS.BUSD,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                          });
                        },
                      ),
                    )),

                //cl
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Users will pay with BNB',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.blue,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //fee
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Fee Options *',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),

                //bu

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BNB'),
                //   value: 'Item 1',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BUSD'),
                //   value: 'Item 2',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                ListTile(
                    // contentPadding: null,
                    title: const Text('3% BNB raised only'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS1>(
                        value: OS1.threeBNB,
                        groupValue: _os1,
                        onChanged: (OS1? value) {
                          setState(() {
                            _os1 = value;
                          });
                        },
                      ),
                    )),

                ListTile(
                    // contentPadding: null,
                    title: const Text('2% BNB raised & 2% Token'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS1>(
                        value: OS1.twoBnB,
                        groupValue: _os1,
                        onChanged: (OS1? value) {
                          setState(() {
                            _os1 = value;
                          });
                        },
                      ),
                    )),

                //cl
                // const Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     'Users will pay with BNB',
                //     style: TextStyle(
                //       fontSize: 16,
                //       color: Colors.blue,
                //     ),
                //   ),
                // ),

                //pres
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Presale Type *',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Find out more about Presale type? Learn More',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                //bu

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BNB'),
                //   value: 'Item 1',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BUSD'),
                //   value: 'Item 2',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                ListTile(
                    // contentPadding: null,
                    title: const Text('Presale'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS2>(
                        value: OS2.Presale,
                        groupValue: _os2,
                        onChanged: (OS2? value) {
                          setState(() {
                            _os2 = value!;
                          });
                        },
                      ),
                    )),
                ListTile(
                    title: const Text('Fair Launch'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS>(
                        value: OS.BUSD,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                          });
                        },
                      ),
                    )),

                //cl
                // const Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     'Users will pay with BNB',
                //     style: TextStyle(
                //       fontSize: 16,
                //       color: Colors.blue,
                //     ),
                //   ),
                // ),

                //connectflat
                Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    // onPressed: _stepContinue,
                    onPressed: _stepContinue,
                    color: Appcolor.darkviolte,
                    child: const Text('Connect',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
        ),

        //4
        Step(
          title: Text(
            'Finalize',
            style: TextStyle(
                color: currentTheme.isDark ? Colors.white : Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900),
          ),
          content: Form(
            key: _formKey3,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Smart Contract Address *',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'To avoid errors, copy and paste your smartcontract address.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    height: 1.5,
                  ),
                  // controller: _desccontroller,
                  // minLines: 1,
                  // maxLines: 7,
                  validator: (String? tname) {
                    if (tname!.isEmpty) {
                      return '* Enter Token Name';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      hintText: 'Ex: 0x001EDAJJUIU2FBHHGG',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        height: 1.5,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Pool creation fee: 1 BNB',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.blue,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //rad1
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Currency *',
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 18,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'To avoid errors, copy and paste your smartcontract address.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.grey,
                    ),
                  ),
                ),

                //bu

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BNB'),
                //   value: 'Item 1',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BUSD'),
                //   value: 'Item 2',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                ListTile(
                    // contentPadding: null,
                    title: const Text('BNB'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS>(
                        value: OS.BNB,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                          });
                        },
                      ),
                    )),
                ListTile(
                    title: const Text('BUSD'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS>(
                        value: OS.BUSD,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                          });
                        },
                      ),
                    )),

                //cl
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Users will pay with BNB',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.blue,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //fee
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Fee Options *',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),

                //bu

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BNB'),
                //   value: 'Item 1',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BUSD'),
                //   value: 'Item 2',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                ListTile(
                    // contentPadding: null,
                    title: const Text('3% BNB raised only'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS1>(
                        value: OS1.threeBNB,
                        groupValue: _os1,
                        onChanged: (OS1? value) {
                          setState(() {
                            _os1 = value;
                          });
                        },
                      ),
                    )),

                ListTile(
                    // contentPadding: null,
                    title: const Text('2% BNB raised & 2% Token'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS1>(
                        value: OS1.twoBnB,
                        groupValue: _os1,
                        onChanged: (OS1? value) {
                          setState(() {
                            _os1 = value;
                          });
                        },
                      ),
                    )),

                //cl
                // const Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     'Users will pay with BNB',
                //     style: TextStyle(
                //       fontSize: 16,
                //       color: Colors.blue,
                //     ),
                //   ),
                // ),

                //pres
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Presale Type *',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Find out more about Presale type? Learn More',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                //bu

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BNB'),
                //   value: 'Item 1',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                // RadioListTile(
                //   groupValue: radioItem,
                //   title: const Text('BUSD'),
                //   value: 'Item 2',
                //   onChanged: (val) {
                //     setState(() {
                //       radioItem = val.toString();
                //     });
                //   },
                // ),

                ListTile(
                    // contentPadding: null,
                    title: const Text('Presale'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS2>(
                        value: OS2.Presale,
                        groupValue: _os2,
                        onChanged: (OS2? value) {
                          setState(() {
                            _os2 = value!;
                          });
                        },
                      ),
                    )),
                ListTile(
                    title: const Text('Fair Launch'),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    leading: Transform.scale(
                      scale: 1,
                      child: Radio<OS>(
                        value: OS.BUSD,
                        groupValue: _os,
                        onChanged: (OS? value) {
                          setState(() {
                            _os = value;
                          });
                        },
                      ),
                    )),

                //cl
                // const Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     'Users will pay with BNB',
                //     style: TextStyle(
                //       fontSize: 16,
                //       color: Colors.blue,
                //     ),
                //   ),
                // ),

                //connectflat
                Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    // onPressed: _stepContinue,
                    onPressed: _stepContinue,
                    color: Appcolor.darkviolte,
                    child: const Text('Connect',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
        ),
      ];
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
              "Create Launchpad",
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
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

              //stepper

              Container(
                // width: double.infinity,
                // height: MediaQuery.of(context).size.height*0.90,
                // height: 900,
                decoration: BoxDecoration(
                  color: currentTheme.isDark ? Colors.black : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                ),
                child: Theme(
                  data: ThemeData(
                      canvasColor:
                          currentTheme.isDark ? Colors.black : Colors.white,
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                          primary: Colors.blue, onPrimary: Colors.purple
                          // background: Appcolor.darkviolte,
                          // secondary: Colors.green,
                          )
                      // .copyWith(primarySwatch: Colors.orange, secondary: Colors.orange),
                      ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      PageTransitionSwitcher(
                        duration: const Duration(seconds: 10),
                        transitionBuilder: (child, anim, sec) =>
                            SharedAxisTransition(
                          transitionType: SharedAxisTransitionType.horizontal,
                          animation: anim,
                          secondaryAnimation: sec,
                          child: child,
                        ),
                        child: Stepper(
                            controlsBuilder: (BuildContext context,
                                ControlsDetails details) {
                              return Row(
                                children: const <Widget>[],
                              );
                            },
                            elevation: 0.0,
                            // vertical or horizontial
                            type: StepperType.vertical,
                            // type: _isVerticalStepper
                            //     ? StepperType.vertical
                            //     : StepperType.horizontal,
                            physics: const ScrollPhysics(),
                            currentStep: _currentStep,
                            onStepTapped: (step) => _stepTapped(step),
                            onStepContinue: _stepContinue,
                            onStepCancel: _stepCancel,
                            steps: getPresale()),
                      ),
                    ],
                  ),
                ),
              ),

              //dis
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
            ],
          ),
        ),
      ),
    );
  }
}
