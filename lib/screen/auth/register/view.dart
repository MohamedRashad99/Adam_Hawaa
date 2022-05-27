import 'package:flutter/material.dart';
import 'package:queen/validation.dart';

import '../../../widgets/appBar.dart';
import '../../../widgets/constants.dart';
import '../../../widgets/customButton.dart';
import '../../../widgets/customTextFeild.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kHomeColor,
      appBar: customAppbar(title: "إنشاء حساب جديد ", isIcons: true),
      body: SizedBox(
          width: width,
          height: height,
          child: ListView(
          //  mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: height*0.3,
                  child: Image.asset("assets/image/LogoN.png")),

              CustomTextField(
                dIcon: Icons.person,
                hint: "اسم المستخدم",
                // controller: _emailController,
                label: "اسم المستخدم",
                validator: qValidator([
                  IsRequired("enterEmail"),
                  IsOptional(),
                  const IsEmail("MustBeEmail"),
                  MaxLength(30),
                ]),
                type: TextInputType.name,
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
              CustomTextField(
                dIcon: Icons.lock_open,
                hint: "رقم الهاتف",
                // controller: _emailController,
                label: "رقم الهاتف",
                validator: qValidator([
                  IsRequired("enterEmail"),
                  IsOptional(),
                  const IsEmail("MustBeEmail"),
                  MaxLength(30),
                ]),
                type: TextInputType.phone
                ,
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
              CustomTextField(
                dIcon: Icons.location_on_outlined,
                hint: "الدولة",
                // controller: _emailController,
                label: "الدولة",
                validator: qValidator([
                  IsRequired("enterEmail"),
                  IsOptional(),
                  const IsEmail("MustBeEmail"),
                  MaxLength(30),
                ]),
                type: TextInputType.emailAddress,
              ),
              CustomTextField(
                dIcon: Icons.location_on_outlined,
                hint: "المدينة",
                // controller: _emailController,
                label: "المدينة",
                validator: qValidator([
                  IsRequired("enterEmail"),
                  IsOptional(),
                  const IsEmail("MustBeEmail"),
                  MaxLength(30),
                ]),
                type: TextInputType.emailAddress,
              ),
              CustomTextField(
                dIcon: Icons.location_on_outlined,
                hint: "الجنس",
                // controller: _emailController,
                label: "الجنس",
                validator: qValidator([
                  IsRequired("enterEmail"),
                  IsOptional(),
                  const IsEmail("MustBeEmail"),
                  MaxLength(30),
                ]),
                type: TextInputType.emailAddress,
              ),
              CustomTextField(
                dIcon: Icons.location_on_outlined,
                hint: "كلمة المرور",
                // controller: _emailController,
                label: "كلمة المرور",
                validator: qValidator([
                  IsRequired("enterEmail"),
                  IsOptional(),
                  const IsEmail("MustBeEmail"),
                  MaxLength(30),
                ]),
                type: TextInputType.text,
              ),
              CustomTextField(
                dIcon: Icons.location_on_outlined,
                hint: " تاكيد كلمة المرور",
                // controller: _emailController,
                label: " تاكيد كلمة المرور",
                validator: qValidator([
                  IsRequired("enterEmail"),
                  IsOptional(),
                  const IsEmail("MustBeEmail"),
                  MaxLength(30),
                ]),
                type: TextInputType.text,
              ),

              CustomButton(
                color: kBlackText,
                title: "إنشاء حساب جديد",
                onPressed: () {},
              ),
              CustomButton(
                color: kBlackText,
                title: "لديك حساب ؟ تسجيل دخول",
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
