// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/questation_controller/questition_controller.dart';
import 'package:test_app/controller/questation_controller/yes_no_question_controller.dart';
import 'package:test_app/core/constant/component.dart';
import 'package:test_app/core/constant/constant.dart';
import 'package:test_app/core/constant/handeldataview.dart';
import 'package:test_app/core/theme/theme_color.dart';
import 'package:test_app/pages/widget/auth_widget/back_arrow_widget.dart';
import 'package:test_app/pages/widget/auth_widget/text_widget.dart';
import 'package:test_app/pages/widget/question_widget/freetext_widget.dart';
import 'package:test_app/pages/widget/question_widget/yes_no_wigdet.dart';

class QuestationScreen extends StatelessWidget {
  var c = Get.lazyPut(() => YesNoQuestionScreenControllerIMP());
  QuestationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColor.backgroungRegister,
            automaticallyImplyLeading: false,
            elevation: 0.0,
            title: TextWidgetShapeEnglish(
              text: "Register Case",
              size: 20,
              fontWeight: FontWeight.normal,
              color: AppColor.black,
            ),
            leading: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: CustomIconBtn(
                  icon: Icons.arrow_back,
                  color: AppColor.black,
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
            ),
            iconTheme: const IconThemeData(color: AppColor.black),
            centerTitle: true),
        body: GetBuilder<QuestitionScreenControllerIMP>(
            init: QuestitionScreenControllerIMP(),
            builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    color: AppColor.backgroungRegister,
                    child: Column(children: [
                      Expanded(
                        child: ListView.separated(
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 20),
                            itemCount: controller.data.length,
                            itemBuilder: (context, index) {
                              controller.controllers
                                  .add(TextEditingController());
                              if (controller.data[index]['QuestionType'] ==
                                  "FreeText") {
                                return FreeTextWidget(
                                  questionText: controller.data[index]
                                      ["Question"],
                                  controller: controller.controllers[index],
                                );
                              } else {
                                return YesNoQuestionWidget(
                                  quesText: controller.data[index]['Question'],
                                  edit: controller.controllers[index],
                                );
                              }
                            }),
                      ),
                      Container(
                          padding: EdgeInsets.only(
                              right: Get.width / 8, left: Get.width / 8),
                          child: GestureDetector(
                              child: animatedOptacity("Next"),
                              onTap: () {
                                for (i;
                                    i < controller.data.length;
                                    i++) {
                                  controller.result
                                      .add(controller.controllers[i].text);
                                      map.add(
                                       {
                                        "QuestionId":controller.questID[i].toString(),
                                        "Answer": controller.controllers[i].text,
                                       }
                                      );
                                }
                                psotData.addAll({
                                  "BodyPartId":controller.IdController.text,
                                  "Answers":map,
                                  "Longitude":long,
                                  "Latitude":lati,
                                });
                                controller.postData(psotData);
                              }))
                    ])))));
  }
}
