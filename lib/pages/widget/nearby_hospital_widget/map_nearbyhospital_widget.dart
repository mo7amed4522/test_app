// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_app/controller/hosiptal_controller/first_hospital_controller.dart';

class MapNearbyHospialWidget extends GetView<FirstNearByHospitalScreenIMP> {
   MapNearbyHospialWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: Get.width,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20),bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            child: SizedBox(
            height: 200,
            child: GoogleMap(
              //mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                zoom: 14,
                target: LatLng(
                 controller.items['Latitude'],
                 controller.items['Longitude'] 
                ),
              ),
              onMapCreated: (GoogleMapController controll) {
                    if (controller.controllerMap.isCompleted) {
                      controller.markeradd(controller.items['Latitude'], controller.items['Longitude'] );
                    } else {
                      controller.controllerMap.complete(controll);
                      controller.markeradd(controller.items['Latitude'], controller.items['Longitude'] );
                    }
                  },
            ),
            ),
          ),
        ],
      ),
    );
  }
}
