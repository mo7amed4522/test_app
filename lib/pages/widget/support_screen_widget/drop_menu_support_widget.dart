// ignore_for_file: must_be_immutable

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/theme/theme_color.dart';

class DropMuneSupportWidget extends StatelessWidget {
  String? text1;
  String? text2;
     DropMuneSupportWidget({super.key,this.text1,this.text2});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ExpansionTileCard(
        elevationCurve: Curves.easeInOutCubic,
      baseColor: AppColor.nearlyWhite,
      expandedColor: AppColor.nearlyWhite,
      title: Text(text1!),
      expandedTextColor: AppColor.defaultColor,
      children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: Text(text2!,
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
