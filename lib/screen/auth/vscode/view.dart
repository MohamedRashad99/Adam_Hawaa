import 'package:flutter/material.dart';
import 'package:queen/validation.dart';

import '../../../widgets/appBar.dart';
import '../../../widgets/constants.dart';
import '../../../widgets/customButton.dart';
import '../../../widgets/customTextFeild.dart';
class VSCode extends StatelessWidget {
  const VSCode({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kHomeColor,
      appBar: customAppbar(title: "تفعيل الحساب", isIcons: true),
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
                    title: "أدخل الكود المرسل علي بريدك الالكتروني لتفعيل الحساب"),
              ),
              CustomTextField(
                dIcon: Icons.drive_file_rename_outline,
                hint: "أدحل الكود هنا",
                // controller: _emailController,
                label: "أدحل الكود هنا",
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
