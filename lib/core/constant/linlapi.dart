class AppLink{
  // ================================ Server Link ========================= //
  static const String serverLink = "https://r3mrglj9s5.execute-api.eu-north-1.amazonaws.com/api";
 // ================================ Auth ========================= //
  static const String signinLink ="$serverLink/Authentication/EmailAuthenticate";
  static const String signUpLink ="$serverLink/Account/Register";
  // ================================ attach AUTH ========================= //
  static const String checkPasswordForget ="$serverLink/Account/ForgetPassword";
  // ================================ HOME ========================= //
  static const String foqs ="$serverLink/faq/getall";
  static const String getAllParts ="$serverLink/bodypart/getall";
  static const String createCase ="$serverLink/case/createcase";
  static const String getAllCase ="$serverLink/case/getallcases";
    // ============== get User =============//
  static const String getUser = "$serverLink/Account/GetUser";
  static const String updateUser = "$serverLink/Account/UpdateUser";
  static const String getallquestionByID = "$serverLink/bodypartquestion/getquestionsbybodypart";
}