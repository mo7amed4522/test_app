// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LogoImageWidget extends StatelessWidget {
  String? image;
  LogoImageWidget({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5.0),
          topRight: Radius.circular(5.0),
          bottomLeft: Radius.circular(5.0),
          bottomRight: Radius.circular(5.0),
        ),
        image: DecorationImage(
          image: AssetImage(
            image!,
          ),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
