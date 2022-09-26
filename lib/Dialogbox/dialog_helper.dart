import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hami_launch/Dialogbox/Wallet_select.dart';
import 'package:hami_launch/Dialogbox/exit_wrong_correct.dart';
import 'package:hami_launch/Dialogbox/walletconnect.dart';
import '/Dialogbox/Company_dialog.dart';
import '/Dialogbox/networkdialog.dart';

class DialogHelper {
  static exit(context) => showDialog(
      context: context,
      builder: (context) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: const CompanyDialog()));
}

class DialogHelper1 {
  static exit(context) => showDialog(
      context: context,
      builder: (context) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: NetworkDialog()));
}

class DialogHelper2 {
  static exit(context) => showDialog(
      context: context,
      builder: (context) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: const WalletConnect()));
}

class DialogHelper3 {
  static exit(context) => showDialog(
      context: context,
      builder: (context) => BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: const WalletSElect()));
}

class DialogHelperWrong {
  static exit(context) => showDialog(
      context: context, builder: (context) => ExitConfirmationDialog());
}
