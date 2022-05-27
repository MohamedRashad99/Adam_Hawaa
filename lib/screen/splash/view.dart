import 'dart:async';



import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../local_storage/local_storage.dart';
import '../../widgets/constants.dart';
import '../onboarding/view.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Future.delayed(const Duration(seconds: 2), () {
      // bool isBoarding = LocalStorage.getBool('onBoarding');
      // if (isBoarding) {
      //   Get.offAllNamed("/OnBoardingScreen");
      // } else {
      //   Timer(const Duration(seconds: 2),
      //           () => Get.offAllNamed("/OnBoardingScreen"));
      // }


      Timer(const Duration(seconds: 2),
              () => Get.off( ()=>const OnBoardingScreen()));

    });

    return SafeArea(
        child: Stack(
fit: StackFit.expand,

          children: [
            Container(
              color: kBlackText,
            width: width,
              height: height,

            ),
            Center(
              child: Image.asset(
                "assets/image/Logo.png",

              ),
            ),
          ],

        ));



  }



}


