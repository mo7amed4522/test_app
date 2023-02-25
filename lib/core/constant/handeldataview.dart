// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/route/app_routes.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest? statusRequest;
  final Widget? widget;
  const HandlingDataView({super.key, this.widget, this.statusRequest});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Lottie.asset(AppLinkImage.loading,
                      width: 250, height: 250)),
              Text("loading")
            ],
          )
        : statusRequest == StatusRequest.offlinefailure
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Lottie.asset(AppLinkImage.offline,
                          width: 250, height: 250)),
                  Text("offline failure")
                ],
              )
            : statusRequest == StatusRequest.serverfailure
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: Lottie.asset(AppLinkImage.error401,
                              width: Get.width, height: Get.height /1.6)),
                      Text("Token is not vaild"),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(
                              bottom: 60,right: Get.width / 8, left: Get.width / 8),
                          child: GestureDetector(
                              child: animatedOptacity("Back to Login"),
                              onTap: () {
                                Get.offAndToNamed(AppRoute.loginPage);
                              })),
                    ],
                  )
                : statusRequest == StatusRequest.failure
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Lottie.asset(AppLinkImage.noData,
                                  width: 250, height: 250)),
                          Text("failure")
                        ],
                      )
                    : widget!;
  }
}
