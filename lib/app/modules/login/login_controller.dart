// ignore_for_file: prefer_final_fields

import 'package:example_login/app/routers/app_routes.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool _obscureText = true.obs;
  bool get obscureText => _obscureText.value;

  RxString _user = "".obs;
  String get user => _user.value;
  set user(String value) {
    _user.value = value;
  }

  RxString _password = "".obs;
  String get password => _password.value;
  set password(String value) {
    _password.value = value;
  }

  void login() {
    print("Usuario: $_user  --  Password: $_password");
  }

  void onTapIcon() {
    _obscureText.value = !_obscureText.value;
  }

  void goToSignUp() {
    Get.offNamed(AppRoutes.SIGN_UP);
  }
}
