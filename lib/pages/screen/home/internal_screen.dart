// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:test_app/controller/internal_controller/internal_first_page_controller.dart';
import 'package:test_app/core/constant/handeldataview.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/home_widget/internal_drop_mune_widget.dart';

class InternalScreen extends StatelessWidget {
  const InternalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<InternalFirstPageControllerIMP>(
        init: InternalFirstPageControllerIMP(),
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Scaffold(
              backgroundColor: AppColor.backgroungRegister,
              appBar: AppBar(
                toolbarHeight: 80,
                title: Text(
                    "Register Case",
                    style: TextStyle(fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    color: AppColor.black),
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
                backgroundColor: AppColor.backgroungRegister,
                elevation: 0.0,
              ),
              body: Container(
                  color: AppColor.backgroungRegister,
                  padding: EdgeInsets.only(left: 1, right: 1, top: 5),
                  child: Column(children: [
                    SizedBox(height: 20),
                    Center(
                        child: Text(
                            "Please select the part of Pain",
                            style: TextStyle(
                               fontSize: 18,
                               fontFamily: "Poppins",
                            color: AppColor.black,
                            fontWeight: FontWeight.normal
                            ),
                           )),
                    InternalDropMnueWidget(),
                  ])),
            )));
  }
}
