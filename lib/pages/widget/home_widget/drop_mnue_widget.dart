// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/register_case_controller.dart/register_case_sec_controller.dart';
import 'package:test_app/core/theme/theme_color.dart';

class DropMnueWidget extends GetView<RegisterCaseSecondIMP> {
  const DropMnueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.grey)),
        child: DropdownButton(
            borderRadius: BorderRadius.circular(25),
            value: controller.dropdownvalue,
            isExpanded: true,
            underline: Container(
              height: 0,
              color: AppColor.back,
            ),
            icon: const Icon(Icons.keyboard_arrow_down),
            items: controller.items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(items),
                ),
              );
            }).toList(),
            onChanged: (String? values) {
              controller.changeDropMnue(values!);
            }),
      ),
    );
  }
}
