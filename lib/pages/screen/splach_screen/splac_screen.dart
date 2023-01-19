// ignore_for_file: file_names, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/pages/widget/splach_scenn_widget/logo_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: LogoImageWidget(
              image: AppLink.logoImage,
            )),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Tourism ',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' APP',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'your eye welcome you',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
