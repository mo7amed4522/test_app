// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:test_app/core/theme/theme_color.dart';

class HistoryListViewBuilderWidget extends StatelessWidget {
  void Function()? onTap;
   HistoryListViewBuilderWidget({super.key,this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(children: [
          InkWell(
            onTap: onTap,
            child: Container(
              color: AppColor.backgroungRegister,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "04/24/2021",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 14,
                      color: AppColor.black,
                    ),
                  ),
                  const Text(
                    "05:01 AM",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 14,
                      color: AppColor.black,
                    ),
                  ),
                  const Text(
                    "NYU Langone",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 14,
                      color: AppColor.black,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.remove_red_eye,
                        color: AppColor.defaultColor),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Container(
              color: AppColor.nearlyWhite,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "04/24/2021",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 14,
                        color: AppColor.black,
                      ),
                    ),
                    const Text(
                      "05:01 AM",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 14,
                        color: AppColor.black,
                      ),
                    ),
                    MaterialButton(
                      height: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)),
                      color: AppColor.defaultColor,
                      onPressed: () {},
                      child: const Text("Select",
                          style: TextStyle(color: AppColor.nearlyWhite)),
                    ),
                    IconButton(
                        icon: const Icon(Icons.remove_red_eye,
                            color: AppColor.defaultColor),
                        onPressed: () {})
                  ]))
        ]));
  }
}
