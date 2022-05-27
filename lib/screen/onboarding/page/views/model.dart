import 'package:flutter/cupertino.dart';

class BoardingModel {
  final String image;
  final String icon;
  final String title;
  final Widget button;

  BoardingModel( {
    required this.icon,
    required this.button,

    required this.image,
    required this.title,
  });
}
