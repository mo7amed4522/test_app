// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/user_controller/profile_edit_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';

class ProfileScreeen extends GetView<ProfileEditScreenControllerIMP>{
  const ProfileScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroungRegister,
      appBar: AppBar(
        backgroundColor: AppColor.backgroungRegister,
        title: const Text(
          "Profile",
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
                onTap: () {
                  controller.changeEnable();
                }, child: SvgPicture.asset(AppLinkImage.edit)),
          )
        ],
        iconTheme: const IconThemeData(color: AppColor.black),
        elevation: 0.0,
      ),
      body: GetBuilder<ProfileEditScreenControllerIMP>(
        init: ProfileEditScreenControllerIMP(),
        builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              SizedBox(height: 40),
              defaultTextFormPass(
                formEnable: controller.enable,
                  controller: TextEditingController(text: controller.name),
                  assetName: AppLinkImage.iconsProfile,
                  keyboardType: TextInputType.emailAddress,
                  label: "Name",
                  onTap: () {},
                  onChange: (String? vall) {},
                  onSubmit: (String? vall) {},
                  // prefix: Icons.,
                  color: Colors.black,
                  validate: (String? val) {}),
              SizedBox(height: 20),
              defaultTextFormPass(
                formEnable: controller.enable,
                  controller:
                      TextEditingController(text: controller.email),
                  assetName: AppLinkImage.iconsEmail,
                  keyboardType: TextInputType.emailAddress,
                  label: "Email",
                  onTap: () {},
                  onChange: (String? vall) {},
                  onSubmit: (String? vall) {},
                  // prefix: Icons.,
                  color: Colors.black,
                  validate: (String? val) {}),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(
                    right: Get.width / 10, left: Get.width / 10),
                child: GestureDetector(
                    child: animatedOptacity(controller.button),
                    onTap: () {
                      controller.save();
                    }),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
