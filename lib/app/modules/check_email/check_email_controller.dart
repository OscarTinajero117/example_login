// ignore_for_file: prefer_final_fields

import 'package:example_login/app/global_widgets/snackbar_elements.dart';
import 'package:get/get.dart';

class CheckEmailController extends GetxController {
  RxString _email = "".obs;
  String get email => _email.value;

  Map<int, String> _checkOtpCode = {};
  void checkOtpCode(String value, int position) {
    if (value.isNotEmpty) {
      _checkOtpCode[position] = value;
    } else {
      _checkOtpCode.remove(position);
    }
  }

  void verifyEmail() {
    if (_checkOtpCode.length == 6) {
      String code = "";
      _checkOtpCode.forEach((key, value) {
        code += value;
      });
      print(code);
    } else {
      SnackBarElements().snackBarError(error: "Código incompleto");
    }
  }

  @override
  void onInit() {
    _email.value = Get.arguments[0];
    super.onInit();
  }
}
