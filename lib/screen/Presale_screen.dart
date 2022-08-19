import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Dialogbox/dialog_helper.dart';
import '../theme/appcolor.dart';

class Launchpad extends StatefulWidget {
  const Launchpad({Key? key}) : super(key: key);

  @override
  State<Launchpad> createState() => _LaunchpadState();
}

class _LaunchpadState extends State<Launchpad> {

  bool hide = true;

  int _activeStepIndex = 0;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();


  //
  TextEditingController _address = TextEditingController();

  List<Step> getPresale()=>
  [
    Step
    (
      title: const Text
       (
         'Verify Token',
          style: TextStyle
            (
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w900
            ),
       ),
      content: Column
      (
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
          SizedBox
          (
            height: 10,
          ),
          TextFormField
            (
              decoration:const InputDecoration
                (
                  focusedBorder: OutlineInputBorder
                  (
                      borderSide: BorderSide
                      (
                        color: Colors.white, width: 1.0
                      ),
                  ),
                  enabledBorder: OutlineInputBorder
                  (
                      borderSide: BorderSide
                      (
                        color: Colors.white, width: 1.0
                      ),
                  ),
                  errorBorder: OutlineInputBorder
                  (
                    borderSide: BorderSide
                      (
                        color: Colors.white, width: 1.0
                      ),
                  ),
                  labelText: 'Smartcontract Address',
                  labelStyle: TextStyle
                  (
                    color: Colors.white
                  )
                )
            ),

            SizedBox
            (
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: FlatButton(
                // onPressed: _stepContinue,
                onPressed: ()
                {
                  log('wallet connect');
                  DialogHelper2.exit(context);
                },
                child: const Text('Connect',
                style: TextStyle(color: Colors.white)),
                color: Appcolor.darkviolte,
              ),
            ),
        ],
      ),
      isActive: _currentStep >= 0,
      state: _currentStep >= 0? StepState.complete: StepState.disabled,
    ),
                      // The second step: Phone number
                      Step(
                        title: const Text
                        (
                          'Project Information',
                          style: TextStyle
                          (
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        content: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                  labelText: 'You mobile number'),
                            ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 1
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      // The third step: Verify phone number
                      Step(
                        title: const Text
                        (
                          'Presale Information',
                          style: TextStyle
                          (
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900
                          ),
                        ),
                        content: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: const InputDecoration(
                                  labelText: 'Verification code'),
                            ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 2
                            ? StepState.complete
                            : StepState.disabled,
                      ),
  ];

  //pre


  List<Step> getSteps()=>
  [
    Step
    (
      isActive: currentStep>=0,
      title: Text('Account'), 
      content: Container
      (
        
        height: MediaQuery.of(context).size.height*0.30,
        width: double.infinity,
        decoration: BoxDecoration
        (
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Appcolor.background
        ),
        child: Column
        (
          children: 
          [
            TextField(
                  controller: name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                  ),
                ),
          ],
        ),
      )
    ),
     Step
    (
      isActive: currentStep>=1,
      title: Text('Account'), 
      content: Container
      (
        height: MediaQuery.of(context).size.height*0.30,
        decoration: BoxDecoration
        (
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.red
        ),
        child: Column
        (
          children: 
          [
            TextField(
                  controller: name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                  ),
                ),
          ],
        ),
      )
    ),
     Step
    (
      isActive: currentStep>=2,
      title: Text('Account'), 
      content: Container()
    )
  ];

  int currentStep = 0;



