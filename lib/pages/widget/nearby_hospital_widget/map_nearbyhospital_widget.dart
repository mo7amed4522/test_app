import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/core/constant/link_photo.dart';

class MapNearbyHospialWidget extends StatelessWidget {
  const MapNearbyHospialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: SvgPicture.asset(
              AppLinkImage.map,
              fit: BoxFit.contain,
              height:200,
              
            ),
          ),
          Positioned(
              right: 92,
              top: 83,
              child: ClipRRect(
                  child: SvgPicture.asset(AppLinkImage.pin, height: 20))),
        ],
      ),
    );
  }
}
