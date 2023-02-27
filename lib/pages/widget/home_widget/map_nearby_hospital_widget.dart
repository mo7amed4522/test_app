// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/home_controller/nearby_hospital_screen_controller.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/module/hospital_model.dart';

class MapNearbyHospitalWidget extends GetView<NearbySchoolScreenControllerIMP> {
  void Function()? onTap;
  Hospitals? hospitals;
   MapNearbyHospitalWidget({super.key,this.onTap,this.hospitals});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 272,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                child: SvgPicture.asset(AppLinkImage.map, height: 124)),
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
                padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                decoration: const BoxDecoration(
                  color: AppColor.nearlyWhite,
                  borderRadius:  BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppLinkImage.hospitalName,height: 16),
                        const SizedBox(width: 15),
                         Text("${hospitals!.name}",style:const TextStyle(fontFamily: "Inter",fontSize: 14,fontWeight: FontWeight.normal))
                      ]
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        SvgPicture.asset(AppLinkImage.location,height: 16),
                        const SizedBox(width: 15),
                         Text("${hospitals!.address}",style:const TextStyle(fontFamily: "Inter",fontSize: 14,fontWeight: FontWeight.normal))
                      ]
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        SvgPicture.asset(AppLinkImage.phone,height: 16),
                        const SizedBox(width: 15),
                         Text("${hospitals!.telephone}",style:const TextStyle(fontFamily: "Inter",fontSize: 14,fontWeight: FontWeight.normal))
                      ]
                    ),
    
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
