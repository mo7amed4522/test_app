// ignore_for_file: file_names, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app/core/theme/theme_color.dart';

class HistoryListViewBuilderWidget extends StatelessWidget {
  void Function()? onTap;
  String dataTime;
  String timeDate;
  String? hospitalName;
  HistoryListViewBuilderWidget(
      {super.key,
      this.onTap,
      this.hospitalName,
      required this.timeDate,
      required this.dataTime});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(children: [
      Container(
        
        padding: EdgeInsets.only(left: 5,right: 5),
          color: AppColor.nearlyWhite,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              dataTime,
              style: const TextStyle(
                fontFamily: "Inter",
                fontSize: 14,
                color: AppColor.black,
              ),
            ),
            Text(
              timeDate,
              style: const TextStyle(
                fontFamily: "Inter",
                fontSize: 14,
                color: AppColor.black,
              ),
            ),
            SizedBox(
              width: 120,
              child: MaterialButton(
                height: 30,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9)),
                color: AppColor.defaultColor,
                onPressed:onTap,
                child: Text(hospitalName!,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: AppColor.nearlyWhite)),
              ),
            ),
            IconButton(
                icon: const Icon(Icons.remove_red_eye,
                    color: AppColor.defaultColor),
                onPressed: onTap)
          ]))
    ]));
  }
}
