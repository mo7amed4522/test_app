// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/register_case_controller.dart/register_case_sec_controller.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/theme/theme_color.dart';

class DropMnueWidget extends GetView<RegisterCaseSecondIMP> {
  const DropMnueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: AppColor.nearlyWhite,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Row(
          children: [
            Container(
                width: 4,
                height: 60,
                decoration: BoxDecoration(
                    color: AppColor.defaultColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)))),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: DropdownButton(
                  borderRadius: BorderRadius.circular(3),
                  isExpanded: true,
                  hint: Text("Select part of Pain"),
                  underline: Container(
                    height: 0,
                    color: AppColor.back,
                  ),
                  icon: Icon(Icons.keyboard_arrow_down),
                  items: controller.interactive.map((list) {
                    return DropdownMenuItem(
                        value: list['Id'].toString(),
                        child: Text(list['Name'].toString()));
                  }).toList(),
                  onChanged: (values) {
                    controller.changeDropMnue(values!);
                    Get.toNamed(AppRoute.questionScreen, arguments: {
                      "Id" : values,
                    });
                  },
                  value: controller.dropdownvalue,
                ),
              ),
            ),
          ], /*  */
        ),
      ),
    );
  }
}
