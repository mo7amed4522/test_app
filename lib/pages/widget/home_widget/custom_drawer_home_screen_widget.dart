// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/home_controller/home_controller.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';

class CustomDrawerHomeWidget extends GetView<HomeControllerIMP> {

   const CustomDrawerHomeWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        //padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            curve: Curves.easeInCirc,
            decoration: const BoxDecoration(
              color: AppColor.nearlyWhite,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 20,
                      width: 30,
                      decoration: BoxDecoration(
                          color: AppColor.backgroungRegister,
                          borderRadius: BorderRadius.circular(4)),
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(
                          AppLinkImage.close,
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      controller.homeModel!.name!,
                      style: TextStyle(
                          color: AppColor.defaultColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      controller.homeModel!.email!,
                      style: TextStyle(
                        color: AppColor.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(color: AppColor.black, height: 5),
          ListTile(
            leading: SvgPicture.asset(AppLinkImage.iconsProfile),
            title: Transform.translate(
              offset: Offset(-25, -4),
              child: Text(
                'Profile',
                style: TextStyle(color: AppColor.grey),
              ),
            ),
            onTap: () {
              controller.goToProfileScreen();
            },
          ),
          ListTile(
            leading: SvgPicture.asset(AppLinkImage.iconsPassword),
            title: Transform.translate(
              offset: Offset(-25, 0),
              child: Text(
                'Change Password',
                style: TextStyle(color: AppColor.grey),
              ),
            ),
            onTap: () {
              controller.goToChangePasswordScreen();
            },
          ),
          Spacer(),
          ListTile(
            leading: SvgPicture.asset(AppLinkImage.logout),
            title: Transform.translate(
              offset: Offset(-25, -5),
              child: Text(
                'Logout',
                style: TextStyle(color: AppColor.grey),
              ),
            ),
            onTap: () {
              controller.logOut();
            },
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
