import 'package:example_login/app/routers/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  Image img() => Image.asset(
        "assets/logo_empresa.png",
        height: Get.height * 0.5,
      );

  ///Ir al login
  ///
  ///Nota:  *cuando se integre el registro, deberá cambiarse el offNamed por un toNamed*
  void toLogin() {
    Get.offNamed(AppRoutes.LOGIN);
  }
}
