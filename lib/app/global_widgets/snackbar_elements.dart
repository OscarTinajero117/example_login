import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarElements {
  SnackbarController snackBarError(
      {required String error, String? titleComplement}) {
    return Get.snackbar(
      "Error. $titleComplement",
      error.toString(),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      icon: const Icon(Icons.error),
      onTap: (snack) => snack.isDismissible,
    );
  }
}
