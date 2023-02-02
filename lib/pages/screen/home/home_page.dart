// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
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
        toolbarHeight: 80,
        title: TextWidgetShapeEnglish(
            text: "Home",
            size: 25,
            fontWeight: FontWeight.normal,
            color: AppColor.nearlyWhite),
        centerTitle: true,
        leading: Padding(
            padding: EdgeInsets.only(left: 5),
            child: IconButton(
                icon: const Icon(Icons.menu, size: 30), onPressed: () {})),
        iconTheme: const IconThemeData(color: AppColor.back),
        backgroundColor: AppColor.defaultColor,
        elevation: 0.0,
      ),
      backgroundColor: AppColor.defaultColor,
      body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              color: AppColor.nearlyWhite),
          child: GridView.count(
            padding: EdgeInsets.all(5),
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 2,
            children: [
              ...HomeModule().list.map((e) {
                return ItemWidget(e);
              }).toList()
            ],
          )),
    );
  }
}
