import 'package:flutter/material.dart';

class Highlight {
  String? thumbnail;
  String? title;
  Highlight({this.thumbnail, this.title});
}

List<Highlight> highlightItems = [
  Highlight(thumbnail: 'assets/images/logo.png', title: "Terra"),
  Highlight(thumbnail: 'assets/images/logo.png', title: "luna"),
  Highlight(thumbnail: 'assets/images/logo.png', title: "weth"),
  Highlight(thumbnail: 'assets/images/logo.png', title: "Polygan"),
  Highlight(thumbnail: 'assets/images/logo.png', title: "etherium"),
  Highlight(thumbnail: 'assets/images/logo.png', title: "Crypto"),
];