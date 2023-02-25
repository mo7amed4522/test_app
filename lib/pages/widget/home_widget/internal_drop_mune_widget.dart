// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/internal_controller/internal_first_page_controller.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/theme/theme_color.dart';

class InternalDropMnueWidget extends GetView<InternalFirstPageControllerIMP> {
  const InternalDropMnueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        height: 60,
        decoration: const BoxDecoration(
            color: AppColor.nearlyWhite,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Row(
          children: [
            Container(
              width: 4,
              height: 60,
              decoration: const BoxDecoration(
                  color: AppColor.defaultColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: DropdownButton(
                    borderRadius: BorderRadius.circular(3),
                    isExpanded: true,
                    hint: Text("Select part of Pain"),
                    underline: Container(
                      height: 0,
                      color: AppColor.back,
                    ),
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: controller.internal.map((list) {
                      return DropdownMenuItem(
                        value:list['Id'].toString(),
                        child:Text(list['Name'].toString())
                      );
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
          ],
        ),
      ),
    );
  }
}
