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
            padding: EdgeInsets.only(right: 2.h, left: 2.h, top: 2.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.h, right: 7.h, left: 7.h),
                    child: LogoImageWidget(
                        image: AppLinkImage.logoImage2,
                        height: 20.h,
                        width: 50.w),
                  ),
                  SizedBox(height: 2.h),
                  Center(
                      child: TextWidgetShapeEnglish(
                          text: "New Account",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          size: 18.sp)),
                  Center(
                      child: TextWidgetShapeEnglish(
                          text: "Please enter the following details to",
                          size: 15.sp,
                          fontWeight: FontWeight.normal,
                          color: AppColor.colorFontgry)),
                  Center(
                      child: TextWidgetShapeEnglish(
                          text: "create an account",
                          size: 15.sp,
                          fontWeight: FontWeight.normal,
                          color: AppColor.colorFontgry)),
                  SizedBox(height: 4.h),
                  defaultTextForm(
                    controller: controller.nameController,
                    keyboardType: TextInputType.name,
                    assetName: AppLinkImage.iconsUser,
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
                    assetName: AppLinkImage.iconsEmail,
                    keyboardType: TextInputType.emailAddress,
                    label: "Email",
                    onTap: () {},
                    onChange: (String? vall) {},
                    onSubmit: (String? vall) {},
                    prefix: Icons.email_outlined,
                    color: Colors.black,
                    validate: (String? val) {}),
             
                    SizedBox(height: 1.h),
                    defaultTextForm(
                    controller: controller.passwordController,
                    assetName: AppLinkImage.iconsPassword,
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
                    color: Colors.black,
                    validate: (String? val) {}),
                SizedBox(height: 1.h),
                defaultTextForm(
                    controller: controller.confPasswordController,
                    assetName: AppLinkImage.iconsPassword,
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
                    color: Colors.black,
                    validate: (String? val) {}),
                  SizedBox(height: 4.h),
                  Padding(
                    padding: EdgeInsets.only(right: 20.sp, left: 20.sp),
                    child: GestureDetector(
                        child: animatedOptacity("SING UP"),
                        onTap: () {
                          controller.signUp();
                        }),
                  ),
                  SizedBox(height: 5.h),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    TextWidgetShapeEnglish(
                        text: "Already have an account ?",
                        fontWeight: FontWeight.bold,
                        color: AppColor.colorFontgry,
                        size: 10.sp),
                    MaterialButton(
                      onPressed: () {
                        controller.login();
                      },
                      child: TextWidgetShapeEnglish(
                          text: "LOGIN",
                          fontWeight: FontWeight.bold,
                          color: AppColor.defaultColor,
                          size: 15.sp),
                    )
                  ]),
                  SizedBox(height: 3.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
