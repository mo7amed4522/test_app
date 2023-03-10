// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/register_case_controller.dart/register_case_sec_controller.dart';
import 'package:test_app/core/constant/handeldataview.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/home_widget/drop_mnue_widget.dart';

class InteractiveScreen extends StatelessWidget {
  const InteractiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterCaseSecondIMP>(
        init: RegisterCaseSecondIMP(),
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Scaffold(
              backgroundColor: AppColor.backgroungRegister,
              appBar: AppBar(
                toolbarHeight: 80,
                title: Text(
                  "Register Case",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                      color: AppColor.black),
                ),
                centerTitle: true,
                
                leading: CustomIconBtn(
                    icon: Icons.arrow_back,
                    color: AppColor.black,
                    onPressed: () {
                      Get.back();
                    }),
                iconTheme: const IconThemeData(color: AppColor.black),
                backgroundColor: AppColor.backgroungRegister,
                elevation: 0.0,
              ),
              body: Container(
                  color: AppColor.backgroungRegister,
                  padding: EdgeInsets.only(top: 5, right: 1, left: 1),
                  child: Column(children: [
                    SizedBox(height: 7),
                    Center(
                        child: Text(
                      "Please select the part of Pain",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Poppins",
                          color: AppColor.black,
                          fontWeight: FontWeight.w500),
                    )),
                    SizedBox(height: 25),
                    Row(children: [
                      Expanded(
                        child: SvgPicture.asset(AppLinkImage.frontBody,
                            fit: BoxFit.contain),
                      ),
                      Expanded(
                        child: SvgPicture.asset(AppLinkImage.backBody,
                            fit: BoxFit.contain),
                      )
                    ]),
                    SizedBox(height: 50),
                    DropMnueWidget(),
                  ])),
            )));
  }
}
