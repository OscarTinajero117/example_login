import 'package:flutter/material.dart';

import '../container/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: 'Password',
          border: InputBorder.none,
          icon: Icon(
            Icons.lock,
            color: Colors.blueAccent,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
