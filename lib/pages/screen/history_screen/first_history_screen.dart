// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/history_widget/history_first_screen_widget/container_listview_history_widget.dart';
import 'package:test_app/pages/widget/history_widget/history_first_screen_widget/container_style_widget.dart';

class FirstUserHistoryScreen extends StatelessWidget {
  const FirstUserHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroungRegister,
      appBar: AppBar(
          backgroundColor: AppColor.backgroungRegister,
          title: Text(
            "User History",
            style: TextStyle(
                fontFamily: "Inter",
                fontSize: 23,
                color: AppColor.black,
                fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          leading: Padding(
              padding: EdgeInsets.only(left: 5),
              child: CustomIconBtn(
                  icon: Icons.arrow_back,
                  color: AppColor.black,
                  onPressed: () {
                    Get.back();
                  })),
          iconTheme: const IconThemeData(color: AppColor.black),
          elevation: 0.0),
      body: Container(
        color: AppColor.backgroungRegister,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContainerBarHistoryWidget(),
            SizedBox(height: 30),
            const Text(
              "Pain Qestion Answers",
              style: TextStyle(
                fontFamily: "Poppinss",
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: AppColor.defaultColor,
              ),
            ),
             SizedBox(height: 15),
            Expanded(
              child: SizedBox(
                height: Get.height - 200,
                width: Get.width,
                child: ListView.separated(
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10),
                  itemBuilder: (context,index){
                    return ContainerListViewHistoryWidget();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
