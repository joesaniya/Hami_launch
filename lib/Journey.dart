import 'dart:async';
import 'dart:developer';

import 'package:animations/animations.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'config.dart';

class Journey extends StatefulWidget {
  const Journey({Key? key}) : super(key: key);

  @override
  State<Journey> createState() => _JourneyState();
}

class _JourneyState extends State<Journey> {
  var isVisible = false;

  double percent = 0.0;

  double? _height;
  double? _width;

  List<StepperData> stepperData = [
    StepperData(
      title: "Level 1",
      subtitle: "Hello",
    ),
    StepperData(
      title: "Spain",
      subtitle: "Hola",
    ),
    StepperData(
      title: "Turkey",
      subtitle: "Merhaba",
    ),
  ];

  int _currentStep = 0;

  final bool _isVerticalStepper = true;

  _stepTapped(int step) {
    setState(() => _currentStep = step);
  }

  _stepContinue() {
    log('login fuction');
  }

  // _stepContinue() {
  //    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  // }

  _stepCancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }

  List<Step> getPresale() => [
        Step(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LEVEL 1',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.3,
              // ),
              Text(
                'Presale Creation',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.3,
              // ),
              RichText(
                textScaleFactor: 1.0,
                text: TextSpan(
                    text: 'Create presale for',
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                        text: ' HAMI',
                        style: TextStyle(
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rewards',
                        style: TextStyle(
                            color: currentTheme.isDark
                                ? Colors.black12
                                : Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text('Get Trending badge for 3 days',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
            ],
          ),
          content: Column(),
          isActive: _currentStep >= 0,
          state: _currentStep >= 4 ? StepState.complete : StepState.disabled,
        ),

        //2
        Step(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LEVEL II',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.3,
              // ),
              Text(
                'KYC Verification',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.3,
              // ),
              RichText(
                textScaleFactor: 1.0,
                text: TextSpan(
                    text: 'Verify KYC for',
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                        text: ' HAMI',
                        style: TextStyle(
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rewards',
                        style: TextStyle(
                            color: currentTheme.isDark
                                ? Colors.black12
                                : Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                          'Get Verified Badge on Token profile for lifetime',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
            ],
          ),
          content: Column(),
          isActive: _currentStep >= 0,
          state: _currentStep >= 4 ? StepState.complete : StepState.disabled,
        ),

        //3
        Step(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LEVEL III',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.3,
              // ),
              Text(
                'Smartcontract Audit',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.3,
              // ),
              RichText(
                textScaleFactor: 1.0,
                text: TextSpan(
                    text: 'Smartcontract Audit for',
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                        text: ' HAMI',
                        style: TextStyle(
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rewards',
                        style: TextStyle(
                            color: currentTheme.isDark
                                ? Colors.black12
                                : Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                          'Get Audit Badge on Token profile for lifetime & 1 day on Sponsor list',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
            ],
          ),
          content: Column(),
          isActive: _currentStep >= 0,
          state: _currentStep >= 4 ? StepState.complete : StepState.disabled,
        ),

        //4
        Step(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LEVEL IV',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.3,
              // ),
              Text(
                'Spotlight',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.3,
              // ),
              RichText(
                textScaleFactor: 1.0,
                text: TextSpan(
                    text: 'Submit for Spotlight',
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                        text: ' HAMI',
                        style: TextStyle(
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rewards',
                        style: TextStyle(
                            color: currentTheme.isDark
                                ? Colors.black12
                                : Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                          'Get Spotlight Badge on Token profile for lifetime, 3 days on Trending list and banner ad for a day',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
            ],
          ),
          content: Column(),
          isActive: _currentStep >= 0,
          state: _currentStep >= 4 ? StepState.complete : StepState.disabled,
        ),
      ];

  @override
  void initState() {
    Timer? timer;
    timer = Timer.periodic(const Duration(milliseconds: 1000), (_) async {
      setState(() {
        percent += 10;
        if (percent >= 100) {
          timer!.cancel();
          // percent=0;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            child: Container(
                // padding: const EdgeInsets.all(15.0),
                // width: double.infinity,
                // height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  color: currentTheme.isDark ? Colors.black : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      // const Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 10.0),
                      // ),
                      // CircularPercentIndicator(
                      //   radius: 45.0,
                      //   lineWidth: 4.0,
                      //   percent: 0.30,
                      //   center: const Text("30%"),
                      //   progressColor: Colors.orange,
                      // ),
                      // const Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 10.0),
                      // ),
                      // CircularPercentIndicator(
                      //   radius: 45.0,
                      //   lineWidth: 4.0,
                      //   percent: 0.60,
                      //   center: const Text("60%"),
                      //   progressColor: Colors.yellow,
                      // ),
                      // const Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 10.0),
                      // ),
                      CircularPercentIndicator(
                        radius: 35.0,
                        lineWidth: 10.0,
                        percent: 0.75,
                        center: Text(
                          "75%",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        progressColor: Colors.pinkAccent,
                      ),

                      const SizedBox(
                        width: 5,
                      ),

                      Flexible(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Journey Towards Spotlight',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: currentTheme.isDark
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Complete below task to get Spotlight Badge & other Rewards',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        color:
                            currentTheme.isDark ? Colors.white : Colors.black,
                      ),
                    ],
                  ),
                )),
          ),

          //visi
          Visibility(
            visible: isVisible,
            child: Container(
              // width: double.infinity,
              // height: MediaQuery.of(context).size.height*0.90,
              // height: 900,
              decoration: BoxDecoration(
                color: currentTheme.isDark ? Colors.black : Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              ),
              child: Theme(
                data: ThemeData(
                    canvasColor:
                        currentTheme.isDark ? Colors.black : Colors.white,
                    colorScheme: Theme.of(context)
                        .colorScheme
                        .copyWith(primary: Colors.pink, onPrimary: Colors.pink
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
                          controlsBuilder:
                              (BuildContext context, ControlsDetails details) {
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
            // child: AnotherStepper(
            //   stepperList: stepperData,
            //   stepperDirection: Axis.vertical,
            //   horizontalStepperHeight: 70,
            //   dotWidget: Container(
            //     padding: const EdgeInsets.all(8),
            //     decoration: const BoxDecoration(
            //         color: Colors.red,
            //         borderRadius: BorderRadius.all(Radius.circular(30))),
            //     child: const Icon(Icons.fastfood, color: Colors.white),
            //   ),
            //   activeBarColor: Colors.red,
            //   inActiveBarColor: Colors.grey,
            //   activeIndex: 2,
            //   barThickness: 8,
            // )
          )
        ],
      ),
    );

    //visibility
  }
}
