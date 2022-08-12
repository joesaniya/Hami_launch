import 'package:flutter/material.dart';

class HomeBanner{
  String? title;
  String? photo;
  List<Companies>? Companiess;


  HomeBanner({this.title,this.photo,this.Companiess});

  factory HomeBanner.fromJson(Map<String, Object> json) {
    return HomeBanner(
      title: json['title'].toString(),
      photo: json['photo'].toString(),
    );
  }

  static map(HomeBanner Function(dynamic data) param0) {}
}





class Companies {
  String? name;
  String? size;

  Companies({this.name, this.size});
  factory Companies.fromJson(Map<String, Object> json) => Companies(
        name: json['name'].toString(),
        size: json['size'].toString(),
      );

  Map<String, Object> toMap() {
    return {
      'name': name.toString(),
      'size': size.toString(),
    };
  }

  static List<Companies> toList(List<Map<String, Object>> json) {
    return List.from(json).map((e) => Companies(name: e['name'], size: e['size'])).toList();
  }
}

