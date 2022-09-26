import 'package:flutter/material.dart';

import '../config.dart';

class Poststab extends StatelessWidget {
  const Poststab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.03,
            // ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(8)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: const Image(
                  image: AssetImage('assets/images/launch_bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'What is HAMI?',
              style: TextStyle(
                  color: currentTheme.isDark ? Colors.white : Colors.black,
                  height: 1.6,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.0),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'HAMI NETWORK',
              style: TextStyle(
                  color: Colors.grey,
                  height: 1.6,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.0),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'One ground-breaking concept that has the potential to be very influential in the crypto arena is HAMI,',
              style: TextStyle(
                  color: Colors.grey,
                  height: 1.6,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.0),
            ),
          ],
        ),
      ),
    );
  }
}
