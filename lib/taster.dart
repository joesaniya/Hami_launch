import 'dart:developer';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toaster extends StatefulWidget {
  const Toaster({Key? key}) : super(key: key);

  @override
  State<Toaster> createState() => _ToasterState();
}

class _ToasterState extends State<Toaster> {
  final toast = FToast();

  @override
  void initState() {
    super.initState();
    toast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: showtoptoast(),
    );
  }

  showtoptoast() {
    log('showtotoat');
    toast.showToast(child: buildToast(), gravity: ToastGravity.BOTTOM);
  }
}

buildToast() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    decoration: BoxDecoration(
        color: Colors.deepPurple, borderRadius: BorderRadius.circular(30)),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(
          EvaIcons.copy,
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

// void showtoptoast() {
  //   log('showtotoat');
  //   toast.showToast(child: buildToast(), gravity: ToastGravity.BOTTOM);
  // }
