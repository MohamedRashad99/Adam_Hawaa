// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'constants.dart';

class OnBoardButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? title;
  final Color? color;
  // ignore: prefer_typing_uninitialized_variables
  final isLoading;
  // ignore: prefer_typing_uninitialized_variables
  final loadingColor;
  // ignore: use_key_in_widget_constructors
  const OnBoardButton(
      {@required this.onPressed,
        @required this.title,
        this.color,
        this.isLoading = false,
        this.loadingColor = false});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        height: height*0.03,
        width: width*0.05,
        decoration: BoxDecoration(
            color: color == null ? Colors.transparent : kSafeAreasColor,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.white, width: 1)),
        child: Center(
          child: isLoading != true
              ? Text(
              title!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'DinBold',
                  fontWeight: FontWeight.bold,
                  fontSize: 12
              ))
              : SpinKitChasingDots(
            size: 20,
            color: loadingColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
