import 'package:flutter/material.dart';

class Company
{
  String image;
  String title;
  String Subtitle;
  String number;

  Company
  (
    {
      required this.image,
      required this.title,
      required this.Subtitle,
      required this.number,
    }
  );

  factory Company.fromJson(Map<String, Object> json) 
  {
    return Company
    (
      image: json['image'].toString(), 
      title: json['title'].toString(), 
      Subtitle: json['Subtitle'].toString(), 
      number: json['number'].toString()
    );
  }
}