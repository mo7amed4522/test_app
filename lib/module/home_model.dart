class HomeModel {
  String? name;
  String? email;
  int? status;



  HomeModel.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    email = json['Email'];
    status = json['Status'];
  }

}