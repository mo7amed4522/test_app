// ignore_for_file: must_be_immutable

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:test_app/controller/support_controller/drop_down_menu_controller.dart';
import 'package:test_app/core/theme/theme_color.dart';

class DropMuneSupportWidget extends GetView<DropDowunMuneSupportWidgetIMP> {
    const DropMuneSupportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ExpansionTileCard(
        elevationCurve: Curves.easeInOutCubic,
      baseColor: AppColor.nearlyWhite,
      expandedColor: AppColor.nearlyWhite,
      title: Text(controller.value),
      expandedTextColor: AppColor.defaultColor,
      children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: Text(controller.value2,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
          ),
        ),
      ),
      ],
    ),
    );
  }
}
