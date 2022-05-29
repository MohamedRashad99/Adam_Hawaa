
import 'package:adam_and_eve/widgets/constants.dart';
import 'package:adam_and_eve/widgets/customButton.dart';
import 'package:adam_and_eve/widgets/customTextFeild.dart';
import 'package:adam_and_eve/widgets/donotHave.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queen/validation.dart';

import '../../../widgets/appBar.dart';
import '../forget_password/view.dart';
import '../register/view.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kHomeColor,
      appBar: customAppbar(title: "تسجيل الدخول ", isIcons: true),
      body: SizedBox(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Image.asset("assets/image/LogoN.png"),
              Padding(
                padding:
                const EdgeInsetsDirectional.only(top: 8.0, bottom: 8.0),
                child: customRigulerText(
                    title: "سجل دخولك الان واستمع بستخدام كامل للتطبيق"),
              ),
              CustomTextField(
                dIcon: Icons.email,
                hint: "البريد الالكتروني",
                // controller: _emailController,
                label: "البريد الالكتروني",
                validator: qValidator([
                  IsRequired("enterEmail"),
                  IsOptional(),
                  const IsEmail("MustBeEmail"),
                  MaxLength(30),
                ]),
                type: TextInputType.emailAddress,
              ),
              CustomTextField(
                dIcon: Icons.lock_open,
                hint: "كلمة المرور",
                // controller: _emailController,
                label: "كلمة المرور",
                validator: qValidator([
                  IsRequired("enterEmail"),
                  IsOptional(),
                  const IsEmail("MustBeEmail"),
                  MaxLength(30),
                ]),
                type: TextInputType.emailAddress,
              ),
              DoNotHave(
                  text: "أضغط هنا",
                  route: () =>  showAlertNoAccountDialog(context , ()=>const ForgetPassword()),
                  have: "نسيت كلمة المرور ؟  "),
              CustomButton(
                color: kBlackText,
                title: "تسجيل دخول",
                onPressed: () {


                  /// TODO :: Home Page
                },
              ),
              CustomButton(
                color: kBlackText,
                title: "ليس لديك حساب ؟ إنشاء حساب",
                onPressed: () {
                  Get.to(()=>const SignUp());

                },
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 22.0),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: () {},
                        child: customRigulerText(title: " تخطي الان"))),
              )
            ],
          )),
    );
  }
}
