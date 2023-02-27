class HospitalFirstModel {
  int? id;
  String? name;
  String? address;
  String? telephone;
  double? longitude;
  double? latitude;
  bool? isEmergency;
  String? specialty;
  int? status;

  HospitalFirstModel({
    this.id,
    this.name,
    this.address,
    this.telephone,
    this.longitude,
    this.latitude,
    this.isEmergency,
    this.specialty,
    this.status,
  });

  HospitalFirstModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    address = json['Address'];
    telephone = json['Telephone'];
    longitude = json['Longitude'];
    latitude = json['Latitude'];
    isEmergency = json['IsEmergency'];
    specialty = json['Specialty'];
    status = json['Status'];
  }
}
