import 'package:example_login/app/global_widgets/rounded/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/values/strings_values.dart';
import '../../../global_widgets/rounded/rounded_input_field.dart';
import '../../../global_widgets/rounded/rounded_password_field.dart';
import 'background.dart';

class Body extends StatelessWidget {
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
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: Get.height * 0.4,
            ),
            RoundedInputField(
              hintText: 'USUARIO',
              icon: Icons.person,
              onChanged: (String value) {},
            ),
            RoundedPasswordField(
              onChanged: (String value) {},
            ),
            RoundedButton(text: 'LOGIN', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
