// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/hosiptal_controller/first_hospital_controller.dart';
import 'package:test_app/core/constant/handeldataview.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/module/hosiptal_first_model.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/nearby_hospital_widget/clander_nearby_hospital_widget.dart';
import 'package:test_app/pages/widget/nearby_hospital_widget/map_nearbyhospital_widget.dart';

class FirstNearByHospitalScreen extends StatelessWidget {
  const FirstNearByHospitalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FirstNearByHospitalScreenIMP>(
      init: FirstNearByHospitalScreenIMP(),
      builder: (controller) => HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: Scaffold(
            backgroundColor: AppColor.backgroungRegister,
            appBar: AppBar(
              backgroundColor: AppColor.backgroungRegister,
              title: const Text(
                "Nearby Hospital",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 23,
                    color: AppColor.black,
                    fontWeight: FontWeight.w500),
              ),
              centerTitle: true,
              leading: Padding(
                  padding: const EdgeInsets.only(left: 5),
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  ClanderNearbyHospitalWidget(
                    hospitalFirstModel:
                        HospitalFirstModel.fromJson(controller.items),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    child: MapNearbyHospialWidget(),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
