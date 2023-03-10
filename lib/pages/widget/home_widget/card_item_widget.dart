// ignore_for_file: prefer_typing_uninitialized_variables, sized_box_for_whitespace, must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/home_controller/home_controller.dart';
import 'package:test_app/core/theme/theme_color.dart';

class ItemWidget extends GetView<HomeControllerIMP> {
  var data;
  ItemWidget(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: InkWell(
        onTap: () {
          Get.toNamed(data["Funchion"]);
        },
        child: Container(
            decoration: BoxDecoration(
                color: AppColor.nearlyWhite,
                borderRadius: BorderRadius.circular(25),
                boxShadow: kElevationToShadow[9]),
            padding: const EdgeInsets.all(12.0),
            height: 120,
            child: Card(
                child: Column(children: [
              Expanded(
                  child: Container(
                      height: 140,
                      child: SvgPicture.asset(data["Image"],
                          fit: BoxFit.contain))),
              Center(
                  child: Text(
                 data["Name"],
                 style: TextStyle(
                  fontSize: 15,
                fontWeight: FontWeight.bold,
                 ),
                
              ))
            ]))),
      ),
    );
  }
}
