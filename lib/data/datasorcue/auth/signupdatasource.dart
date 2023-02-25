import 'package:test_app/core/constant/curd.dart';
import 'package:test_app/core/constant/linlapi.dart';

class SignupData{
  Crud curd;
  SignupData(this.curd);

  postData(String name,String email,String password)async{
    var response = await curd.postData(
      linkUrl: AppLink.signUpLink, 
      data: {
       "Name":name,
       "Email":email,
       "Password":password,
    }
      );
    return response.fold((l) => l, (r) => r);
  }
}