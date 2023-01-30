import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/controller/auth_attach/forget_pass_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Sizer(
            builder: (context, orientation, deviceType) =>
                GetBuilder<ForgetPasswordIMP>(
                    init: ForgetPasswordIMP(),
                    builder: (controller) => ListView(
                            padding: EdgeInsets.only(right: 2.h, left: 2.h),
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 5.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomIconBtn(
                                            icon: Icons.arrow_back,
                                            color: AppColor.back,
                                            onPressed: () {
                                              Get.back();
                                            })
                                      ])),
                              SizedBox(height: 5.h),
                              SvgPicture.asset(AppLinkImage.forgetPass,
                                  height: 25.h,
                                  width: 25.w,
                                  fit: BoxFit.contain),
                              SizedBox(height: 8.h),
                              Center(
                                  child: TextWidgetShapeEnglish(
                                      text: "Forgot Password",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      size: 18.sp)),
                              Center(
                                  child: TextWidgetShapeEnglish(
                                      text:
                                          "Enter your email to get a verification",
                                      size: 10.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey)),
                              Center(
                                  child: TextWidgetShapeEnglish(
                                      text: "code",
                                      size: 10.sp,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey)),
                              SizedBox(height: 5.h),
                              defaultTextForm(
                                  controller: controller.emailController,
                                  keyboardType: TextInputType.name,
                                  label: "Email",
                                  prefix: Icons.email_rounded,
                                  onTap: () {},
                                  onChange: (String? vall) {},
                                  onSubmit: (String? vall) {},
                                  color: Colors.black,
                                  validate: (String? val) {}),
                              SizedBox(height: 8.h),
                              GestureDetector(
                                  child: animatedOptacity("SUBMIT"),
                                  onTap: () {
                                    controller.submit();
                                  })
                            ]))));
  }
}
