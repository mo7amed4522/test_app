// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/module/home_page.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';
import 'package:test_app/pages/widget/home_widget/card_item_widget.dart';

class HomePageScreen extends StatelessWidget {
  var column = Column(mainAxisAlignment: MainAxisAlignment.start, children: [
    ...HomeModule().list.map((e) {
      return GestureDetector(
        onTap: () {},
        child: ItemWidget(
          e,
        ),
      );
    }).toList()
  ]);
  HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidgetShapeEnglish(
            text: "Home",
            size: 5.w,
            fontWeight: FontWeight.bold,
            color: AppColor.nearlyWhite),
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Icons.menu, size: 30), onPressed: () {}),
        iconTheme: const IconThemeData(color: AppColor.back),
        foregroundColor: AppColor.defaultColor,
        backgroundColor: AppColor.defaultColor,
        shadowColor: AppColor.defaultColor,
        elevation: 0.0,
      ),
      backgroundColor: AppColor.defaultColor,
      body: Sizer(
        builder: (context, orientation, deviceType) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7.h),
                    topRight: Radius.circular(7.h)),
                color: Colors.white),
            child: GridView.count(
              padding: EdgeInsets.only(top: 7.h),
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              children: [
                ...HomeModule().list.map((e) {
                  return ItemWidget(e);
                }).toList()
              ],
            )),
      ),
    );
  }
}
