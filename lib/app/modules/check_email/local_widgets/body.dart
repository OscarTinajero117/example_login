import 'package:example_login/app/core/values/strings_values.dart';
import 'package:example_login/app/global_widgets/already_have_an_account_check.dart';
import 'package:example_login/app/global_widgets/rounded/rounded_button.dart';
import 'package:example_login/app/modules/sign_up/local_widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../check_email_controller.dart';
import 'otp_group.dart';

class Body extends GetView<CheckEmailController> {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "VERIFICAR EMAIL",
              style: StringsValues().title(),
            ),
            SizedBox(height: Get.height * 0.03),
            Obx(
              () => Text(
                "Revisa tu correo ${controller.email}\n(aveces puede llegar a la bandeja SPAM)",
                textAlign: TextAlign.center,
                style: StringsValues().normalText(),
              ),
            ),
            SizedBox(height: Get.height * 0.04),
            const OtpGroup(),
            // SizedBox(height: Get.height * 0.04),
            RoundedButton(
              text: "VERIFICAR",
              onPressed: controller.verifyEmail,
            ),
            SizedBox(height: Get.height * 0.04),
            AlreadyHaveAnAccountCheck(
              onTap: () {},
              alternativeQuestion: "¿No llego el código? ",
              alternativeOption: "¡Recibe uno nuevo!",
            ),
          ],
        ),
      ),
    );
  }
}
