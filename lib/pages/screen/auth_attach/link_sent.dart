import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/controller/auth_attach/link_sent_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';

class LinkSentPage extends StatelessWidget {
  const LinkSentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Sizer(
        builder: (context, orientation, deviceType) =>
            GetBuilder<LinkSentControllerIMP>(
          init: LinkSentControllerIMP(),
          builder: (controller) => ListView(
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
              SvgPicture.asset(AppLinkImage.linkset,
                  height: 25.h, width: 25.w, fit: BoxFit.contain),
              SizedBox(height: 8.h),
              Center(
                  child: TextWidgetShapeEnglish(
                      text: "Link has been sent",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      size: 20.sp)),
              Center(
                  child: TextWidgetShapeEnglish(
                      text: "We have sent an email to that",
                      size: 17.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey)),
              Center(
                  child: TextWidgetShapeEnglish(
                      text: "contains a link to reset your",
                      size: 17.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey)),
              Center(
                  child: TextWidgetShapeEnglish(
                      text: "password",
                      size: 17.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey)),
              SizedBox(height: 5.h),
              Padding(
                padding:  EdgeInsets.only(right: 7.w,left: 7.w),
                child: GestureDetector(
                    child: animatedOptacity("CLOSE"),
                    onTap: () {
                      controller.goToResetePassword();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
