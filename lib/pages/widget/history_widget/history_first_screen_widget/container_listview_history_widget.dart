// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/theme/theme_color.dart';
class ContainerListViewHistoryWidget extends StatelessWidget {
  const ContainerListViewHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 150,
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
                  "Lorem ispum dolor amet, consecter adip cing elit sed do eiusmod tempor incidid",
                  style: TextStyle(
                    color: AppColor.buttonColor,
                    fontSize: 13
                  ),
                ),
              ),
               Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: Get.width /1.14,
                child: Text(
                  "Larem ipsum dolor sit amet, consecteture adipiscing elit, sed do eiusmod tempors incididunt ut labore et dolore magnaigt aliqua. Ut enim ad minim veniam, quisti nostrud exercitation ullamco larboris nisi ut aliquip ex ea commodo consequat .",
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: 13
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