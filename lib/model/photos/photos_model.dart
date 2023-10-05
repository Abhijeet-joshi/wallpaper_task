import 'package:flutter/material.dart';
import 'package:wallpaper_task/model/photos/src_image.dart';



class Photo_Model {
  String? alt;
  String? avg_color;
  int? height;
  int? id;
  bool? liked;
  String? photographer;
  int? photographer_id;
  String? photographer_url;

  Src_Images? src;
  String? url;
  int? width;

  Photo_Model(
      {this.alt,
      this.avg_color,
      this.height,
      this.id,
      this.liked,
      this.photographer,
      this.photographer_id,
      this.photographer_url,
      this.src,
      this.url,
      this.width});

  factory Photo_Model.fromjson(Map<String, dynamic> json) {
    return Photo_Model(
        alt: json['alt'],
        avg_color: json['avg_color'],
        height: json['height'],
        id: json['id'],
        liked: json['liked'],
        photographer: json['photographer'],
        photographer_id: json['photographer_id'],
        photographer_url: json['photographer_url'],
        src: Src_Images.fromjson(json['src']),
        url: json['url'],
        width: json['width']);
  }
}