///
  List<Step> stepList() => [
        Step(
          state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 0,
          title: const Text('Account'),
          content: Container(
            child: Column(
              children: [
                TextField(
                  controller: name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: email,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: pass,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ],
            ),
          ),
        ),
        Step(
            state:
                _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
            isActive: _activeStepIndex >= 1,
            title: const Text('Address'),
            content: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: address,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Full House Address',
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: pincode,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Pin Code',
                    ),
                  ),
                ],
              ),
            )),
        Step(
            state: StepState.complete,
            isActive: _activeStepIndex >= 2,
            title: const Text('Confirm'),
            content: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Name: ${name.text}'),
                Text('Email: ${email.text}'),
                const Text('Password: *****'),
                Text('Address : ${address.text}'),
                Text('PinCode : ${pincode.text}'),
              ],
            )))
      ];

      //kinda
        int _currentStep = 0;

        // Determines whether the stepper's orientation is vertical or horizontal
        // This variable can be changed by using the switch below
        bool _isVerticalStepper = true;

        // This function will be triggered when a step is tapped
        _stepTapped(int step) {
          setState(() => _currentStep = step);
        }

        // This function will be called when the continue button is tapped
        _stepContinue() {
          _currentStep < 2 ? setState(() => _currentStep += 1) : null;
        }

        // This function will be called when the cancel button is tapped
        _stepCancel() {
          _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
        }



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
          'Create Launchpad',
          style: TextStyle
          (
            color: Colors.white
          ),
        ),
      ),

      //kinda
      body: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20),
        child: Column(
          children: [
            Container
                (
                  height: MediaQuery.of(context).size.height*0.30,
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
                              'Create Launchpad',
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
                              'This is Create Launchpad',
                              style: TextStyle
                              (
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                              ),
                            ),

                        Container
                        (
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration
                          (
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Appcolor.darkviolte6
                          ),
                          child: Center(
                            child: Text
                              (
                                'Help',
                                style: TextStyle
                                (
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

            // Controls the stepper orientation
            // SwitchListTile(
            //     title: const Text('Vertical Stepper?'),
            //     subtitle: const Text('vertical/horizontal direction'),
            //     value: _isVerticalStepper,
            //     onChanged: (_) {
            //       setState(() {
            //         _isVerticalStepper = !_isVerticalStepper;
            //       });
            //     }),
            // const Divider(
            //   thickness: 2,
            //   height: 30,
            // ),

            SizedBox
            (
              height: 20,
            ),

            Expanded(
              // the Stepper widget
              child: Container(
                height: MediaQuery.of(context).size.height*0.40,
                // height: 900,
                decoration: BoxDecoration
                (
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Appcolor.background,
                ),
                child: Theme(
                  data: ThemeData
                  (
                    accentColor: Colors.orange,
                    primarySwatch: Colors.orange,
                    canvasColor: Appcolor.background,
                    colorScheme: Theme.of(context).colorScheme.copyWith(
                      primary: Colors.green,
                      onPrimary: Colors.pink
                      // background: Appcolor.darkviolte,
                      // secondary: Colors.green,
                    ),
                  ),
                  child: Stepper(
                     controlsBuilder: (BuildContext context, ControlsDetails details) {
                      return Row(
                    children: <Widget>[
                      // FlatButton(
                      //   onPressed: _stepContinue,
                      //   child: const Text('Connect',
                      //       style: TextStyle(color: Colors.white)),
                      //   color: Appcolor.darkviolte,
                      // ),
                      // new Padding(
                      //   padding: new EdgeInsets.all(10),
                      // ),
                      // FlatButton(
                      //   onPressed: _stepCancel,
                      //   child: Text(hide == true ? '' :'Cancel'),
                      //   // child: const Text(
                      //   //   'Zurück',
                      //   //   style: TextStyle(color: Colors.white),
                      //   // ),
                      //   color: hide == true ? Colors.transparent : Colors.amber,
                      // ),
                    ],
                  );
                      
                      // return Row(
                      //   children: <Widget>[
                      //     TextButton(
                      //       onPressed: details.onStepContinue,
                      //       child: Text(hide == false ? '' : 'Confirm'),
                      //     ),
                      //     TextButton(
                      //       onPressed: details.onStepCancel,
                      //       child: Text(hide == true ? '' :'Cancel'),
                      //     ),
                      //   ],
                      // );
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
                    steps: getPresale()
                  ),
                ),
              ),
            ),
            SizedBox
            (
              height: 20,
            ),
          ],
        ),
      ),


      // body: Container(
      //   // padding: const EdgeInsets.all(20),
      //   child: Stepper
      //     (
      //       type: StepperType.horizontal,
      //       steps: getSteps(),
      //       currentStep: currentStep,
      //       onStepContinue: ()
      //       {
      //         final isLastStep = currentStep ==getSteps().length -1;
      //         if(isLastStep)
      //         {
      //           log('completed');
      //         }
      //         else
      //         {
      //           setState(() => currentStep +=1);
      //         }
      //       },
      //       onStepCancel: currentStep ==0 ? null :()=>setState(() => currentStep -=1),
      //       // onStepCancel: () => setState(() => currentStep -=1)
      //     ),
      // ),


      // body: SingleChildScrollView
      // (
      //   child: Padding(
      //     padding: const EdgeInsets.only(left:20.0,right: 20),
      //     child: Column
      //     (
      //       children: 
      //       [
      //         Container
      //         (
      //           height: MediaQuery.of(context).size.height*0.30,
      //           width: double.infinity,
      //           decoration: BoxDecoration
      //           (
      //             borderRadius: BorderRadius.all(Radius.circular(10)),
      //             color: Appcolor.background
      //           ),
      //           child: Padding(
      //             padding: const EdgeInsets.only(left:20.0),
      //             child: Column
      //             (
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: 
      //               [
      //                 Row
      //                 (
      //                   children: 
      //                   [
      //                     Icon
      //                     (
      //                       FontAwesomeIcons.lightbulb,
      //                       color: Appcolor.darkviolte3,
      //                     ),
      //                     SizedBox
      //                     (
      //                       width: 10,
      //                     ),
      //                     Text
      //                     (
      //                       'Create Launchpad',
      //                       style: TextStyle
      //                       (
      //                         color: Colors.white,
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.w900
      //                       ),
      //                     ),
      //                     SizedBox
      //                     (
      //                       width: 5,
      //                     ),
      //                     Icon
      //                     (
      //                       Icons.help,
      //                       color: Colors.grey,
      //                     )
      //                   ],
      //                 ),
      //                 Text
      //                     (
      //                       'This is Create Launchpad',
      //                       style: TextStyle
      //                       (
      //                         color: Colors.white,
      //                         fontSize: 18,
      //                         fontWeight: FontWeight.w500
      //                       ),
      //                     ),

      //                 Container
      //                 (
      //                   height: 40,
      //                   width: 80,
      //                   decoration: BoxDecoration
      //                   (
      //                     borderRadius: BorderRadius.all(Radius.circular(10)),
      //                     color: Appcolor.darkviolte6
      //                   ),
      //                   child: Center(
      //                     child: Text
      //                       (
      //                         'Help',
      //                         style: TextStyle
      //                         (
      //                           color: Colors.white,
      //                           fontSize: 18,
      //                           fontWeight: FontWeight.w500
      //                         ),
      //                       ),
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),

      //         SizedBox
      //         (
      //           height: 20,
      //         ),
      //         Container
      //         (
      //           height: MediaQuery.of(context).size.height*0.90,
      //           width: double.infinity,
      //           decoration: BoxDecoration
      //           (
      //             borderRadius: BorderRadius.all(Radius.circular(10)),
      //             color: Appcolor.background
      //           ),
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               // GestureDetector(
      //               //   onTap: ()
      //               //   {
      //               //     log('connectWallet');
      //               //     DialogHelper.exit(context);
      //               //   },
      //               //   child: Container
      //               //   (
      //               //     height: 40,
      //               //     width: 160,
      //               //     decoration: BoxDecoration
      //               //       (
      //               //         borderRadius: BorderRadius.all(Radius.circular(10)),
      //               //         color: Appcolor.darkviolte6
      //               //       ),
      //               //       child: Center(
      //               //         child: Text
      //               //         (
      //               //           'Connect Wallet',
      //               //           style: TextStyle
      //               //           (
      //               //             color: Colors.white,
      //               //             fontSize: 18,
      //               //             fontWeight: FontWeight.w500
      //               //           ),
      //               //         ),
      //               //       ),
      //               //   ),
      //               // ),


      //               Stepper
      //               (
      //                 type: StepperType.horizontal,
      //                 steps: getSteps(),
      //               )

                   
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );


    
  }
}