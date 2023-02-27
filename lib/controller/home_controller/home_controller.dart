// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors, unused_local_variable

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:test_app/core/constant/constant.dart';
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/handel_data.dart';
import 'package:test_app/core/route/app_routes.dart';
import 'package:test_app/core/server/server.dart';
import 'package:test_app/data/datasorcue/profile/edit_profile.dart';
import 'package:test_app/module/home_model.dart';

abstract class HomeController extends GetxController {
  goToChangePasswordScreen();
  goToProfileScreen();
  logOut();
  getData();
  checkGps();
  getLocation();
}

class HomeControllerIMP extends HomeController {
  StatusRequest? statusRequest;
  MyServices myServices = Get.find();
  EditData editData = EditData(Get.find());
  HomeModel? homeModel;
  bool servicestatus = false;
  bool haspermission = false;
  late LocationPermission permission;
  Position? positionlate;
  String log = "", lat = "";
  late StreamSubscription<Position> positionStream;

  @override
  goToChangePasswordScreen() {
    Get.toNamed(AppRoute.changePassword);
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
  goToProfileScreen()  {
    Get.toNamed(AppRoute.userProfile, arguments: {
        "Name": homeModel!.name,
        "Email": homeModel!.email,
      });
  }

  @override
  logOut() {
    token = myServices.sharedPreferences.remove('token').toString();
    Get.offAndToNamed(AppRoute.loginPage);
  }

  @override
  void onInit() {
    checkGps();
    getData();
    super.onInit();
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
    statusRequest = StatusRequest.loading;
    update();
    var response = await editData.post();
    statusRequest = handlingData(response);
    update();
    if (statusRequest == StatusRequest.success) {
      homeModel = HomeModel.fromJson(response);
      update();
    } else {
      StatusRequest.failure;
    }
  }
}
