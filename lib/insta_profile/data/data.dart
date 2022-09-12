import 'package:flutter/material.dart';

class Highlight {
  String? thumbnail;
  String? title;
  Highlight({this.thumbnail, this.title});
}

List<Highlight> highlightItems = [
  Highlight(thumbnail: 'assets/images/wallet3_2.png', title: "Terra"),
  Highlight(thumbnail: 'assets/images/paper.png', title: "luna"),
  Highlight(thumbnail: 'assets/images/keyringpro.jpg', title: "weth"),
  Highlight(thumbnail: 'assets/images/vision.png', title: "Polygan"),
  Highlight(thumbnail: 'assets/images/ricewallet.png', title: "etherium"),
  Highlight(thumbnail: 'assets/images/fireblocks.png', title: "Crypto"),
];