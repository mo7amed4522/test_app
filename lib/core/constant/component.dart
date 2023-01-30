// ignore_for_file: prefer_const_constructors

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';

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
        Function? onTap,
        int? maxLength,
        int maxLines = 1,
        required color,
        required Function validate,
        bool isPassword = false}) =>
    TextFormField(
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
                color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
            labelStyle: TextStyle(color: Colors.grey),
            labelText: label,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
            prefixIcon: Icon(prefix, color: AppColor.nearlyBlue),
            suffixIcon: suffix != null
                ? IconButton(
                    onPressed: () {
                      suffixPress!();
                    },
                    icon: Icon(suffix, color: AppColor.nearlyBlue))
                : null));

Widget animatedOptacity(String text) {
  return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: 0.99,
      child: Padding(
          padding: const EdgeInsets.only(left: 30, bottom: 16, right: 30),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            color: AppColor.defaultColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: AppColor.nearlyBlue.withOpacity(0.5),
                                  offset: const Offset(1.1, 1.1),
                                  blurRadius: 10.0)
                            ]),
                        child: Center(
                            child: TextWidgetShapeEnglish(
                                text: text,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                size: 30))))
              ])));
}

SnackBar snackBar(
        {required String title,
        required String message,
        required ContentType contentType}) =>
    SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColor.snackBar,
        content: AwesomeSnackbarContent(
            title: title, message: message, contentType: contentType));
