// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/auth_attach/link_sent_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';

class LinkSentScreen extends StatelessWidget {
  const LinkSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.defaultColor,
      appBar: AppBar(
          elevation: 0.0,
          foregroundColor: AppColor.defaultColor,
          backgroundColor: AppColor.defaultColor,
          shadowColor: AppColor.defaultColor),
      body: GetBuilder<LinkSentControllerIMP>(
        init: LinkSentControllerIMP(),
        builder: ((controller) => Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: AppColor.nearlyWhite),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColor.back,
                          borderRadius: BorderRadius.circular(9)),
                      child: CustomIconBtn(
                          icon: Icons.arrow_back,
                          color: AppColor.black,
                          onPressed: () {
                            Get.back();
                          }),
                    )
                  ]),
                  SizedBox(height: 10),
                  SizedBox(
                    height: Get.height / 3,
                    child: SvgPicture.asset(AppLinkImage.linkset,
                        fit: BoxFit.contain),
                  ),
                  Center(
                      child: TextWidgetShapeEnglish(
                          text: "Link has been sent",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          size: 27)),
                  SizedBox(height: 5),
                  Center(
                      child: TextWidgetShapeEnglish(
                          text: "We have sent an email to that",
                          size: 17,
                          fontWeight: FontWeight.normal,
                          color: AppColor.grey)),
                  Center(
                      child: TextWidgetShapeEnglish(
                          text: "contains a link to reset your",
                          size: 17,
                          fontWeight: FontWeight.normal,
                          color: AppColor.grey)),
                  Center(
                      child: TextWidgetShapeEnglish(
                          text: "password",
                          size: 17,
                          fontWeight: FontWeight.normal,
                          color: AppColor.grey)),
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Get.width / 9, right: Get.width / 9),
                    child: GestureDetector(
                        child: animatedOptacity("CLOSE"),
                        onTap: () {
                          controller.goToResetePassword();
                        }),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
