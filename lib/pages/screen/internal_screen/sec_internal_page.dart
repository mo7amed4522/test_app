// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/internal_controller/internal_sec_screen_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';

class InternalSecondScreen extends StatelessWidget {
  const InternalSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroungRegister,
          automaticallyImplyLeading: false,
          elevation: 0.0,
          title: TextWidgetShapeEnglish(
              text: "Register Case",
              size: 20,
              fontWeight: FontWeight.normal,
              color: AppColor.black),
          leading: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: CustomIconBtn(
                      icon: Icons.arrow_back,
                      color: AppColor.black,
                      onPressed: () {
                        Get.back();
                      }))),
          iconTheme: const IconThemeData(color: AppColor.black),
          centerTitle: true,
        ),
        body: GetBuilder<InternalSecondScreenControllerIMP>(
            init: InternalSecondScreenControllerIMP(),
            builder: (controller) => Container(
                color: AppColor.backgroungRegister,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: defaultTextFormwithoutasset(
                        maxLines: 10,
                        controller: controller.painController,
                        //maxLength: 10,
                        keyboardType: TextInputType.text,
                        label: "Type of Pain",
                        onTap: () {},
                        onChange: (String? vall) {},
                        onSubmit: (String? vall) {},
                        color: AppColor.black,
                        validate: (String? val) {}),
                  ),
                  SizedBox(height: 3),
                  RadioListTile(
                    activeColor: AppColor.defaultColor,
                    title: TextWidgetShapeEnglish(text: "Yes", size: 15),
                    value: "yes",
                    groupValue: controller.val,
                    onChanged: (v) {
                      controller.changeRadioButton(v);
                    },
                  ),
                  RadioListTile(
                    activeColor: AppColor.defaultColor,
                    title: TextWidgetShapeEnglish(text: "No", size: 15),
                    value: "No",
                    groupValue: controller.val,
                    onChanged: (v) {
                      controller.changeRadioButton(v);
                    },
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                        right: Get.width / 8, left: Get.width / 8),
                    child: GestureDetector(
                        onTap: () {
                          controller.goToChoiceScreen();
                        },
                        child: animatedOptacity("Next")),
                  ),
                  SizedBox(height: 30)
                ]))));
  }
}
