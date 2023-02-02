// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/home_controller/nearby_hospital_screen_controller.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';

class NearbyHospitalScreen extends GetView<NearbySchoolScreenControllerIMP> {
  @override
  var controller = Get.put(NearbySchoolScreenControllerIMP());
  NearbyHospitalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroungRegister,
      appBar: AppBar(
        backgroundColor: AppColor.backgroungRegister,
        title: TextWidgetShapeEnglish(
            text: "Nearby Hospital",
            size: 20,
            fontWeight: FontWeight.normal,
            color: AppColor.black),
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
        elevation: 0.0,
      ),
      body: Container(
        color: AppColor.backgroungRegister,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(),
              SizedBox(height: 30),
              ListView(),
            ],
          ),
        ),
      ),
    );
  }
}
