// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/constant.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/data/datasorcue/hospital/get_all_hospital.dart';

abstract class NearbySchoolScreenController extends GetxController {
  getData();
  checkGps();
  getLocation();
}

class NearbySchoolScreenControllerIMP extends NearbySchoolScreenController {
  TextEditingController searchController = TextEditingController();
  StatusRequest? statusRequest;
  GetHonspital getHonspital = GetHonspital(Get.find());
  bool servicestatus = false;
  List data = [];
  bool haspermission = false;
  late LocationPermission permission;
  Position? positionlate;
  String log = "", lat = "";
  late StreamSubscription<Position> positionStream;

  @override
  void onInit() {
    super.onInit();
    checkGps();
    getData();
  }

  @override
  checkGps() async {
    servicestatus = await Geolocator.isLocationServiceEnabled();
    if (servicestatus) {
      permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          if (kDebugMode) {
            print('Location permissions are denied');
          }
        } else if (permission == LocationPermission.deniedForever) {
          if (kDebugMode) {
            print("'Location permissions are permanently denied");
          }
        } else {
          haspermission = true;
        }
      } else {
        haspermission = true;
      }

      if (haspermission) {
        update();

        getLocation();
      }
    } else {
      if (kDebugMode) {
        print("GPS Service is not enabled, turn on GPS location");
      }
    }

    update();
  }

  @override
  getLocation() {
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      positionlate = position;
      long = positionlate!.longitude;
      lati = positionlate!.latitude;

      update();
    }).catchError((e) {
      if (kDebugMode) {
        print(e);
      }
    });
  }

  @override
  getData() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await getHonspital.postData(long, lati);
    statusRequest = handlingData(response);
    update();
    if (statusRequest == StatusRequest.success) {
      if (response['Status'] == 0) {
        data.addAll(response['Hospitals']);
        update();
      } else {
        Get.snackbar(
          "No Data",
          "No Data retrevie please check again",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    }
  }
}
