// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_app/controller/hosiptal_controller/first_hospital_controller.dart';
import 'package:test_app/core/constant/link_photo.dart';

class MapNearbyHospialWidget extends GetView<FirstNearByHospitalScreenIMP> {
  Function(GoogleMapController)? onMapCreated;
   MapNearbyHospialWidget({super.key,this.onMapCreated});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: SizedBox(
            height: 200,
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: LatLng(
                 controller.items['Latitude'],
                 controller.items['Longitude'] 
                ),
              ),
              onMapCreated: onMapCreated,
            ),
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
