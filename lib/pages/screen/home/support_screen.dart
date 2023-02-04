// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/support_controller/drop_down_menu_controller.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/support_screen_widget/drop_menu_support_widget.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroungRegister,
      appBar: AppBar(
          backgroundColor: AppColor.backgroungRegister,
          title: Text(
            "Support",
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
      body: GetBuilder<DropDowunMuneSupportWidgetIMP>(
        init: DropDowunMuneSupportWidgetIMP(),
        builder:(controller)=> Container(
          color: AppColor.backgroungRegister,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "FAQS",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: Get.height - 200,
                width: Get.width,
                child: ListView.separated(
                  itemCount: 10,
                    separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10),
                    itemBuilder:(context, index) => Column(
                      children: const [
                        DropMuneSupportWidget(
                        ),
                      ],
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
