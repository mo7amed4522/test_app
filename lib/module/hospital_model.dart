class HonspitalModel {
  List<Hospitals>? hospitals;
  int? status;

  HonspitalModel({this.hospitals, this.status});

  HonspitalModel.fromJson(Map<String, dynamic> json) {
    if (json['Hospitals'] != null) {
      hospitals = <Hospitals>[];
      json['Hospitals'].forEach((v) {
        hospitals!.add(Hospitals.fromJson(v));
      });
    }
    status = json['Status'];

  }
}

class Hospitals {
  int? id;
  String? name;
  bool? isEmergency;
  String? specialty;
  String? telephone;
  String? address;
  double? latitude;
  double? longitude;
  double? distance;

  Hospitals(
      {this.id,
      this.name,
      this.isEmergency,
      this.specialty,
      this.telephone,
      this.address,
      this.latitude,
      this.longitude,
      this.distance});

  Hospitals.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    isEmergency = json['IsEmergency'];
    specialty = json['Specialty'];
    telephone = json['Telephone'];
    address = json['Address'];
    latitude = json['Latitude'];
    longitude = json['Longitude'];
    distance = json['Distance'];
  }
}