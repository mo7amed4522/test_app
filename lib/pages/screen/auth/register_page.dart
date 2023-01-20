import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/controller/auth/register_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';
import 'package:test_app/pages/widget/splach_scenn_widget/logo_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<RegisterControllerIMP>(
        init: RegisterControllerIMP(),
        builder: (controller) => Sizer(
          builder: (context, orientation, deviceType) => Padding(
            padding: EdgeInsets.only(right: 2.h, left: 2.h),
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 7.h, left: 7.h),
                  child: LogoImageWidget(
                      image: AppLink.logo, height: 150, width: 100),
                ),
                SizedBox(height: 3.h),
                Center(
                    child: TextWidgetShapeEnglish(
                        text: "New Account",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        size: 18.sp)),
                Center(
                    child: TextWidgetShapeEnglish(
                        text: "Please enter the following details to",
                        size: 10.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey)),
                Center(
                    child: TextWidgetShapeEnglish(
                        text: "create an account",
                        size: 10.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey)),
                SizedBox(height: 7.h),
                defaultTextForm(
                    controller: controller.nameController,
                    keyboardType: TextInputType.name,
                    label: "Name",
                    prefix: Icons.person,
                    onTap: () {},
                    onChange: (String? vall) {},
                    onSubmit: (String? vall) {},
                    color: Colors.black,
                    validate: (String? val) {}),
                SizedBox(height: 1.h),
                defaultTextForm(
                    controller: controller.emailController,
                    keyboardType: TextInputType.emailAddress,
                    label: "Email",
                    onTap: () {},
                    onChange: (String? vall) {},
                    onSubmit: (String? vall) {},
                    prefix: Icons.email_outlined,
                    color: Colors.grey,
                    validate: (String? val) {}),
                SizedBox(height: 1.h),
                defaultTextForm(
                    controller: controller.passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    label: "Password",
                    onTap: () {},
                    onChange: (String? vall) {},
                    onSubmit: (String? vall) {},
                    prefix: Icons.lock_outline,
                    suffix: controller.isPassword == true
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    isPassword: controller.isPassword,
                    suffixPress: () {
                      controller.changeVisablePass();
                    },
                    color: Colors.grey,
                    validate: (String? val) {}),
                SizedBox(height: 1.h),
                defaultTextForm(
                    controller: controller.confPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    label: "Confirm Password",
                    prefix: Icons.lock_outline,
                    onTap: () {},
                    onChange: (String? vall) {},
                    onSubmit: (String? vall) {},
                    suffix: controller.isPasswordconfirm == true
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    isPassword: controller.isPasswordconfirm,
                    suffixPress: () {
                      controller.changeVisablePassConfirm();
                    },
                    color: Colors.grey,
                    validate: (String? val) {}),
                SizedBox(height: 15.h),
                GestureDetector(
                    child: animatedOptacity("SING UP"),
                    onTap: () {
                      controller.signUp();
                    }),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextWidgetShapeEnglish(
                      text: "Already have an account?",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      size: 10.sp),
                  TextWidgetShapeEnglish(
                      text: "LOGIN",
                      fontWeight: FontWeight.bold,
                      color: AppColor.defaultColor,
                      size: 15.sp)
                ]),
                SizedBox(height: 3.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
