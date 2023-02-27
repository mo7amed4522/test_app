// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/history_controller/user_history_controller.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/module/user_history_model.dart';

class ContainerListViewHistoryWidget extends GetView<FirstUserHistoryScreenControllerIMP> {
  final Answers answers;
   const ContainerListViewHistoryWidget({super.key,required this.answers});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      decoration: BoxDecoration(
        color: AppColor.nearlyWhite,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
           Container(
            width: 4,
            decoration: const BoxDecoration(
                color: AppColor.defaultColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                width: Get.width /1.14,
                child: Text(
                  "${answers.question}",
                  style: TextStyle(
                    color: AppColor.buttonColor,
                    fontSize: 16,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.normal
                  ),
                ),
              ),
               Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: Get.width /1.14,
                child: Text(
                  "${answers.answer}",
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: 15
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}