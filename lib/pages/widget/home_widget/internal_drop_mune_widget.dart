// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/controller/internal_controller/internal_first_page_controller.dart';
import 'package:test_app/core/theme/theme_color.dart';

class InternalDropMnueWidget extends GetView<InternalFirstPageControllerIMP> {
  const InternalDropMnueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        height: 6.h,
     color: AppColor.nearlyWhite,
        child: Row(
          children: [
            Container(
            width: 0.9.w,
            height: 6.h,
            color: AppColor.defaultColor,
          ),
            Expanded(
              child: DropdownButton(
                  borderRadius: BorderRadius.circular(3),
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
          ],
        ),
      ),
    );
  }
}
