import 'package:test_app/core/constant/link_photo.dart';
import 'package:test_app/core/route/app_routes.dart';

class HomeModule {
  String? name;
  String? image;

  HomeModule({this.name, this.image});

  HomeModule.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    data['Image'] = image;
    return data;
  }

  var list = [
    {
      "Name": "Register Case",
      "Image": AppLinkImage.regiserCase,
      "Funchion": AppRoute.registerCase
    },
    {
      "Name": "Nerby Hositals",
      "Image": AppLinkImage.nearbyHospital,
      "Funchion": AppRoute.nearbyHospital
    },
    {
      "Name": "History",
      "Image": AppLinkImage.history,
      "Funchion": AppRoute.historyPage
    },
    {
      "Name": "Support",
      "Image": AppLinkImage.support,
      "Funchion": AppRoute.support
    },
  ];
}
