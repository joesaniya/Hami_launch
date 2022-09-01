import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hami_launch/theme/appcolor.dart';

class ShareAndEarn extends StatelessWidget {
  const ShareAndEarn({Key? key}) : super(key: key);

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
          'Refer & Earn',
          style: TextStyle
          (
            color: Colors.white
          ),
        ),
      ),

      body: ListView
      (
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: 
        [
          SizedBox
          (
            height: 40,
          ),

          Container
          (
            // height: 150,
            // width: 100,
            // width: double.infinity,
            child: Image(image: AssetImage('assets/images/piggy.png'),),
          ),

          SizedBox
          (
            height: 40,
          ),

          Text
          (
            'PIGIBANK CASH',
            style: TextStyle
            (
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox
          (
            height: 20,
          ),

          Text
          (
            '\$ 0.00',
            style: TextStyle
            (
              fontSize: 20,
              color: Color.fromARGB(255, 218, 212, 212),
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox
          (
            height: 40,
          ),

          Padding(
            padding: const EdgeInsets.only(left:40.0,right: 40),
            child: Text
            (
              'Copy and Paste your referal Links on any social Media platforms and Earn BNB while your Refered user Creates a Token or a Presale. Also Earn 1% of total BNB raised by any Presale or Fairlaunch you refered . get 0.03 BNB per tokens Created and get 0.20 BNB on Every presale that have created using your Referal Link. Here you can see how many people have joined and your earnings',
              style: TextStyle
              (
                fontSize: 15,
                color: Colors.grey,
                // fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                letterSpacing: 1.0
              ),
              textAlign: TextAlign.center,
              // textScaleFactor: 0.5,
            ),
          ),

          SizedBox
          (
            height: 40,
          ),
          Text
          (
            'YOUR REFERRAL CODE',
            style: TextStyle
            (
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox
          (
            height: 20,
          ),

          Center(
            child: DottedBorder(
              color: Colors.pinkAccent,
              strokeWidth: 1,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'BDEF4587',
                  style: TextStyle
                  (
                    color: Colors.pinkAccent,
                    fontSize: 25
                  ),
                ),
              ),
              // child: FlutterLogo(size: 148),
            ),
          ),

          SizedBox
          (
            height: 40,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(right:25.0),
          //   child: Align(
          //     alignment: Alignment.centerRight,
          //     child: FloatingActionButton
          //     (
          //       onPressed: () {},
          //       child: Icon(Icons.share, color: Colors.white, size: 29,),
          //       backgroundColor: Colors.pinkAccent,
          //       tooltip: 'share',
          //       elevation: 5,
          //       splashColor: Colors.grey,
            
          //     ),
          //   ),
          // ),

          SizedBox
          (
            height: 100,
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //           onPressed: () {},
      //           child: Icon(Icons.share, color: Colors.white, size: 29,),
      //           backgroundColor: Colors.pinkAccent,
      //           tooltip: 'share',
      //           elevation: 5,
      //           splashColor: Colors.grey,
      // ),
      // // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: buildSpeedDial(),

    );
  }

  SpeedDial buildSpeedDial() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      // AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 28.0),
      backgroundColor: Colors.pinkAccent,
      overlayColor: Colors.black,
      overlayOpacity: 0.4,
      // visible: true,
      // curve: Curves.bounceInOut,
      children: [
        SpeedDialChild(
          child: Icon(Icons.copy, color: Colors.white),
          backgroundColor: Colors.pinkAccent,
          onTap: () => print('Pressed Read Later'),
          label: 'Read',
          labelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Icon(Icons.mail, color: Colors.white),
          backgroundColor: Colors.pinkAccent,
          onTap: () => print('Pressed Write'),
          label: 'Mail',
          labelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Icon(FontAwesomeIcons.linkedin, color: Colors.white),
          backgroundColor: Colors.pinkAccent,
          onTap: () => print('Pressed Code'),
          label: 'LinkedIn',
          labelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Icon(FontAwesomeIcons.whatsapp, color: Colors.white),
          backgroundColor: Colors.pinkAccent,
          onTap: () => print('Pressed Code'),
          label: 'Whatsapp',
          labelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
      ],
    );
  }
}