import 'package:example_login/app/core/values/strings_values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../global_widgets/rounded/rounded_button.dart';
import '../welcome_controller.dart';
import 'background.dart';

class Body extends GetView<WelcomeController> {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "¡Bienvenido a Arquos Móvil!",
              style: StringsValues().title(),
            ),
            SizedBox(height: Get.height * 0.05),
            Image.asset(
              "assets/logo_empresa.png",
              height: Get.height * 0.5,
            ),
            SizedBox(height: Get.height * 0.05),
            RoundedButton(
              onPressed: controller.toLogin,
              text: 'INICIAR SESIÓN',
            ),
            RoundedButton(
              onPressed: controller.toSignUp,
              text: '¡REGISTRATE!',
              color: Colors.grey.shade400,
            ),
          ],
        ),
      ),
    );
  }
}
