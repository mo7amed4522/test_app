// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextWidgetShapeEnglish extends StatelessWidget {
  String text;
  double size;
  Color? color;
  FontWeight? fontWeight;
  TextWidgetShapeEnglish(
      {super.key,
      this.color,
      this.fontWeight,
      required this.text,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: size,
          fontWeight: fontWeight,
          fontFamily: "PlayfairDisplay",
          color: color,
        ));
  }
}
