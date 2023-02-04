import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';

class ContainerBarHistoryWidget extends StatelessWidget {
  const ContainerBarHistoryWidget({super.key});

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
                  padding:  EdgeInsets.only(top: 3),
                  child:  Text(
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
            const Text(
              "NYU Langone Hospital",
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
                  padding:  EdgeInsets.only(top: 3),
                  child:  Text(
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
            const Text(
              "21-05-21",
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
                  padding:  EdgeInsets.only(top: 3),
                  child:  Text(
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
            const Text(
              "05:56 AM",
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
