import 'package:flutter/material.dart';

class QRCode extends StatefulWidget {
  const QRCode({Key? key}) : super(key: key);

  @override
  State<QRCode> createState() => _QRCodeState();
}

class _QRCodeState extends State<QRCode> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView
    (
      child: Column
      (
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: 
        [
          SizedBox
          (
            height: 20,
          ),
          Text
          (
            'Scan QR code with a WalletConnect-compatible wallet',
            style: TextStyle
            (
              color: Colors.grey
            ),
          ),
          SizedBox
          (
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20),
            child: Container
            (
              height: MediaQuery.of(context).size.height*0.40,
              width: double.infinity,
              // color: Colors.blue,
              child: Image
              (
                image: AssetImage('assets/images/qr.png')
              ),
            ),
          ),
          SizedBox
          (
            height: 20,
          ),
          Text
          (
            'Copy To Clipboard',
            style: TextStyle
            (
              color: Colors.grey
            ),
          ),
        ],
      ),
    );
  }
}