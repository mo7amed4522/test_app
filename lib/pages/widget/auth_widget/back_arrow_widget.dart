// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomIconBtn extends StatelessWidget {
  void Function()? onPressed;
  IconData icon;
  Color color;
  CustomIconBtn(
      {super.key, required this.color, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      //color: AppColor.nearlyWhite,
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
