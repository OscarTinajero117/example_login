import 'package:example_login/app/global_widgets/rounded/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/values/strings_values.dart';
import '../../../global_widgets/already_have_an_account_check.dart';
import '../../../global_widgets/rounded/rounded_input_field.dart';
import '../../../global_widgets/rounded/rounded_password_field.dart';
import '../login_controller.dart';
import 'background.dart';

class Body extends GetView<LoginController> {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOGIN",
              style: StringsValues().title(),
            ),
            SizedBox(height: Get.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: Get.height * 0.4,
            ),
            SizedBox(height: Get.height * 0.03),
            RoundedInputField(
              hintText: 'USUARIO',
              icon: Icons.alternate_email,
              keyboardType: TextInputType.emailAddress,
              onChanged: (String value) {
                controller.user = value;
              },
            ),
            Obx(
              () => RoundedPasswordField(
                onChanged: (String value) {
                  controller.password = value;
                },
                onPressedIcon: controller.onTapIcon,
                obscureText: controller.obscureText,
              ),
            ),
            RoundedButton(
              text: 'INICIAR SESIÓN',
              onPressed: controller.login,
            ),
            SizedBox(height: Get.height * 0.03),
            AlreadyHaveAnAccountCheck(
              onTap: controller.goToSignUp,
            ),
          ],
        ),
      ),
    );
  }
}
