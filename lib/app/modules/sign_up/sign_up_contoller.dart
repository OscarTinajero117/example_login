// ignore_for_file: prefer_final_fields

import 'package:example_login/app/global_widgets/snackbar_elements.dart';
import 'package:get/get.dart';

import '../../routers/app_routes.dart';

class SignUpController extends GetxController {
  RxBool _obscureText = true.obs;
  bool get obscureText => _obscureText.value;

  RxString _email = "".obs;
  String get email => _email.value;
  set email(String value) {
    _email.value = value;
  }

  RxString _password = "".obs;
  String get password => _password.value;
  set password(String value) {
    _password.value = value;
  }

  RxString _userName = "".obs;
  String get userName => _userName.value;
  set userName(String value) {
    _userName.value = value;
  }

  ///Cambia el estado del texto
  void onTapIcon() {
    _obscureText.value = !_obscureText.value;
  }

  ///Ir al login
  void toLogin() {
    Get.offNamed(AppRoutes.LOGIN);
  }

  ///Registrarse
  void signUp() {
    if (_email.value.isEmpty ||
        _password.value.isEmpty ||
        _userName.value.isEmpty) {
      SnackBarElements().snackBarError(error: "Ningún campo puede ir vacío");
    } else {
      if (_email.value.isEmail) {
        Get.offNamed(
          AppRoutes.CHECK_EMAIL,
          arguments: [
            _email.value,
          ],
        );
      } else {
        SnackBarElements().snackBarError(error: "Correo no permitido");
      }
    }
  }
}
