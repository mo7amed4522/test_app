import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/user_controller/change_password_users_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';

class ChangePasswordUserScreen extends StatelessWidget {
  const ChangePasswordUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroungRegister,
      appBar: AppBar(
        backgroundColor: AppColor.backgroungRegister,
        title: const Text(
          "Change Password",
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
      body: GetBuilder<ChangeUsersPasswordControllerIMP>(
        init: ChangeUsersPasswordControllerIMP(),
        builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              const SizedBox(height: 10),
              SizedBox(
                height: Get.height / 4,
                width: Get.width/1,
                child: SvgPicture.asset(AppLinkImage.resetPass,
                    fit: BoxFit.contain),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: SizedBox(
                  height: Get.height - 300,
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: ListView(
                      children: [
                        defaultTextFormPass(
                          controller: controller.currentPasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          assetName: AppLinkImage.iconsPassword,
                          label: "Current Password",
                          onTap: () {},
                          onChange: (String? vall) {},
                          onSubmit: (String? vall) {},
                          prefix: Icons.lock_outline,
                          validate: (String? vall) {},
                          color: AppColor.black,
                          isPassword: true,
                        ),
                        const SizedBox(height: 15),
                        defaultTextFormPass(
                          controller: controller.newPasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          assetName: AppLinkImage.iconsPassword,
                          label: "New Password",
                          onTap: () {},
                          onChange: (String? vall) {},
                          onSubmit: (String? vall) {},
                          prefix: Icons.lock_outline,
                          validate: (String? vall) {},
                          color: AppColor.black,
                          isPassword: true,
                        ),
                        const SizedBox(height: 15),
                        defaultTextFormPass(
                          controller: controller.confNewPasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          assetName: AppLinkImage.iconsPassword,
                          label: "Confirm Password",
                          onTap: () {},
                          onChange: (String? vall) {},
                          onSubmit: (String? vall) {},
                          prefix: Icons.lock_outline,
                          validate: (String? vall) {},
                          color: AppColor.black,
                          isPassword: true,
                        ),
                        const SizedBox(height: 40),
                        Padding(
                          padding: EdgeInsets.only(
                              right: Get.width / 10, left: Get.width / 10),
                          child: GestureDetector(
                              child: animatedOptacity("Save"),
                              onTap: () {
                                controller.successReset(context);
                              }),
                        ),
                      ],
                    ),
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
