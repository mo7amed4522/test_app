// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/questation_controller/questition_controller.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';

class YesNoQuestionWidget extends GetView<QuestitionScreenControllerIMP> {
  String quesText;
  TextEditingController edit;

  YesNoQuestionWidget({
    super.key,
    required this.quesText,
    required this.edit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          height: 170,
          width: Get.width,
          decoration: const BoxDecoration(
              color: AppColor.nearlyWhite,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Column(children: [
            Row(children: [
              Container(
                  width: 3,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: AppColor.defaultColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)))),
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(quesText,
                          style: TextStyle(color: AppColor.defaultColor))))
            ]),
            Padding(
                padding: const EdgeInsets.only(left: 7, right: 7),
                child: Divider(color: AppColor.black, height: 2)),
            Row(children: [
              Container(
                  width: 3,
                  height: 118,
                  decoration: const BoxDecoration(
                      color: AppColor.defaultColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)))),
              Expanded(
                  child: Column(children: [
                RadioListTile(
                  activeColor: AppColor.defaultColor,
                  title: TextWidgetShapeEnglish(text: "Yes", size: 15),
                  value: "yes",
                  groupValue: controller.val,
                  onChanged: (v) {
                    controller.changeRadioButton(
                      v,
                      edit,
                    );
                  },
                ),
                RadioListTile(
                    activeColor: AppColor.defaultColor,
                    title: TextWidgetShapeEnglish(text: "No", size: 15),
                    value: "no",
                    groupValue: controller.val,
                    onChanged: (v) {
                      controller.changeRadioButton(v,
                      edit);
                    })
              ]))
            ])
          ]))
    ]);
  }
}
