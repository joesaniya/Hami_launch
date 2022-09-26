import 'package:flutter/material.dart';

import 'config.dart';

class ClaimToken extends StatelessWidget {
  const ClaimToken({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'No data!!',
              style: TextStyle(
                  color: currentTheme.isDark ? Colors.white : Colors.black,
                  height: 1.6,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0),
            ),
          ],
        ),
      )),
    );
  }
}
