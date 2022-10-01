import 'dart:developer';

import 'package:dotted_border/dotted_border.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../config.dart';

enum SocialMedia { facebook, email, whatsapp, linkedin }

class ShareAndEarn extends StatefulWidget {
  const ShareAndEarn({Key? key}) : super(key: key);

  @override
  State<ShareAndEarn> createState() => _ShareAndEarnState();
}

class _ShareAndEarnState extends State<ShareAndEarn> {
//   FlutterToast flutterToast;

// @override
// void initState() {
//     super.initState();
//     flutterToast = FlutterToast(context);
// }

  late Future<void> _launched;
  final String _launchUrl = 'https://www.google.com';

  Future<void> _launchInApp(String url) async {
    if (await canLaunch(url)) {
      await launch(url,
          forceSafariVC: true,
          forceWebView: true,
          headers: <String, String>{'header_key': 'header_value'});
    } else {
      log('could not launch $url');
      throw 'could not launch $url';
    }
  }

  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(url, forceSafariVC: true);
      }
    }
  }

  Future Share(SocialMedia socialPlatform) async {
    log('share opened');
    const code = 'BDEF4587';
    const text = 'Hami launch,refer nd earnn';
    final urlShare = Uri.encodeComponent('https://youtu.be/-_k1xboISQ0');

    final urls = {
      SocialMedia.email: 'mailto:?subject=$code&body=$text',
      SocialMedia.linkedin:
          'https://linkedin.com/shareArticle?mini=true&url=$urlShare',
      // SocialMedia.whatsapp:'https://youtu.be/2yNns0NiE2A',
      SocialMedia.whatsapp: 'https:api.whatsapp.com/send?text=$text$urlShare'
    };
    final url = urls[socialPlatform]!;

    if (await canLaunch(url)) {
      await launch(
        url,
        // forceSafariVC: true,
        // forceWebView: true,
        // headers: <String, String>
        // {
        //   'header_key':'header_value'
        // }
      );
    } else {
      log('could not launch $url');
      throw 'could not launch $url';
    }
  }

  final toast = FToast();

  @override
  void initState() {
    super.initState();
    toast.init(context);
  }

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
              "Share And Earn",
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

      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: currentTheme.isDark ? Colors.black : Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  // height: 150,
                  // width: 100,
                  // width: double.infinity,
                  child: const Image(
                    image: AssetImage('assets/images/sh.png'),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Text(
                  'PIGIBANK CASH',
                  style: TextStyle(
                      fontSize: 20,
                      color: currentTheme.isDark ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '\$ 0.00',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 218, 212, 212),
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 40.0, right: 40),
                  child: Text(
                    'Copy and Paste your referal Links on any social Media platforms and Earn BNB while your Refered user Creates a Token or a Presale. Also Earn 1% of total BNB raised by any Presale or Fairlaunch you refered . get 0.03 BNB per tokens Created and get 0.20 BNB on Every presale that have created using your Referal Link. Here you can see how many people have joined and your earnings',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        // fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.0),
                    textAlign: TextAlign.center,
                    // textScaleFactor: 0.5,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'YOUR REFERRAL CODE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w900),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: DottedBorder(
                    color: Colors.pinkAccent,
                    strokeWidth: 1,
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'BDEF4587',
                        style:
                            TextStyle(color: Colors.pinkAccent, fontSize: 25),
                      ),
                    ),
                    // child: FlutterLogo(size: 148),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ),

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
                    style:
                        TextStyle(color: Colors.grey, fontSize: 16, height: 1.5
                            // decoration: TextDecoration.underline
                            ))
              ],
            ),
            // textScaleFactor: 0.5,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.09),
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
      animatedIconTheme: const IconThemeData(size: 28.0),
      backgroundColor: Colors.deepPurple,
      overlayColor: Colors.black,
      overlayOpacity: 0.4,
      // visible: true,
      // curve: Curves.bounceInOut,
      children: [
        SpeedDialChild(
          child: const Icon(Icons.copy, color: Colors.white),
          backgroundColor: Colors.deepPurple,
          onTap: () {
            log('read clicked');
            // _launchInApp(_launchUrl);
            Clipboard.setData(const ClipboardData(text: 'BDEF4587')).then((_) {
              // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              //     content: Text("Referral code copied to clipboard")));

              // const Toaster();
              showtoptoast();
            });
          },
          label: 'Read',
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: const Icon(Icons.mail, color: Colors.white),
          backgroundColor: Colors.deepPurple,
          onTap: () {
            log('mail clicked');
            Share(SocialMedia.email);
          },
          label: 'Mail',
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: const Icon(FontAwesomeIcons.linkedin, color: Colors.white),
          backgroundColor: Colors.deepPurple,
          // onTap: () => print('Pressed Code'),
          onTap: () {
            log('linkedin clicked');
            Share(SocialMedia.linkedin);
          },
          label: 'LinkedIn',
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: const Icon(FontAwesomeIcons.whatsapp, color: Colors.white),
          backgroundColor: Colors.deepPurple,
          // onTap: () => print('Pressed Code'),
          onTap: () {
            log('whatsapp clicked');
            Share(SocialMedia.whatsapp);
          },
          label: 'Whatsapp',
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
      ],
    );
  }

//   _showToast() {
//     // this will be our toast UI
//     Widget toast = Container(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
//         decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(25.0),
//         color: Colors.greenAccent,
//         ),
//         child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//             Icon(Icons.check),
//             SizedBox(
//             width: 12.0,
//             ),
//             Text("This is a Custom Toast"),
//         ],
//         ),
//     );

//     flutterToast.showToast(
//         child: toast,
//         gravity: ToastGravity.BOTTOM,
//         toastDuration: Duration(seconds: 2),
//     );
// }

  void showToast() => Fluttertoast.showToast(
      msg: 'copied',
      fontSize: 18,
      gravity: ToastGravity.TOP,
      backgroundColor: Colors.deepPurple,
      textColor: Colors.white);

  void showtoptoast() {
    log('showtotoat');
    toast.showToast(child: buildToast(), gravity: ToastGravity.BOTTOM);
  }

  Widget buildToast() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              EvaIcons.doneAll,
              color: Colors.white,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'Referal Code Copied',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      );
}
