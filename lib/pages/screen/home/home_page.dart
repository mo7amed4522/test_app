// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:test_app/controller/home_controller/home_controller.dart';
import 'package:test_app/core/constant/handeldataview.dart';
import 'package:test_app/core/func/auth/aleartexitapp.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/module/home_page.dart';
import 'package:test_app/pages/widget/home_widget/card_item_widget.dart';
import 'package:test_app/pages/widget/home_widget/custom_drawer_home_screen_widget.dart';

class HomePageScreen extends StatelessWidget {
  var column = Column(mainAxisAlignment: MainAxisAlignment.start, children: [
    ...HomeModule().list.map((e) {
      return GestureDetector(
        onTap: () {},
        child: ItemWidget(
          e,
        ),
      );
    }).toList()
  ]);
  HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: aleratExitApp,
      child: GetBuilder<HomeControllerIMP>(
          init: HomeControllerIMP(),
          builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: Scaffold(
                  appBar: AppBar(
                    toolbarHeight: 80,
                    title: Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          color: AppColor.nearlyWhite),
                    ),
                    centerTitle: true,
                    iconTheme: const IconThemeData(color: AppColor.back),
                    backgroundColor: AppColor.defaultColor,
                    elevation: 0.0,
                  ),
                  drawer: CustomDrawerHomeWidget(),
                  backgroundColor: AppColor.defaultColor,
                  body: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35)),
                          color: AppColor.nearlyWhite),
                      child: GridView.count(
                        padding: EdgeInsets.all(5),
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 2,
                        children: [
                          ...HomeModule().list.map((e) {
                            return ItemWidget(e);
                          }).toList()
                        ],
                      )),
                ),
              )),
    );
  }
}
