// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/theme/theme_color.dart';

class FreeTextWidget extends StatelessWidget {
  String questionText;
  TextEditingController controller;
  FreeTextWidget(
      {super.key, required this.questionText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: Get.width,
            decoration: const BoxDecoration(
                color: AppColor.nearlyWhite,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        width: 3,
                        height: 40,
                        decoration: const BoxDecoration(
                            color: AppColor.defaultColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          questionText,
                          style: TextStyle(fontFamily: "Poppins",color: AppColor.defaultColor),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7,right: 7),
                  child: Divider(color: AppColor.black,height: 2),
                ),
                defaultTextFormwithoutasset(
                  controller: controller,
                  maxLines: 10,
                  keyboardType: TextInputType.text,
                  color: AppColor.black,
                  onChange: (value) {},
                  onSubmit: (value) {},
                  onTap: () {},
                  validate: (value) {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
