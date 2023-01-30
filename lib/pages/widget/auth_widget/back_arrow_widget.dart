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
    return Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10)),
        child:
            IconButton(onPressed: onPressed, icon: Icon(icon, color: color)));
  }
}
