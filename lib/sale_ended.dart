import 'package:flutter/material.dart';
import 'package:hami_launch/theme/appcolor.dart';

import 'config.dart';

class SaleEnded extends StatelessWidget {
  const SaleEnded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: BoxDecoration(
            color: currentTheme.isDark ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Sale Ended',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              // SizedBox(height: MediaQuery.of(context).size.height * 0.3)

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: SizedBox(
                    height: 100,
                    width: 50,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.grey.shade200,
                      elevation: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            '00',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 21,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'Days',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  )),

                  //2
                  Expanded(
                      child: SizedBox(
                    height: 100,
                    width: 50,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.grey.shade200,
                      elevation: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            '00',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 21,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'Hours',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  )),

                  //3
                  Expanded(
                      child: SizedBox(
                    height: 100,
                    width: 50,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.grey.shade200,
                      elevation: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            '00',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 21,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'Minutes',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  )),

                  //4
                  Expanded(
                      child: SizedBox(
                    height: 100,
                    width: 50,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Colors.grey.shade200,
                      elevation: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            '00',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 21,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'Seconds',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  )),
                ],
              ),

              //redeem
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(width: 2, color: Colors.grey.shade200)),
                  child: Center(
                    child: Text(
                      'Redeem',
                      style: TextStyle(
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                  ),
                ),
              ),

              //contri
              Row(
                children: [
                  Container(
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'Total Contributors - ',
                    style: TextStyle(color: Colors.grey, fontSize: 19),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '45',
                    style: TextStyle(
                        color:
                            currentTheme.isDark ? Colors.white : Colors.black,
                        fontSize: 21),
                  )
                ],
              ),

              //2
              Row(
                children: [
                  Container(
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'Total Fund Raised - ',
                    style: TextStyle(color: Colors.grey, fontSize: 19),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '70.21 BNB',
                    style: TextStyle(
                        color:
                            currentTheme.isDark ? Colors.white : Colors.black,
                        fontSize: 21),
                  )
                ],
              ),

              //3
              Row(
                children: [
                  Container(
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'Fund Raised in USD - ',
                    style: TextStyle(color: Colors.grey, fontSize: 19),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '\$ 19964.98',
                    style: TextStyle(
                        color:
                            currentTheme.isDark ? Colors.white : Colors.black,
                        fontSize: 21),
                  )
                ],
              ),

              //progreess
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Progress',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      // width: 300,
                      width: double.infinity,
                      height: 20,
                      // child: LinearPercentIndicator(
                      //   // width: MediaQuery.of(context)
                      //   //         .size
                      //   //         .width -
                      //   //     50,
                      //   width: 300,
                      //   animation: true,
                      //   lineHeight: 20.0,
                      //   animationDuration: 2000,
                      //   percent: 0.9,
                      //   linearStrokeCap:
                      //       LinearStrokeCap.roundAll,
                      //   progressColor: Colors.greenAccent,
                      // )
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                            value: 100.0,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                // Color(0xff00ff00)
                                Appcolor.darkgreen),
                            backgroundColor: Colors.grey.shade100
                            // const Color(0xffD6D6D6),
                            ),
                      ),
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: const [
                              Text(
                                'Hard Cap: ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                              Text(
                                '1220',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        // const Spacer(),
                        Container(
                          child: Row(
                            children: const [
                              Text(
                                'Soft Cap: ',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                              Text(
                                '2440',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
