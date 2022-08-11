import 'package:flutter/cupertino.dart';
import '/theme/appcolor.dart';

class  NetworkModel{
  final String title;
  final String subtitle;
  final String image;

  NetworkModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<NetworkModel> network = <NetworkModel>[
  NetworkModel(
    title: 'Binance Smart Chain',
    subtitle:'',
    image: 'https://app.hami.live/static/media/bnb.36582179573789d51ad3.png',
    ),
  
  NetworkModel(
    title: 'Ethurum',
    subtitle:'Coming Soon',
    image: 'https://app.hami.live/static/media/bnb.36582179573789d51ad3.png',
    ),
];




class  TestModel{
  final String title;
  final String subtitle;
  final String image;

  TestModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<TestModel> test = <TestModel>[
  TestModel(
    title: 'Binance Smart Chain',
    subtitle:'',
    image: 'https://app.hami.live/static/media/bnb.36582179573789d51ad3.png',
    ),

];

