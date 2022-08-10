import 'package:flutter/material.dart';

import '../core/values/strings_values.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback onTap;
  final String? alternativeQuestion;
  final String? alternativeOption;
  const AlreadyHaveAnAccountCheck({
    super.key,
    this.login = true,
    required this.onTap,
    this.alternativeQuestion,
    this.alternativeOption,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          alternativeQuestion ??
              (login ? "¿No tienes cuenta? " : "¿Ya tienes una cuenta? "),
          style: StringsValues().normalText(),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            alternativeOption ?? (login ? "¡Registrate!" : "¡Inicia Sesión!"),
            style: StringsValues().normalText(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
