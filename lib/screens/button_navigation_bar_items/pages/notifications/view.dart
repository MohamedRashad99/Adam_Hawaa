import 'package:adam_and_eve/widgets/constants.dart';
import 'package:adam_and_eve/widgets/customButton.dart';
import 'package:adam_and_eve/widgets/customTextFeild.dart';
import 'package:adam_and_eve/widgets/donotHave.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queen/validation.dart';

import '../../../../widgets/appBar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kHomeColor,
      appBar: customAppbar(title: "الاشعارات  ", isIcons: true),
      body: SizedBox(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                width: width * 0.8,
                height: height * 0.1,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: kShadow2Color.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ], color: kHomeColor, borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  // ignore: sized_box_for_whitespace
                  leading: Container(
                    width: width * 0.1,
                    height: height * 0.08,
                    child: Image.asset("assets/image/hari.png"),
                  ),
                  title: customBoldText(title: "صالونات رجالية"),
                  subtitle:
                      customRigulerText(title: "صالونات رجالي  مسجلة لدينا"),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_circle_left)),
                ),
              ),
              //  Image.asset("assets/image/LogoN.png"),
            ],
          )),
    );
  }
}
