import 'package:adam_and_eve/screens/button_navigation_bar_items/pages/home/page/views/banner_sliders.dart';
import 'package:adam_and_eve/widgets/constants.dart';
import 'package:adam_and_eve/widgets/customButton.dart';
import 'package:adam_and_eve/widgets/customTextFeild.dart';
import 'package:adam_and_eve/widgets/donotHave.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queen/validation.dart';

import '../../../../widgets/appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kHomeColor,
      body: SizedBox(
          width: width,
          height: height,
          child: Stack(
            children: [
              Container(
                height: height * 0.3,
                width: width,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(12),
                      bottomStart: Radius.circular(12)),
                ),
              ),
              PositionedDirectional(
                top: 25,
                start: width * 0.12,
                child: SizedBox(
                  width: width * 0.15,
                  height: height * 0.1,
                  child: Image.asset(
                    "assets/image/Logo.png",
                  ),
                ),
              ),
              PositionedDirectional(
                top: 100,
                child: Container(
                  height: height * 0.25,

                  //width: width*0.8,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Image.asset(
                    "assets/image/addbaner.png",
                  ),
                ),
              ),
              ListView.builder(
                itemCount: 8,
                itemBuilder: (context ,int index){
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
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
                  );
                },

              ),

            ],
          ),


/*
          PositionedDirectional(
            top: 320,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              width: width*0.8,
              height: height*0.12,
              color: Colors.redAccent,

              child: ListTile(
                leading: Container(
                  height: 0.08,
                  width: width*0.1,
                  color: Colors.black,

                ),
              ),
            ),
          )*/

      ),
    );
  }
}
