// ignore_for_file: file_names, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/splach_scenn_widget/logo_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.defaultColor,
        body: Container(
            height: Get.height,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                  child: LogoImageWidget(
                      image: AppLink.logoImage, width: 180, height: 180)),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Lifeline',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: "PlayfairDisplay",
                        fontWeight: FontWeight.bold))
              ]))
            ])));
  }
}
