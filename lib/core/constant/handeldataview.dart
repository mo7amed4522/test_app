// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/constant.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/server/server.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest? statusRequest;
  final Widget? widget;
  const HandlingDataView({super.key, this.widget, this.statusRequest});

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    return statusRequest == StatusRequest.loading
        ? Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Lottie.asset(AppLinkImage.loading,
                        width: Get.width, height: Get.height / 1.6)),
              ],
            ),
          )
        : statusRequest == StatusRequest.offlinefailure
            ? Scaffold(
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Lottie.asset(AppLinkImage.offline,
                            width: Get.width, height: Get.height / 1.6)),
                  ],
                ),
              )
            : statusRequest == StatusRequest.serverfailure
                ? Scaffold(
                    body: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Lottie.asset(AppLinkImage.error401,
                                width: Get.width, height: Get.height / 1.6)),
                        Text("Token is not vaild"),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.only(
                                bottom: 60,
                                right: Get.width / 8,
                                left: Get.width / 8),
                            child: GestureDetector(
                                child: animatedOptacity("Back to Login"),
                                onTap: () {
                                  token = myServices.sharedPreferences
                                      .remove('token')
                                      .toString();
                                  Get.offAndToNamed(AppRoute.loginPage);
                                })),
                      ],
                    ),
                  )
                : statusRequest == StatusRequest.failure
                    ? Scaffold(
                        body: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Lottie.asset(AppLinkImage.noData,
                                    width: Get.width,
                                    height: Get.height / 1.6)),
                          ],
                        ),
                      )
                    : widget!;
  }
}
