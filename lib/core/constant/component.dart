// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';

Widget defaultTextFormwithoutasset(
        {required TextEditingController controller,
        required TextInputType keyboardType,
        required String label,
        bool formEnable = true,
        bool readOnly = false,
        IconData? prefix,
        IconData? suffix,
        Function? suffixPress,
        Function? onSubmit,
        Function? onChange,
        Function? onTap,
        int? maxLength,
        int maxLines = 1,
        required color,
        required Function validate,
        bool isPassword = false}) =>
    Container(
      decoration: const BoxDecoration(
        color: AppColor.nearlyWhite,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      height: 180,
      child: Row(
        children: [
          Container(
            width: 0.9.w,
            decoration: const BoxDecoration(
                color: AppColor.defaultColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
          ),
          Expanded(
            child: TextFormField(
                style: TextStyle(color: color),
                maxLength: maxLength,
                maxLines: maxLines,
                readOnly: readOnly,
                obscureText: isPassword,
                enabled: formEnable,
                controller: controller,
                keyboardType: keyboardType,
                onTap: () {
                  onTap!();
                },
                onFieldSubmitted: (value) {
                  onSubmit!(value);
                },
                onChanged: (value) {
                  onChange!(value);
                },
                validator: (s) {
                  return validate(s);
                },
                decoration: InputDecoration(
                    errorStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: label,
                    border: InputBorder.none,
                    prefixIcon: Icon(prefix, color: AppColor.nearlyBlue),
                    suffixIcon: suffix != null
                        ? IconButton(
                            onPressed: () {
                              suffixPress!();
                            },
                            icon: Icon(suffix, color: AppColor.nearlyBlue))
                        : null)),
          ),
        ],
      ),
    );

Widget defaultTextForm(
        {required TextEditingController controller,
        required TextInputType keyboardType,
        required String label,
        bool formEnable = true,
        bool readOnly = false,
        IconData? prefix,
        IconData? suffix,
        Function? suffixPress,
        Function? onSubmit,
        Function? onChange,
        String? assetName,
        Function? onTap,
        int? maxLength,
        int maxLines = 1,
        required color,
        required Function validate,
        bool isPassword = false}) =>
    Container(
      decoration: BoxDecoration(
        color: AppColor.containerWidget,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 55,
      width: Get.width,
      child: Row(
        children: [
          SizedBox(
            width: 3,
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.defaultColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(width: 9),
          SvgPicture.asset(
            assetName!,
            //height: 5,
          ),
          SizedBox(width: 9),
          Expanded(
            child: TextFormField(
                style: TextStyle(color: color),
                maxLength: maxLength,
                maxLines: maxLines,
                readOnly: readOnly,
                obscureText: isPassword,
                enabled: formEnable,
                controller: controller,
                keyboardType: keyboardType,
                onTap: () {
                  onTap!();
                },
                onFieldSubmitted: (value) {
                  onSubmit!(value);
                },
                onChanged: (value) {
                  onChange!(value);
                },
                validator: (s) {
                  return validate(s);
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    errorStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                    labelStyle: TextStyle(color: AppColor.defaultColor),
                    labelText: label,

                    //prefixIcon: Icon(prefix, color: AppColor.nearlyBlue),
                    suffixIcon: suffix != null
                        ? IconButton(
                            onPressed: () {
                              suffixPress!();
                            },
                            icon: Icon(suffix, color: AppColor.nearlyBlue))
                        : null)),
          ),
        ],
      ),
    );

Widget animatedOptacity(String text) {
  return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: 0.99,
      child: Padding(
          padding: const EdgeInsets.only(left: 40, bottom: 16, right: 40),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: AppColor.buttonColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                  color: AppColor.buttonColor,
                                  offset: Offset(1.1, 1.1),
                                  blurRadius: 10.0)
                            ]),
                        child: Center(
                            child: TextWidgetShapeEnglish(
                                text: text,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                size: 20))))
              ])));
}
