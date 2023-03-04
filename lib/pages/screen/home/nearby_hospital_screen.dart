// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/home_controller/nearby_hospital_screen_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/handeldataview.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/module/hospital_model.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/home_widget/map_nearby_hospital_widget.dart';

class NearbyHospitalScreen extends StatelessWidget {
  const NearbyHospitalScreen({super.key});

  @override
  Widget build(BuildContext context) {
 
    return GetBuilder<NearbySchoolScreenControllerIMP>(
      init: NearbySchoolScreenControllerIMP(),
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statusRequest,
        widget: Scaffold(
            backgroundColor: AppColor.backgroungRegister,
            appBar: AppBar(
              backgroundColor: AppColor.backgroungRegister,
              title: Text(
                "Nearby Hospital",
                style: TextStyle(
                    fontFamily: "Poppins",
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
                        Get.toNamed(AppRoute.homePage);
                      })),
              iconTheme: const IconThemeData(color: AppColor.black),
              elevation: 0.0,
            ),
            body: Container(
              color: AppColor.backgroungRegister,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  defaultTextFormNormal(
                      controller: controller.searchController,
                      keyboardType: TextInputType.emailAddress,
                      label: "Search",
                      onTap: () {},
                      onChange: (String? vall) {},
                      onSubmit: (String? vall) {},
                      suffix: Icons.search_rounded,
                      color: Colors.black,
                      validate: (String? val) {}),
                  SizedBox(height: 20),
                  Expanded(
                    child: SizedBox(
                      height: Get.height - 300,
                      width: Get.width,
                      child: ListView.builder(
                          itemCount: controller.data.length,
                          itemBuilder: (context, index) {
                            return MapNearbyHospitalWidget(
                              hospitals:
                                  Hospitals.fromJson(controller.data[index]),
                              onTap: () {
                                Get.toNamed(
                                  AppRoute.nearbyHospitalFirst,
                                  arguments: {
                                    "hospitalID":
                                        controller.data[index]['Id'].toString(),
                                  },
                                );
                              },
                            );
                          }),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
