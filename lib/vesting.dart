import 'package:flutter/material.dart';

import 'config.dart';
import 'package:hami_launch/models/alertnetwork.dart';

class Vesting extends StatelessWidget {
  const Vesting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'There is a total vesting period of 12 months for Hami Token seeding round. Contributors will be able to claim the tokens partially from first month onwards as listed in the below table.',
                style: TextStyle(
                    color: currentTheme.isDark ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    letterSpacing: 1.0),
              ),
              const SizedBox(
                height: 20,
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.2,
              // ),
              Container(
                height: 40,
                color: Colors.blue,
                child: Row(
                  children: const [
                    Expanded(
                        child: Text(
                      'Period',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 1.6,
                          letterSpacing: 1.0),
                    )),
                    Expanded(
                        child: Text(
                      'Percentage',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 1.6,
                          letterSpacing: 1.0),
                    )),
                    Expanded(
                        child: Text(
                      'Unlock Time',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 1.6,
                          letterSpacing: 1.0),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.1,
              // ),
              Container(
                height: 500,
                // padding: const EdgeInsets.only(top: 20),
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 40,
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                Vesting1[index].Period,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    height: 1.6,
                                    letterSpacing: 1.0),
                              )),
                              Expanded(
                                  child: Text(
                                Vesting1[index].Percentage,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    height: 1.6,
                                    letterSpacing: 1.0),
                              )),
                              Expanded(
                                  child: Text(
                                Vesting1[index].Time,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    height: 1.6,
                                    letterSpacing: 1.0),
                              ))
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          color: Colors.grey,
                          height: 2,
                        );
                      },
                      itemCount: Vesting1.length),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
