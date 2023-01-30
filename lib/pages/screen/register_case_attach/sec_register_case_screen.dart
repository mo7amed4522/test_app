import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/controller/register_case_controller.dart/register_case_sec_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';
import 'package:test_app/pages/widget/home_widget/app_bar_widget.dart';
import 'package:test_app/pages/widget/home_widget/drop_mnue_widget.dart';

class RegisterCaseSecPage extends StatelessWidget {
  const RegisterCaseSecPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Sizer(
            builder: (context, orientation, deviceType) => GetBuilder<
                    RegisterCaseSecondIMP>(
                init: RegisterCaseSecondIMP(),
                builder: (controller) => Container(
                    padding: EdgeInsets.only(top: 5.h, right: 1.h, left: 1.h),
                    child: Column(children: [
                      const AppBarWidgetRegisterCase(),
                      SizedBox(height: 7.h),
                      Center(
                          child: TextWidgetShapeEnglish(
                              text: "Please select the part of Pain",
                              size: 5.w,
                              color: AppColor.back,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 5.h),
                      Row(children: [
                        Expanded(
                          child: SvgPicture.asset(AppLinkImage.frontBody,
                              fit: BoxFit.contain),
                        ),
                        Expanded(
                          child: SvgPicture.asset(AppLinkImage.backBody,
                              fit: BoxFit.contain),
                        )
                      ]),
                      SizedBox(height: 8.h),
                      // ignore: prefer_const_constructors
                      DropMnueWidget(),
                      const Spacer(),
                      GestureDetector(
                          onTap: () {
                            controller.goToThirdPage();
                          },
                          child: animatedOptacity("Next")),
                      SizedBox(height: 2.h)
                    ])))));
  }
}
