import 'package:example_login/app/global_widgets/already_have_an_account_check.dart';
import 'package:example_login/app/global_widgets/rounded/rounded_button.dart';
import 'package:example_login/app/global_widgets/rounded/rounded_input_field.dart';
import 'package:example_login/app/global_widgets/rounded/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/values/strings_values.dart';
import '../sign_up_contoller.dart';
import 'background.dart';
// import 'or_divider.dart';
// import 'social_icon.dart';

class Body extends GetView<SignUpController> {
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
              "REGISTRO",
              style: StringsValues().title(),
            ),
            SizedBox(height: Get.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: Get.height * 0.35,
            ),
            SizedBox(height: Get.height * 0.03),
            RoundedInputField(
              hintText: "NOMBRE DE USUARIO",
              icon: Icons.person,
              onChanged: (value) {
                controller.userName = value;
              },
            ),
            RoundedInputField(
              hintText: "CORREO",
              keyboardType: TextInputType.emailAddress,
              icon: Icons.alternate_email,
              onChanged: (value) {
                controller.email = value;
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
              text: "REGISTRARSE",
              onPressed: controller.signUp,
            ),
            SizedBox(height: Get.height * 0.03),
            AlreadyHaveAnAccountCheck(
              onTap: controller.toLogin,
              login: false,
            ),
            // const OrDivider(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     SocialIcon(
            //       rootAsset: "assets/icons/google.svg",
            //       onTap: () {},
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
