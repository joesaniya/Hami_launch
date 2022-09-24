import 'package:flutter/material.dart';
import 'package:hami_launch/widgets/token_widget1.dart';

import '../config.dart';

class ViewToken extends StatelessWidget {
  const ViewToken({Key? key}) : super(key: key);
  // var data = "0xc19999988888666";

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
              "HAMI",
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
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const ToeknWidget1(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.09),

            //disclaimer
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                // style: const TextStyle(color: Colors.black, fontSize: 36),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Disclaimer:',
                      style: TextStyle(
                          fontSize: 16,
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
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
    );
  }
}
