import 'package:flutter/material.dart';
import 'package:test_app/core/theme/theme_color.dart';

class HistoryBarWidget extends StatelessWidget {
  const HistoryBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.nearlyWhite,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Date",
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 15,
              color: AppColor.defaultColor,
            ),
          ),
           Text(
            "Time",
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 15,
              color: AppColor.defaultColor,
            ),
          ),
           Text(
            "Hospital",
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 15,
              color: AppColor.defaultColor,
            ),
          ),
           Text(
            "Action",
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 15,
              color: AppColor.defaultColor,
            ),
          ),
        ],
      ),
    );
  }
}
