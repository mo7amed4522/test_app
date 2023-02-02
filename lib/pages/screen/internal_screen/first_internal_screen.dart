// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:test_app/controller/internal_controller/internal_first_page_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';
import 'package:test_app/pages/widget/home_widget/internal_drop_mune_widget.dart';

class InternalScreenFirst extends StatelessWidget {
  const InternalScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backgroungRegister,
        appBar: AppBar(
          toolbarHeight: 80,
          title: TextWidgetShapeEnglish(
              text: "Register Case",
              size: 20,
              fontWeight: FontWeight.normal,
              color: AppColor.black),
          centerTitle: true,
          leading: Padding(
              padding: EdgeInsets.only(left: 5),
              child: CustomIconBtn(
                  icon: Icons.arrow_back,
                  color: AppColor.black,
                  onPressed: () {
                    Get.back();
                  })),
          iconTheme: const IconThemeData(color: AppColor.black),
          backgroundColor: AppColor.backgroungRegister,
          elevation: 0.0,
        ),
        body: GetBuilder<InternalFirstPageControllerIMP>(
            init: InternalFirstPageControllerIMP(),
            builder: (controller) => Container(
                color: AppColor.backgroungRegister,
                padding: EdgeInsets.only(left: 1, right: 1, top: 5),
                child: Column(children: [
                  SizedBox(height: 20),
                  Center(
                      child: TextWidgetShapeEnglish(
                          text: "Please select the part of Pain",
                          size: 18,
                          color: AppColor.black,
                          fontWeight: FontWeight.normal)),
                  InternalDropMnueWidget(),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                        right: Get.width / 9, left: Get.width / 9),
                    child: GestureDetector(
                        onTap: () {
                          controller.goToFourthPage();
                        },
                        child: animatedOptacity("Next")),
                  ),
                  SizedBox(height: 20)
                ]))));
  }
}
