import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Igtv extends StatelessWidget {
  // const Igtv({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: Center
      (
        // child: Lottie.network('https://assets3.lottiefiles.com/packages/lf20_rc6CDU.json')
        child: Column(
          children: [
            Lottie.asset
            (
              'assets/lottie_anim/nodata_box.json',
              repeat: true
            ),
            // SizedBox
            // (
            //   height: 5,
            // ),

            Text
            (
              'No data Found !!!',
               style: TextStyle
                (
                  color: Colors.grey,
                  fontWeight: FontWeight.w900
                ),
            )
          ],
        ),
      ),
    );
  }
}