class Fogsgenerated {
  List<Faqs> faqs =[];
  int? status;


  Fogsgenerated.fromJson(Map<String, dynamic> json) {
    json['Faqs'].forEach(
      (element) {
        faqs.add(
          Faqs.fromJson(element),
        );
      }
    );
    status = json['Status'];
  }

  
}

class Faqs {
  int? id;
  String? question;
  String? answer;
  int? order;

  Faqs({this.id, this.question, this.answer, this.order});

  Faqs.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    question = json['Question'];
    answer = json['Answer'];
    order = json['Order'];
  }


}