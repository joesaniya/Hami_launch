import 'dart:developer';

import 'package:flutter/material.dart';
import '../config.dart';
import 'dialog_helper.dart';

class CompanyDialog extends StatefulWidget {
  const CompanyDialog({Key? key}) : super(key: key);

  @override
  State<CompanyDialog> createState() => _CompanyDialogState();
}

class _CompanyDialogState extends State<CompanyDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
        height: 370,
        decoration: BoxDecoration(
            // color: Colors.white,
            color: currentTheme.isDark ? Colors.black : Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                // height: 150,
                height: MediaQuery.of(context).size.height * 0.10,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    // Image(image: NetworkImage('https://app.hami.live/static/media/meta-mask.908a7bd02e43908895d8.png')),
                    const Image(
                        image: AssetImage('assets/images/lion_meta.png')),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Meta Mask',
                      style: TextStyle(
                          fontSize: 20,
                          color:
                              currentTheme.isDark ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                log('walletchoose');
                DialogHelper2.exit(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  // height: 150,
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Image(
                          image: AssetImage('assets/images/walletconnect.png')),
                      // Image(image: NetworkImage
                      // (
                      //   'assets/images/lion_meta.png'
                      //   // 'assets/images/walletconnect.png'
                      // )),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Wallet Connect',
                        style: TextStyle(
                            fontSize: 20,
                            color: currentTheme.isDark
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.white24,
              // color: Colors.black12,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20.0),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text: 'By Connecting your wallet, you agree to the',
                  style: TextStyle(
                      color: currentTheme.isDark
                          ? Colors.white.withOpacity(0.6)
                          : Colors.black.withOpacity(0.6),
                      // color: Colors.white.withOpacity(0.6),
                      // color: Colors.black.withOpacity(0.6),
                      height: 150 / 100),
                  children: [
                    TextSpan(
                      text: ' By Connecting your wallet, you agree to the ',
                      style: TextStyle(
                          color: currentTheme.isDark
                              ? Colors.white.withOpacity(0.6)
                              : Colors.black.withOpacity(0.6),
                          // color: Colors.black.withOpacity(0.6),
                          fontWeight: FontWeight.w700,
                          height: 150 / 100),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: TextStyle(
                          color: currentTheme.isDark
                              ? Colors.white.withOpacity(0.6)
                              : Colors.black.withOpacity(0.6),
                          // color: Colors.black.withOpacity(0.6),
                          height: 150 / 100),
                    ),
                    TextSpan(
                      text: 'Privacy policy.',
                      style: TextStyle(
                          color: currentTheme.isDark
                              ? Colors.white.withOpacity(0.6)
                              : Colors.black.withOpacity(0.6),
                          // color: Colors.black.withOpacity(0.6),
                          fontWeight: FontWeight.w700,
                          height: 150 / 100),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      );
}
