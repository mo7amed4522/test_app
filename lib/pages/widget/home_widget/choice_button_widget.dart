// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';

class ChoiceButtonWidget extends StatelessWidget {
  String text;
  Color? color;
  void Function()? onTap;
  Color? colorText;
  ChoiceButtonWidget(
      {super.key, this.colorText,this.onTap ,required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: 0.99,
          child: Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 16, right: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: AppColor.nearlyWhite,
                                border: Border.all(width: 5.0, color: color!),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(16.0))),
                            child: Center(
                                child: TextWidgetShapeEnglish(
                                    text: text,
                                    fontWeight: FontWeight.bold,
                                    color: colorText,
                                    size: 15))))
                  ]))),
    );
  }
}
