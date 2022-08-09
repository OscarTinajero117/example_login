import 'package:example_login/app/global_widgets/snackbar_elements.dart';
import 'package:example_login/app/routers/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void _init() async {
    try {
      Future.delayed(const Duration(seconds: 12), () {
        // Here you can write your code

        Get.offAllNamed(AppRoutes.WELCOME);
      });
    } catch (e) {
      SnackBarElements().snackBarError(error: e.toString());
    }
  }

  Image img() => Image.asset(
        "assets/arquos.png",
        width: Get.width / 1.5,
      );

  @override
  void onReady() {
    _init();
    super.onReady();
  }
}
