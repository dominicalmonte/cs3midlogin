import 'package:flutter/material.dart';

class Posts{
  int id;
  //DateTime date_gmt;
  String title;
  String content;
  String excerpt;
  String imgURL;

  Posts({
    this.id = 0,
    //this.date_gmt = DateTime(2024, 10, 6, 22, 30, 46),,
    this.title = "",
    this.content = "",
    this.excerpt = "",
    this.imgURL = "",
  });

  static Posts fromJson(Map<String, dynamic> json){
    return Posts(
      id: json['id'] ?? 0,
      //date_gmt: DateTime.parse(json['date_gmt'] ?? '1970-01-01T00:00:00'), // Default if null
      title: json['title']['rendered'] ?? "",
      content: json['content']['rendered'] ?? "",
      excerpt: json['excerpt']['rendered'] ?? "",
      imgURL: json['link'] ?? "",
    );
  }
}