// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomIconBtn extends StatelessWidget {
  void Function()? onPressed;
  CustomIconBtn({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10)),
      child: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
        ),
      ),
    );
  }
}
