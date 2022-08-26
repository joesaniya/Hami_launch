import 'package:flutter/material.dart';

class ReuseSkelton extends StatelessWidget {
  ReuseSkelton({this.height,this.width});

 final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(16 / 2),
      decoration: BoxDecoration(
        color: Colors.green,
          // color: Colors.black.withOpacity(0.04),
          borderRadius:
              BorderRadius.all(Radius.circular(16))),
    );
  }
}