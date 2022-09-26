import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../config.dart';

class ExitConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.grey,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
        height: 380,
        decoration: const BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child:
                    Lottie.asset('assets/lottie_anim/wrong.json', repeat: true),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Oops....',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16),
              child: Text(
                'jwt must be provided',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: currentTheme.isDark ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            // Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: <Widget>[
            //     FlatButton(
            //       onPressed: () {
            //         Navigator.of(context).pop();
            //       },
            //       textColor: Colors.white,
            //       child: Text('No'),
            //     ),
            //     const SizedBox(
            //       width: 8,
            //     ),
            //     RaisedButton(
            //       onPressed: () {
            //         return Navigator.of(context).pop(true);
            //       },
            //       color: Colors.white,
            //       textColor: Colors.redAccent,
            //       child: Text('Yes'),
            //     )
            //   ],
            // )
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.deepPurple),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.purple),
                child: const Center(
                  child: Text(
                    'Ok',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ),
      );
}
