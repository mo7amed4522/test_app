import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:test_app/core/constant/statusrequest.dart';
import 'package:test_app/core/func/internet/check_internet.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData({
    required String linkUrl,
    required Map data,
    String? token,
  }) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(
          Uri.parse(linkUrl),
          body: jsonEncode(data),
          headers: {
            'Content-Type': 'application/json',
            'Accept': '*/*',
            'Authorization': 'Bearer $token',
          },
          
        );
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          if (kDebugMode) {
            print(response.statusCode);
          }
          return Right(responsebody);
        } else if(response.statusCode == 400){
          return const Left(StatusRequest.exeptions);
        }else{
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverExption);
    }
  }

  Future<Either<StatusRequest, Map>> postResetPass({
    required String linkUrl,
    required Map data,
    String? token,
  }) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(
          Uri.parse(linkUrl),
          body: jsonEncode(data),
          headers: {
            'Content-Type': 'application/json',
            'Accept': '*/*',
            'Authorization': 'Bearer $token',
            'Token': '$token',
          },
          
        );
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          if (kDebugMode) {
            print(response.statusCode,);
          }
          return Right(responsebody);
        } else if(response.statusCode == 400){
          return const Left(StatusRequest.exeptions);
        }else{
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverExption);
    }
  }

  Future<Either<StatusRequest, Map>> getData({
    required String linkUrl,
    String? token,
  }) async {
    try {
      if (await checkInternet()) {
        var response = await http.get(Uri.parse(linkUrl), headers: {
          'Content-Type': 'application/json',
          'Accept': '*/*',
          'Authorization': 'Bearer $token',
        });

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = json.decode(response.body);
          if (kDebugMode) {
            print(response.statusCode);
          }
          return Right(responsebody);
        } else if(response.statusCode == 400){
          
          return const Left(StatusRequest.exeptions);
        }else{
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverExption);
    }
  }
}
