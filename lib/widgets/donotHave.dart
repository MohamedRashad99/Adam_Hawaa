// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'constants.dart';

class DoNotHave extends StatelessWidget {
  final String? text;
  final String? have;
  final VoidCallback? route;
  // ignore: use_key_in_widget_constructors
  const DoNotHave({required this.text,required this.route,required this.have});
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
      //  mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: width*0.04),
          Text(have!,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: "DinLight",
                color: kBlackText,
                fontWeight: FontWeight.bold
              )),
          GestureDetector(
            onTap: route,
            child: Text(text!,
                style: const TextStyle(
                  fontSize: 14,
                    decoration: TextDecoration.underline,
                  fontFamily: "DinMedium",
                  color: kBlackText,
                    fontWeight: FontWeight.bold
                )),
          ),
        ],
      ),
    );
  }
}
