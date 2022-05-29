
import 'package:adam_and_eve/widgets/constants.dart';
import 'package:adam_and_eve/widgets/customButton.dart';
import 'package:adam_and_eve/widgets/customTextFeild.dart';
import 'package:adam_and_eve/widgets/donotHave.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queen/validation.dart';

import '../../../../widgets/appBar.dart';


class ReversingScreen extends StatelessWidget {
  const ReversingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kHomeColor,
      appBar: customAppbar(title: "الحجوزات  ", isIcons: true),
      body: SizedBox(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset("assets/image/LogoN.png"),

            ],
          )),
    );
  }
}
