import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/theme/theme_color.dart';

class ClanderNearbyHospitalWidget extends StatelessWidget {
  const ClanderNearbyHospitalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height - 450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColor.nearlyWhite,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppLinkImage.hospitalName, height: 18),
                const SizedBox(width: 20),
                const Text(
                  "NYU Langone Hospital",
                  style: TextStyle(
                    fontSize: 19,
                    fontFamily: "Inter",
                   fontWeight: FontWeight.w600,
                    color: AppColor.defaultColor
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(AppLinkImage.location, height: 18),
                const SizedBox(width: 14),
                const Text(
                  "550 First Avenue, New Yourk, NY",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Inter",
                   // fontWeight: FontWeight.normal,
                   // color: AppColor.defaultColor
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18,left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(AppLinkImage.phone, height: 18),
                const SizedBox(width: 14),
                const Text(
                  "5016-6402",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Inter",
                   // fontWeight: FontWeight.normal,
                   // color: AppColor.defaultColor
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18,left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(AppLinkImage.speciality, height: 18),
                const SizedBox(width: 14),
                const Text(
                  "Hector Vardcentral",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Inter",
                   // fontWeight: FontWeight.normal,
                   // color: AppColor.defaultColor
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child:  Divider(color: Colors.grey),
          ),
          const SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const[
                 Text(
                  "Availabe",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Inter",
                   fontWeight: FontWeight.w500,
                   color: AppColor.defaultColor
                  ),
                ),
                Text(
                  "3 hours waiting time",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Inter",
                   //fontWeight: FontWeight.normal,
                   //color: AppColor.defaultColor
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 23),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const[
                 Text(
                  "Mondday",
                  style: TextStyle(
                    fontSize: 15,
                    //fontFamily: "Poppins",
                   fontWeight: FontWeight.normal,
                   //color: AppColor.defaultColor
                  ),
                ),
                Text(
                  "05:00 PM - 8:00 PM",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Inter",
                   //fontWeight: FontWeight.normal,
                   //color: AppColor.defaultColor
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const[
                 Text(
                  "Tuesday",
                  style: TextStyle(
                    fontSize: 15,
                    //fontFamily: "Poppins",
                   fontWeight: FontWeight.normal,
                  // color: AppColor.defaultColor
                  ),
                ),
                Text(
                  "05:00 PM - 8:00 PM",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Inter",
                   //fontWeight: FontWeight.normal,
                   //color: AppColor.defaultColor
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const[
                 Text(
                  "Wednesday",
                  style: TextStyle(
                    fontSize: 15,
                    //fontFamily: "Poppins",
                   fontWeight: FontWeight.normal,
                   //color: AppColor.defaultColor
                  ),
                ),
                Text(
                  "05:00 PM - 8:00 PM",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Inter",
                   //fontWeight: FontWeight.normal,
                   //color: AppColor.defaultColor
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const[
                 Text(
                  "Thursday",
                  style: TextStyle(
                    fontSize: 15,
                    //fontFamily: "Poppins",
                   fontWeight: FontWeight.normal,
                   //color: AppColor.defaultColor
                  ),
                ),
                Text(
                  "05:00 PM - 8:00 PM",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Inter",
                   //fontWeight: FontWeight.normal,
                   //color: AppColor.defaultColor
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const[
                 Text(
                  "Friday",
                  style: TextStyle(
                    fontSize: 15,
                    //fontFamily: "Poppins",
                   fontWeight: FontWeight.normal,
                   //color: AppColor.defaultColor
                  ),
                ),
                Text(
                  "05:00 PM - 8:00 PM",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Inter",
                   //fontWeight: FontWeight.normal,
                   //color: AppColor.defaultColor
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const[
                 Text(
                  "Saturday",
                  style: TextStyle(
                    fontSize: 15,
                    //fontFamily: "Poppins",
                   fontWeight: FontWeight.normal,
                  // color: AppColor.defaultColor
                  ),
                ),
                Text(
                  "05:00 PM - 8:00 PM",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Inter",
                   //fontWeight: FontWeight.normal,
                   //color: AppColor.defaultColor
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
