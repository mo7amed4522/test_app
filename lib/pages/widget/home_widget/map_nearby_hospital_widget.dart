// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_app/controller/home_controller/nearby_hospital_screen_controller.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/module/hospital_model.dart';

class MapNearbyHospitalWidget extends GetView<NearbySchoolScreenControllerIMP> {
  void Function()? onTap;
  Hospitals? hospitals;
  Function(GoogleMapController)? onMapCreated;
  MapNearbyHospitalWidget(
      {super.key, this.onTap, this.onMapCreated, this.hospitals});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 275,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: SizedBox(
                height: 124,
                width: Get.width / 1.22,
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                      hospitals!.latitude!,
                      hospitals!.longitude!,
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
            Positioned(
              bottom: 19,
              height: 130,
              width: Get.width / 1.22,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: const BoxDecoration(
                    color: AppColor.nearlyWhite,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Row(children: [
                      SvgPicture.asset(AppLinkImage.hospitalName, height: 16),
                      const SizedBox(width: 15),
                      Text("${hospitals!.name}",
                          style: const TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.normal))
                    ]),
                    const SizedBox(height: 10),
                    Row(children: [
                      SvgPicture.asset(AppLinkImage.location, height: 16),
                      const SizedBox(width: 15),
                      Text("${hospitals!.address}",
                          style: const TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.normal))
                    ]),
                    const SizedBox(height: 10),
                    Row(children: [
                      SvgPicture.asset(AppLinkImage.phone, height: 16),
                      const SizedBox(width: 15),
                      Text("${hospitals!.telephone}",
                          style: const TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.normal))
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
