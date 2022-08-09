import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/values/strings_values.dart';
import 'splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue.shade100,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: controller.img(),
              ),
              Padding(padding: EdgeInsets.only(top: Get.height / 15)),
              TextLiquidFill(
                text: "Bienvenido".toUpperCase(),
                waveColor: Colors.blue,
                boxBackgroundColor: Colors.white,
                textStyle: StringsValues().liquidTextStyle(),
                loadDuration: const Duration(seconds: 10),
                waveDuration: const Duration(seconds: 2),
                boxHeight: Get.height / 6,
                boxWidth: Get.width - Get.width / 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
