import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/controller/auth_attach/reset_passsword_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Sizer(
        builder: (context, orientation, deviceType) =>
            GetBuilder<ResetPasswordControllerIMP>(
          init: ResetPasswordControllerIMP(),
          builder: (controller) => Form(
            child: ListView(
              padding: EdgeInsets.only(right: 2.h, left: 2.h),
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 4.h,
                            decoration: BoxDecoration(
                                color: AppColor.back,
                                borderRadius: BorderRadius.circular(9.sp)),
                            child: CustomIconBtn(
                                icon: Icons.arrow_back,
                                color: AppColor.black,
                                onPressed: () {
                                  Get.back();
                                }),
                          )
                        ])),
                SizedBox(height: 5.h),
                SvgPicture.asset(AppLinkImage.resetPass,
                    height: 25.h, width: 25.w, fit: BoxFit.contain),
                SizedBox(height: 8.h),
                Center(
                    child: TextWidgetShapeEnglish(
                        text: "Reset Password",
                        fontWeight: FontWeight.bold,
                        color: AppColor.black,
                        size: 18.sp)),
                Center(
                    child: TextWidgetShapeEnglish(
                        text: "Reset your password to login to",
                        size: 10.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey)),
                Center(
                    child: TextWidgetShapeEnglish(
                        text: "your account",
                        size: 10.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey)),
                SizedBox(height: 3.h),
               defaultTextForm(
                    controller: controller.passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    assetName: AppLinkImage.iconsPassword,
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
                    controller: controller.confirmPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    assetName: AppLinkImage.iconsPassword,
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
                SizedBox(height: 10.h),
                Padding(
                  padding:  EdgeInsets.only(right: 7.w,left: 7.w),
                  child: GestureDetector(
                      child: animatedOptacity("SUBMIT"),
                      onTap: () {
                        controller.successReset(context);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
