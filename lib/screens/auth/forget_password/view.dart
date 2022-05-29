import 'package:flutter/material.dart';
import 'package:queen/validation.dart';

import '../../../widgets/appBar.dart';
import '../../../widgets/constants.dart';
import '../../../widgets/customButton.dart';
import '../../../widgets/customTextFeild.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kHomeColor,
      appBar: customAppbar(title: "استرجاع كلمة المرور", isIcons: true),
      body: SizedBox(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Image.asset("assets/image/activate.png"),
              Padding(
                padding:
                const EdgeInsetsDirectional.only(top: 8.0, bottom: 8.0),
                child: customRigulerText(
                    title: "أدخل كلمة مرور قويةو مرنة واحفظها للاستخدام التطبيق"),
              ),
              CustomTextField(
                dIcon: Icons.email,
                hint: "كلمة المرور الجديدة",
                // controller: _emailController,
                label: "كلمة المرور الجديدة",
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
                hint: "تاكيد كلمة المرور الجديدة",
                // controller: _emailController,
                label: "تاكيد كلمة المرور الجديدة",
                validator: qValidator([
                  IsRequired("enterEmail"),
                  IsOptional(),
                  const IsEmail("MustBeEmail"),
                  MaxLength(30),
                ]),
                type: TextInputType.emailAddress,
              ),

              CustomButton(
                color: kBlackText,
                title: "تاكيد",
                onPressed: () {},
              ),
              SizedBox(
                height: height * 0.1,
              ),

            ],
          )),
    );
  }
}
