// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/user_controller/profile_edit_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/handeldataview.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/func/auth/validationinput.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';

class ProfileScreeen extends GetView<ProfileEditScreenControllerIMP> {
  @override
  var controller = Get.put(ProfileEditScreenControllerIMP());
  ProfileScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = GlobalKey<FormState>();

    return GetBuilder<ProfileEditScreenControllerIMP>(
      init: ProfileEditScreenControllerIMP(),
      builder: (controller) => HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: Scaffold(
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
                        Get.toNamed(AppRoute.homePage);
                      })),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: GestureDetector(
                      onTap: () {
                        controller.changeEnable();
                      },
                      child: SvgPicture.asset(AppLinkImage.edit)),
                )
              ],
              iconTheme: const IconThemeData(color: AppColor.black),
              elevation: 0.0,
            ),
            body: Form(
              key: formState,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    defaultTextFormPass(
                        formEnable: controller.enable,
                        controller: controller.namecontroller,
                        assetName: AppLinkImage.iconsProfile,
                        keyboardType: TextInputType.emailAddress,
                        label: "Name",
                        onTap: () {},
                        onChange: (String? vall) {},
                        onSubmit: (String? vall) {},
                        color: Colors.black,
                        validate: (String? val) {
                          return validInput(val!, 6, 20, "name");
                        }),
                    SizedBox(height: 20),
                    defaultTextFormPass(
                        formEnable: controller.enable,
                        controller: controller.emailController,
                        assetName: AppLinkImage.iconsEmail,
                        keyboardType: TextInputType.emailAddress,
                        label: "Email",
                        onTap: () {},
                        onChange: (String? vall) {},
                        onSubmit: (String? vall) {},
                        color: Colors.black,
                        validate: (String? val) {
                          return validInput(val!, 8, 50, "email");
                        }),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                          right: Get.width / 10, left: Get.width / 10),
                      child: GestureDetector(
                          child: animatedOptacity(controller.button),
                          onTap: () {
                            var formData = formState.currentState;
                            if (formData!.validate()) {
                              controller.save();
                            } else {
                              Get.snackbar("Error", "close Edit and back !!",
                                  snackPosition: SnackPosition.BOTTOM);
                            }
                          }),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
