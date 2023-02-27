class UserHistoryModel {
  int? id;
  String? patientName;
  String? bodyPart;
  String? swedishBodyPart;
  int? hospitalId;
  String? hospital;
  String? reportedAt;
  List<Answers>? answers;
  int? status;

  UserHistoryModel({
    this.id,
    this.patientName,
    this.bodyPart,
    this.swedishBodyPart,
    this.hospitalId,
    this.hospital,
    this.reportedAt,
    this.answers,
    this.status,
  });

  UserHistoryModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    patientName = json['PatientName'];
    bodyPart = json['BodyPart'];
    swedishBodyPart = json['SwedishBodyPart'];
    hospitalId = json['HospitalId'];
    hospital = json['Hospital'];
    reportedAt = json['ReportedAt'];
    if (json['Answers'] != null) {
      answers = <Answers>[];
      json['Answers'].forEach((v) {
        answers!.add(Answers.fromJson(v));
      });
    }
    status = json['Status'];
  }

}

class Answers {
  String? question;
  String? questionType;
  String? answer;

  Answers({this.question, this.questionType, this.answer});

  Answers.fromJson(Map<String, dynamic> json) {
    question = json['Question'];
    questionType = json['QuestionType'];
    answer = json['Answer'];
  }
}
