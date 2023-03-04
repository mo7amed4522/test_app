// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/home_controller/history_screen_controller.dart';
import 'package:test_app/core/constant/handeldataview.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/history_widget/history_ListView_widget.dart';
import 'package:test_app/pages/widget/history_widget/histroey_style_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserHistoryScreenControllerIMP>(
      init: UserHistoryScreenControllerIMP(),
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statusRequest,
        widget: Scaffold(
          backgroundColor: AppColor.backgroungRegister,
          appBar: AppBar(
              backgroundColor: AppColor.backgroungRegister,
              title: Text(
                "User History",
                style: TextStyle(
                    fontFamily: "Inter",
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
                        Get.back();
                      })),
              iconTheme: const IconThemeData(color: AppColor.black),
              elevation: 0.0),
          body: Container(
              color: AppColor.backgroungRegister,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  HistoryBarWidget(),
                  Expanded(
                    child: SizedBox(
                      height: Get.height - 50,
                      width: Get.width,
                      child: ListView.builder(
                        itemCount: controller.items.length,
                        itemBuilder: (context, index) {
                          String data = controller.items[index]['ReportedAt'];
                          var e = data.split("T").first;
                          var en = data.substring(11, 16);
                          return HistoryListViewBuilderWidget(
                            dataTime: e.toString(),
                            timeDate: "${en.toString()} T",
                            hospitalName: controller.items[index]['Hospital'] ?? "Hospital",
                            onTap: () {
                              Get.toNamed(AppRoute.firstHistoryScreen,
                                  arguments: {
                                    "IDCase": controller.items[index]['Id']
                                        .toString(),
                                    "hosptailName": controller.items[index]
                                        ['Hospital']?? "Hospital",
                                    "dataTime": e.toString(),
                                    "timeDate": en.toString(),
                                  });
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
