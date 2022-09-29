import 'package:flutter/material.dart';

import '../theme/appcolor.dart';

class REusecardToken extends StatelessWidget {
// REusecardToken({Key? key}) : super(key: key);

  final String Profileimage;
  final String title;
  final String subtitle;
  final String Supply;
  final String locked;
  final String date;
  const REusecardToken(
      {required this.Profileimage,
      required this.title,
      required this.subtitle,
      required this.Supply,
      required this.date,
      required this.locked});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 150,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Appcolor.whiteSoft,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            // Recipe Photo
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blueGrey,
                image: DecorationImage(
                    image: AssetImage(Profileimage), fit: BoxFit.cover),
              ),
            ),
            // Recipe Info
            Flexible(
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Recipe title
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontFamily: 'inter'),
                      ),
                    ),
                    // Recipe Calories and Time
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          // child:Text(calories!=null?calories:'$calories'),
                          child: const Text(
                            'calories.toString()',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.alarm,
                          size: 14,
                          color: Colors.black,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: const Text(
                            'duration.toString()',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
