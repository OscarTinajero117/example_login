import 'package:flutter/material.dart';

import '../container/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final bool obscureText;
  final VoidCallback onPressedIcon;

  const RoundedPasswordField({
    super.key,
    required this.onChanged,
    required this.onPressedIcon,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Password',
          border: InputBorder.none,
          icon: const Icon(
            Icons.lock,
            color: Colors.blueAccent,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility : Icons.visibility_off,
              color: Colors.blueAccent,
            ),
            onPressed: onPressedIcon,
          ),
        ),
      ),
    );
  }
}
