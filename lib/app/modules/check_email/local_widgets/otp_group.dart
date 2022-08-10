import 'package:flutter/material.dart';
import 'otp.dart';

class OtpGroup extends StatelessWidget {
  const OtpGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Otp(position: 1, first: true),
        Otp(position: 2),
        Otp(position: 3),
        Otp(position: 4),
        Otp(position: 5),
        Otp(position: 6, last: true),
      ],
    );
  }
}
