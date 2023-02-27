// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/history_controller/user_history_controller.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';

class ContainerBarHistoryWidget
    extends GetView<FirstUserHistoryScreenControllerIMP> {
      String? hospitalName;
      String? dataTime;
      String? timeData;
   ContainerBarHistoryWidget({super.key,this.timeData,this.hospitalName,this.dataTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      height: 140,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.nearlyWhite,
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(AppLinkImage.hospitalName, height: 14),
                const SizedBox(width: 10),
                const Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: Text(
                    "Hospital",
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w400,
                        color: AppColor.black),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
             Text(
              hospitalName!,
              overflow: TextOverflow.fade,
              maxLines: 1,
              softWrap: false,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w400,
                  color: AppColor.black),
                       ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(AppLinkImage.date, height: 14),
                const SizedBox(width: 10),
                const Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: Text(
                    "Date",
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w400,
                        color: AppColor.black),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
             Text(
              dataTime!,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w400,
                  color: AppColor.black),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(AppLinkImage.time, height: 14),
                const SizedBox(width: 10),
                const Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: Text(
                    "Time",
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w400,
                        color: AppColor.black),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
             Text(
              timeData!,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w400,
                  color: AppColor.black),
            ),
          ],
        ),
      ]),
    );
  }
}
